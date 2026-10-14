package com.cndatacom.topology;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class TeamWorkDiscover {
    private java.net.InetAddress mAddress;
    private android.os.HandlerThread mHandlerThread;
    private java.net.MulticastSocket mMulticastSocket;
    private com.cndatacom.sdk.portal.entity.NetInfo mNetInfo;
    private com.cndatacom.topology.entity.TeamWorkConInfo mTeamWorkConInfo;
    private com.cndatacom.topology.TeamWorkDiscover.TeamWorkDiscoverEvent mTeamWorkDiscoverEvent;
    public android.os.Handler mWorkerHandler;
    private java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Integer> mMessageWhatMap = new java.util.concurrent.ConcurrentHashMap<>();
    private volatile boolean mIsStop = false;
    private int mPort = -1;
    private final java.lang.String MSG_TAG = "CNS";

    public interface TeamWorkDiscoverEvent {
        void doNeighbourTask(int i5, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4);

        void doRouterTask(byte b5, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4);

        void giveup(int i5);

        boolean isDiscovered(int i5, java.lang.String str);

        void sendTeamWorkMsgFinished(int i5, java.lang.String str);
    }

    public TeamWorkDiscover(com.cndatacom.sdk.portal.entity.NetInfo netInfo, com.cndatacom.topology.entity.TeamWorkConInfo teamWorkConInfo) {
        this.mNetInfo = netInfo;
        this.mTeamWorkConInfo = teamWorkConInfo;
        android.os.HandlerThread handlerThread = new android.os.HandlerThread("handleTeamWorkData", 0);
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mWorkerHandler = new android.os.Handler(this.mHandlerThread.getLooper(), new android.os.Handler.Callback() { // from class: com.cndatacom.topology.TeamWorkDiscover.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(android.os.Message message) {
                com.cndatacom.topology.TeamWorkDiscover.this.handleWorkerMessage(message);
                return true;
            }
        });
    }

    private void createChannel() {
        try {
            java.lang.String castads = this.mTeamWorkConInfo.getCastads();
            if (!android.text.TextUtils.isEmpty(castads) && castads.contains(":")) {
                java.lang.String[] strArrSplit = castads.split(":");
                if (strArrSplit.length == 2) {
                    java.net.InetAddress byName = java.net.InetAddress.getByName(strArrSplit[0]);
                    this.mAddress = byName;
                    if (byName.isMulticastAddress()) {
                        java.lang.String str = strArrSplit[1];
                        if (android.text.TextUtils.isDigitsOnly(str)) {
                            int i5 = com.cndatacom.topology.util.IpUtil.toInt(str, -1);
                            this.mPort = i5;
                            if (i5 > 0) {
                                java.net.MulticastSocket multicastSocket = new java.net.MulticastSocket(this.mPort);
                                this.mMulticastSocket = multicastSocket;
                                multicastSocket.joinGroup(this.mAddress);
                                startReceiveTask();
                            }
                        }
                    } else {
                        com.cndatacom.sdk.portal.util.ExLogUtil.e("Discover TeamWorkDiscover createChannel -> is not MulticastAddress");
                    }
                }
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            com.cndatacom.sdk.portal.util.ExLogUtil.e("Discover TeamWorkDiscover createChannel Exception->" + e5.getMessage());
        }
    }

    private byte[] createNeighbourMsg(int i5, int i6, java.lang.String str, java.lang.String str2) throws java.lang.Exception {
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        java.io.DataOutputStream dataOutputStream = new java.io.DataOutputStream(byteArrayOutputStream);
        dataOutputStream.writeBytes("CNS");
        dataOutputStream.writeByte(1);
        dataOutputStream.writeByte(1);
        dataOutputStream.writeByte(4);
        dataOutputStream.writeByte(i5);
        dataOutputStream.writeByte(i6);
        dataOutputStream.writeInt(com.cndatacom.topology.util.IpUtil.ipToInt(str));
        dataOutputStream.writeInt(com.cndatacom.topology.util.IpUtil.ipToInt(str2));
        return byteArrayOutputStream.toByteArray();
    }

    private byte[] createRouterMsg(int i5, byte b5, java.lang.String str, java.lang.String str2) throws java.lang.Exception {
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        java.io.DataOutputStream dataOutputStream = new java.io.DataOutputStream(byteArrayOutputStream);
        dataOutputStream.writeBytes("CNS");
        dataOutputStream.writeByte(1);
        dataOutputStream.writeByte(2);
        dataOutputStream.writeByte(4);
        dataOutputStream.writeByte(i5);
        dataOutputStream.writeByte(b5);
        dataOutputStream.writeInt(com.cndatacom.topology.util.IpUtil.ipToInt(str));
        dataOutputStream.writeInt(com.cndatacom.topology.util.IpUtil.ipToInt(str2));
        return byteArrayOutputStream.toByteArray();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleTeamWorkTask(com.cndatacom.topology.entity.TeamWorkTaskInfo teamWorkTaskInfo) {
        java.lang.String key = teamWorkTaskInfo.getKey();
        if (this.mMessageWhatMap.containsKey(key)) {
            this.mMessageWhatMap.remove(key);
        }
        int taskType = teamWorkTaskInfo.getTaskType();
        if (taskType == 1) {
            if (this.mTeamWorkDiscoverEvent != null) {
                this.mTeamWorkDiscoverEvent.doNeighbourTask(((java.lang.Integer) teamWorkTaskInfo.getExtra()).intValue(), teamWorkTaskInfo.getMask(), teamWorkTaskInfo.getGateway(), teamWorkTaskInfo.getIp(), teamWorkTaskInfo.getKey());
                return;
            }
            return;
        }
        if (taskType == 2 && this.mTeamWorkDiscoverEvent != null) {
            this.mTeamWorkDiscoverEvent.doRouterTask(((java.lang.Byte) teamWorkTaskInfo.getExtra()).byteValue(), teamWorkTaskInfo.getMask(), teamWorkTaskInfo.getGateway(), teamWorkTaskInfo.getIp(), teamWorkTaskInfo.getKey());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleWorkerMessage(android.os.Message message) {
        if (this.mIsStop) {
            return;
        }
        java.lang.Object obj = message.obj;
        if (obj instanceof com.cndatacom.topology.entity.TeamWorkTaskInfo) {
            final com.cndatacom.topology.entity.TeamWorkTaskInfo teamWorkTaskInfo = (com.cndatacom.topology.entity.TeamWorkTaskInfo) obj;
            new android.os.AsyncTask<java.lang.String, java.lang.Integer, java.lang.String>() { // from class: com.cndatacom.topology.TeamWorkDiscover.2
                @Override // android.os.AsyncTask
                public java.lang.String doInBackground(java.lang.String... strArr) {
                    com.cndatacom.topology.TeamWorkDiscover.this.handleTeamWorkTask(teamWorkTaskInfo);
                    return null;
                }
            }.executeOnExecutor(com.cndatacom.sdk.portal.manager.ThreadPoolManager.getInstance(), new java.lang.String[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parsePacket(byte[] bArr, java.lang.String str) throws java.lang.Exception {
        com.cndatacom.topology.TeamWorkDiscover.TeamWorkDiscoverEvent teamWorkDiscoverEvent;
        java.io.DataInputStream dataInputStream = new java.io.DataInputStream(new java.io.ByteArrayInputStream(bArr));
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        for (int i5 = 0; i5 < 3; i5++) {
            sb.append((char) dataInputStream.readByte());
        }
        java.lang.String string = sb.toString();
        if ("CNS".equals(string)) {
            byte b5 = dataInputStream.readByte();
            byte b6 = dataInputStream.readByte();
            byte b7 = dataInputStream.readByte();
            byte b8 = dataInputStream.readByte();
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
            sb2.append((int) b8);
            java.lang.String strCreateRouterDiscoverKey = "";
            sb2.append("");
            java.lang.String maskMap = com.cndatacom.topology.util.IpUtil.getMaskMap(sb2.toString());
            byte b9 = dataInputStream.readByte();
            int i6 = dataInputStream.readInt();
            java.lang.String strIntToIP = com.cndatacom.topology.util.IpUtil.intToIP(i6);
            int i7 = dataInputStream.readInt();
            java.lang.String strIntToIP2 = com.cndatacom.topology.util.IpUtil.intToIP(i7);
            int i8 = 2;
            if (java.lang.Math.abs((int) b6) == 1) {
                strCreateRouterDiscoverKey = com.cndatacom.topology.util.TopologyKeyUtil.createNeighbourDiscoverKey(b9, strIntToIP, maskMap, strIntToIP2);
                i8 = 1;
            } else if (java.lang.Math.abs((int) b6) == 2) {
                strCreateRouterDiscoverKey = com.cndatacom.topology.util.TopologyKeyUtil.createRouterDiscoverKey(strIntToIP, maskMap, strIntToIP2);
            } else {
                i8 = -1;
            }
            com.cndatacom.sdk.portal.util.ExLogUtil.d("Discover TeamWorkDiscover parsePacket taskType:" + i8 + " groupOrMethod:" + ((int) b9) + " gateway:" + strIntToIP + " mask:" + maskMap + " targetIp:" + strIntToIP2 + " key:" + strCreateRouterDiscoverKey);
            if (android.text.TextUtils.isEmpty(strCreateRouterDiscoverKey)) {
                return;
            }
            if (b6 <= 0) {
                if (this.mMessageWhatMap.containsKey(strCreateRouterDiscoverKey)) {
                    this.mWorkerHandler.removeMessages(this.mMessageWhatMap.get(strCreateRouterDiscoverKey).intValue());
                    this.mMessageWhatMap.remove(strCreateRouterDiscoverKey);
                    com.cndatacom.sdk.portal.util.ExLogUtil.d("Discover TeamWorkDiscover parsePacket nothing to do and do next task");
                    com.cndatacom.topology.TeamWorkDiscover.TeamWorkDiscoverEvent teamWorkDiscoverEvent2 = this.mTeamWorkDiscoverEvent;
                    if (teamWorkDiscoverEvent2 != null) {
                        teamWorkDiscoverEvent2.giveup(i8);
                        return;
                    }
                    return;
                }
                return;
            }
            if (i8 == -1 || (teamWorkDiscoverEvent = this.mTeamWorkDiscoverEvent) == null) {
                return;
            }
            boolean zIsDiscovered = teamWorkDiscoverEvent.isDiscovered(i8, strCreateRouterDiscoverKey);
            com.cndatacom.sdk.portal.util.ExLogUtil.d("Discover TeamWorkDiscover parsePacket isDiscovered :" + zIsDiscovered);
            if (zIsDiscovered) {
                returnDiscoveredMsg(string, b5, b6, b7, b8, b9, i6, i7, str);
            }
        }
    }

    private void returnDiscoveredMsg(java.lang.String str, int i5, int i6, int i7, int i8, int i9, int i10, int i11, java.lang.String str2) {
        try {
            java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
            java.io.DataOutputStream dataOutputStream = new java.io.DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeBytes(str);
            dataOutputStream.writeByte(i5);
            dataOutputStream.writeByte(-i6);
            dataOutputStream.writeByte(i7);
            dataOutputStream.writeByte(i8);
            dataOutputStream.writeByte(i9);
            dataOutputStream.writeInt(i10);
            dataOutputStream.writeInt(i11);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            this.mMulticastSocket.send(new java.net.DatagramPacket(byteArray, byteArray.length, java.net.InetAddress.getByName(str2), this.mPort));
            com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover TeamWorkDiscover returnDiscoveredMsg->");
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            com.cndatacom.sdk.portal.util.ExLogUtil.d("Discover TeamWorkDiscover returnDiscoveredMsg Exception->" + e5.getMessage());
        }
    }

    private void startReceiveTask() {
        com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover TeamWorkDiscover startReceiveTask start ->");
        new java.lang.Thread() { // from class: com.cndatacom.topology.TeamWorkDiscover.3
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                while (!com.cndatacom.topology.TeamWorkDiscover.this.mIsStop && com.cndatacom.topology.TeamWorkDiscover.this.mMulticastSocket != null && !com.cndatacom.topology.TeamWorkDiscover.this.mMulticastSocket.isClosed()) {
                    try {
                        byte[] bArr = new byte[100];
                        java.net.DatagramPacket datagramPacket = new java.net.DatagramPacket(bArr, 100);
                        com.cndatacom.topology.TeamWorkDiscover.this.mMulticastSocket.receive(datagramPacket);
                        if (datagramPacket.getLength() > 0) {
                            java.lang.String strReplaceAll = datagramPacket.getAddress().toString().replaceAll("/", "");
                            com.cndatacom.sdk.portal.util.ExLogUtil.d("Discover TeamWorkDiscover startReceiveTask socketIpAddress ->" + strReplaceAll);
                            if (strReplaceAll.equals(com.cndatacom.topology.TeamWorkDiscover.this.mNetInfo.getIpv4())) {
                                com.cndatacom.sdk.portal.util.ExLogUtil.d("Discover TeamWorkDiscover startReceiveTask selfIpAddress ->");
                            } else {
                                com.cndatacom.topology.TeamWorkDiscover.this.parsePacket(bArr, strReplaceAll);
                            }
                        }
                    } catch (java.lang.Exception e5) {
                        e5.printStackTrace();
                        com.cndatacom.sdk.portal.util.ExLogUtil.e("Discover TeamWorkDiscover startReceiveTask Exception ->" + e5.getMessage());
                    }
                }
                com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover TeamWorkDiscover startReceiveTask finish ->");
            }
        }.start();
    }

    public void release() {
        this.mIsStop = true;
        java.net.MulticastSocket multicastSocket = this.mMulticastSocket;
        if (multicastSocket != null) {
            try {
                java.net.InetAddress inetAddress = this.mAddress;
                if (inetAddress != null) {
                    multicastSocket.leaveGroup(inetAddress);
                }
                this.mMulticastSocket.close();
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
            }
        }
        android.os.Handler handler = this.mWorkerHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        android.os.HandlerThread handlerThread = this.mHandlerThread;
        if (handlerThread != null) {
            handlerThread.quit();
        }
    }

    public void sendNeighbourTeamWorkMsg(int i5, java.lang.String str) {
        if (this.mMulticastSocket != null) {
            try {
                byte[] bArrCreateNeighbourMsg = createNeighbourMsg(this.mNetInfo.getMaskPrefixLength(), i5, this.mNetInfo.getGateway(), str);
                this.mMulticastSocket.send(new java.net.DatagramPacket(bArrCreateNeighbourMsg, bArrCreateNeighbourMsg.length, this.mAddress, this.mPort));
                java.lang.String strCreateNeighbourDiscoverKey = com.cndatacom.topology.util.TopologyKeyUtil.createNeighbourDiscoverKey(i5, this.mNetInfo.getGateway(), this.mNetInfo.getMask(), str);
                com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover TeamWorkDiscover sendNeighbourTeamWorkMsg-> groupIndex:" + i5 + " key:" + strCreateNeighbourDiscoverKey);
                com.cndatacom.topology.entity.TeamWorkTaskInfo teamWorkTaskInfo = new com.cndatacom.topology.entity.TeamWorkTaskInfo();
                teamWorkTaskInfo.setKey(strCreateNeighbourDiscoverKey);
                teamWorkTaskInfo.setTaskType(1);
                teamWorkTaskInfo.setExtra(java.lang.Integer.valueOf(i5));
                teamWorkTaskInfo.setGateway(this.mNetInfo.getGateway());
                teamWorkTaskInfo.setMask(this.mNetInfo.getMask());
                teamWorkTaskInfo.setIp(this.mNetInfo.getIpv4());
                int iHashCode = java.util.UUID.randomUUID().hashCode();
                android.os.Message messageObtain = android.os.Message.obtain();
                messageObtain.what = iHashCode;
                messageObtain.obj = teamWorkTaskInfo;
                this.mWorkerHandler.sendMessageDelayed(messageObtain, this.mTeamWorkConInfo.getTimeout());
                this.mMessageWhatMap.put(strCreateNeighbourDiscoverKey, java.lang.Integer.valueOf(iHashCode));
                com.cndatacom.topology.TeamWorkDiscover.TeamWorkDiscoverEvent teamWorkDiscoverEvent = this.mTeamWorkDiscoverEvent;
                if (teamWorkDiscoverEvent != null) {
                    teamWorkDiscoverEvent.sendTeamWorkMsgFinished(1, strCreateNeighbourDiscoverKey);
                }
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
                com.cndatacom.sdk.portal.util.ExLogUtil.e("Discover TeamWorkDiscover sendNeighbourTeamWorkMsg Exception->" + e5.getMessage());
            }
        }
    }

    public void sendRouterTeamWorkMsg(byte b5, java.lang.String str) {
        if (this.mMulticastSocket != null) {
            try {
                byte[] bArrCreateRouterMsg = createRouterMsg(this.mNetInfo.getMaskPrefixLength(), b5, this.mNetInfo.getGateway(), str);
                this.mMulticastSocket.send(new java.net.DatagramPacket(bArrCreateRouterMsg, bArrCreateRouterMsg.length, this.mAddress, this.mPort));
                com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover TeamWorkDiscover sendRouterTeamWorkMsg->" + this.mAddress);
                java.lang.String strCreateRouterDiscoverKey = com.cndatacom.topology.util.TopologyKeyUtil.createRouterDiscoverKey(this.mNetInfo.getGateway(), this.mNetInfo.getMask(), str);
                com.cndatacom.sdk.portal.util.ExLogUtil.i("Discover TeamWorkDiscover sendRouterTeamWorkMsg-> method:" + ((int) b5) + " key:" + strCreateRouterDiscoverKey);
                com.cndatacom.topology.entity.TeamWorkTaskInfo teamWorkTaskInfo = new com.cndatacom.topology.entity.TeamWorkTaskInfo();
                teamWorkTaskInfo.setKey(strCreateRouterDiscoverKey);
                teamWorkTaskInfo.setTaskType(2);
                teamWorkTaskInfo.setExtra(java.lang.Byte.valueOf(b5));
                teamWorkTaskInfo.setGateway(this.mNetInfo.getGateway());
                teamWorkTaskInfo.setMask(this.mNetInfo.getMask());
                teamWorkTaskInfo.setIp(this.mNetInfo.getIpv4());
                int iHashCode = java.util.UUID.randomUUID().hashCode();
                android.os.Message messageObtain = android.os.Message.obtain();
                messageObtain.what = iHashCode;
                messageObtain.obj = teamWorkTaskInfo;
                this.mWorkerHandler.sendMessageDelayed(messageObtain, this.mTeamWorkConInfo.getTimeout());
                this.mMessageWhatMap.put(strCreateRouterDiscoverKey, java.lang.Integer.valueOf(iHashCode));
                com.cndatacom.topology.TeamWorkDiscover.TeamWorkDiscoverEvent teamWorkDiscoverEvent = this.mTeamWorkDiscoverEvent;
                if (teamWorkDiscoverEvent != null) {
                    teamWorkDiscoverEvent.sendTeamWorkMsgFinished(2, strCreateRouterDiscoverKey);
                }
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
                com.cndatacom.sdk.portal.util.ExLogUtil.e("Discover TeamWorkDiscover sendRouterTeamWorkMsg Exception->" + e5.getMessage());
            }
        }
    }

    public void setTeamWorkDiscoverEvent(com.cndatacom.topology.TeamWorkDiscover.TeamWorkDiscoverEvent teamWorkDiscoverEvent) {
        this.mTeamWorkDiscoverEvent = teamWorkDiscoverEvent;
    }

    public void start() {
        createChannel();
    }
}
