package com.cndatacom.zexcheck.v3.manager;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ExCheckManager {
    private static com.cndatacom.zexcheck.v3.manager.ExCheckManager instance;
    private com.cndatacom.zexcheck.v3.entity.ExCheckInfo mExCheckInfo;
    private java.util.concurrent.ExecutorService mTcpExecutorService;
    private java.nio.channels.ServerSocketChannel mTcpServerChannel;
    private java.nio.channels.DatagramChannel mUdpChannel;
    private java.util.concurrent.ExecutorService mUdpExecutorService;
    public java.util.ArrayList<java.lang.String> udpPortArray;
    private java.util.Timer mTimer = new java.util.Timer();
    private int mCurTaskCount = 0;
    private java.util.concurrent.ConcurrentHashMap<java.lang.String, com.cndatacom.zexcheck.v3.entity.ExCheckResult> mResultList = new java.util.concurrent.ConcurrentHashMap<>();
    public java.util.concurrent.ConcurrentHashMap<java.lang.String, com.cndatacom.zexcheck.v3.entity.OnlineClientInfo> mOnlineClientInfos = new java.util.concurrent.ConcurrentHashMap<>();
    public com.cndatacom.zexcheck.v3.manager.ExCheckManager.TaskEvent mTaskEvent = new com.cndatacom.zexcheck.v3.manager.ExCheckManager.TaskEvent() { // from class: com.cndatacom.zexcheck.v3.manager.ExCheckManager.1
        private int mTaskCount = 0;

        @Override // com.cndatacom.zexcheck.v3.manager.ExCheckManager.TaskEvent
        public void doFinish(com.cndatacom.zexcheck.v3.entity.ExCheckResult exCheckResult) {
            if (exCheckResult != null) {
                java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
                stringBuffer.append("指令执行结果:");
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append(exCheckResult.isUdp() ? "udp" : "tcp");
                sb.append(" ");
                sb.append(exCheckResult.getIp());
                sb.append(":");
                sb.append(exCheckResult.getPort());
                sb.append(" ");
                sb.append(exCheckResult.getErrorText());
                stringBuffer.append(sb.toString());
                if (exCheckResult.isUdp() && exCheckResult.getErrType() != 1) {
                    com.cndatacom.zexcheck.v3.entity.ExCheckResult exCheckResult2 = new com.cndatacom.zexcheck.v3.entity.ExCheckResult();
                    exCheckResult2.setIp(exCheckResult.getIp());
                    exCheckResult2.setTicket(exCheckResult.getTicket());
                    exCheckResult2.setErrType(0);
                    exCheckResult2.setUdp(false);
                    com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.mResultList.put("false" + exCheckResult2.getIp(), exCheckResult2);
                    com.cndatacom.zexcheck.v3.manager.ExCheckManager.access$108(com.cndatacom.zexcheck.v3.manager.ExCheckManager.this);
                }
                com.cndatacom.sdk.portal.util.ExLogUtil.i("ExCheckManager code do finish->" + stringBuffer.toString());
            }
            com.cndatacom.zexcheck.v3.manager.ExCheckManager.access$108(com.cndatacom.zexcheck.v3.manager.ExCheckManager.this);
            if (this.mTaskCount == com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.mCurTaskCount) {
                com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.handleUploadData(true);
            }
        }

        @Override // com.cndatacom.zexcheck.v3.manager.ExCheckManager.TaskEvent
        public void setTaskCount(int i5) {
            this.mTaskCount = i5;
        }
    };
    private java.lang.Runnable mTask = new java.lang.Runnable() { // from class: com.cndatacom.zexcheck.v3.manager.ExCheckManager.3
        @Override // java.lang.Runnable
        public void run() {
            com.cndatacom.zexcheck.v3.util.ExecutorUtil.getFastExecutorService().execute(new java.lang.Runnable() { // from class: com.cndatacom.zexcheck.v3.manager.ExCheckManager.3.1
                @Override // java.lang.Runnable
                public void run() {
                    com.cndatacom.zexcheck.v3.manager.ExCheckManager exCheckManager = com.cndatacom.zexcheck.v3.manager.ExCheckManager.this;
                    exCheckManager.mOnlineClientInfos = com.cndatacom.zexcheck.v3.task.GetOnlineTask.getOnlineClientInfo(exCheckManager.mExCheckInfo);
                    if (com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.mUdpChannel == null) {
                        com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.initUdpChannel();
                    }
                    if (com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.mTcpServerChannel == null) {
                        com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.initTcpServerChannel();
                    }
                    java.util.concurrent.ConcurrentHashMap<java.lang.String, com.cndatacom.zexcheck.v3.entity.OnlineClientInfo> concurrentHashMap = com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.mOnlineClientInfos;
                    if (concurrentHashMap == null || concurrentHashMap.size() == 0) {
                        com.cndatacom.sdk.portal.util.ExLogUtil.i("ExCheckManager 获取在线终端个数->0\n任务结束。");
                        return;
                    }
                    com.cndatacom.sdk.portal.util.ExLogUtil.i("ExCheckManager 获取在线终端个数（除自身）->" + com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.mOnlineClientInfos.size());
                    com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.mCurTaskCount = 0;
                    if (com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.mUdpExecutorService != null) {
                        com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.mUdpExecutorService.shutdown();
                    }
                    com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.mUdpExecutorService = com.cndatacom.zexcheck.v3.util.ExecutorUtil.getExecutorService();
                    if (com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.mTcpExecutorService != null) {
                        com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.mTcpExecutorService.shutdown();
                    }
                    com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.mTcpExecutorService = com.cndatacom.zexcheck.v3.util.ExecutorUtil.getExecutorService();
                    com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.mTaskEvent.setTaskCount(com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.mOnlineClientInfos.size() * 2);
                    java.util.Iterator<java.lang.String> it = com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.mOnlineClientInfos.keySet().iterator();
                    while (it.hasNext()) {
                        try {
                            com.cndatacom.zexcheck.v3.entity.OnlineClientInfo onlineClientInfo = com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.mOnlineClientInfos.get(it.next());
                            com.cndatacom.zexcheck.v3.entity.PacketInfo packetInfo = new com.cndatacom.zexcheck.v3.entity.PacketInfo();
                            packetInfo.setUdpPort(onlineClientInfo.getUdpPort());
                            packetInfo.setIp(onlineClientInfo.getIp());
                            packetInfo.setTicket(onlineClientInfo.getTicket());
                            java.util.concurrent.ExecutorService executorService = com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.mUdpExecutorService;
                            java.nio.channels.DatagramChannel datagramChannel = com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.mUdpChannel;
                            java.util.concurrent.ConcurrentHashMap concurrentHashMap2 = com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.mResultList;
                            com.cndatacom.zexcheck.v3.manager.ExCheckManager exCheckManager2 = com.cndatacom.zexcheck.v3.manager.ExCheckManager.this;
                            com.cndatacom.zexcheck.v3.task.UDPTask uDPTask = new com.cndatacom.zexcheck.v3.task.UDPTask(executorService, datagramChannel, packetInfo, concurrentHashMap2, exCheckManager2.mOnlineClientInfos, exCheckManager2.udpPortArray);
                            uDPTask.setTaskEvent(com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.mTaskEvent);
                            uDPTask.start();
                        } catch (java.lang.Exception e5) {
                            e5.printStackTrace();
                        }
                    }
                }
            });
        }
    };

    public class ExCheckTask extends java.util.TimerTask {
        private ExCheckTask() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.mTask.run();
        }
    }

    public interface TaskEvent {
        void doFinish(com.cndatacom.zexcheck.v3.entity.ExCheckResult exCheckResult);

        void setTaskCount(int i5);
    }

    public static /* synthetic */ int access$108(com.cndatacom.zexcheck.v3.manager.ExCheckManager exCheckManager) {
        int i5 = exCheckManager.mCurTaskCount;
        exCheckManager.mCurTaskCount = i5 + 1;
        return i5;
    }

    private byte[] createReturnTcpMsg(java.lang.String str, int i5) {
        try {
            java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
            java.io.DataOutputStream dataOutputStream = new java.io.DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeByte(0);
            dataOutputStream.writeByte(8);
            dataOutputStream.writeLong(java.lang.System.currentTimeMillis());
            dataOutputStream.writeByte(3);
            dataOutputStream.writeByte(4);
            dataOutputStream.writeInt(com.cndatacom.zexcheck.v3.util.IpUtil.ipToInt(this.mExCheckInfo.getNetInfo().getIpv4()));
            dataOutputStream.writeByte(9);
            dataOutputStream.writeByte(2);
            dataOutputStream.writeShort(i5);
            dataOutputStream.writeByte(11);
            dataOutputStream.writeByte(4);
            dataOutputStream.writeInt(com.cndatacom.sdk.portal.util.ApkUtil.getVersionCode(com.cndatacom.sdk.portal.util.ContextUtil.getContext()));
            dataOutputStream.writeByte(255);
            dataOutputStream.writeByte(0);
            dataOutputStream.writeByte(0);
            return byteArrayOutputStream.toByteArray();
        } catch (java.io.IOException e5) {
            e5.printStackTrace();
            return new byte[0];
        }
    }

    private byte[] createReturnUdpMsg(java.lang.String str, int i5) {
        try {
            java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
            java.io.DataOutputStream dataOutputStream = new java.io.DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeByte(0);
            dataOutputStream.writeByte(8);
            dataOutputStream.writeLong(java.lang.System.currentTimeMillis());
            dataOutputStream.writeByte(3);
            dataOutputStream.writeByte(4);
            dataOutputStream.writeInt(com.cndatacom.zexcheck.v3.util.IpUtil.ipToInt(this.mExCheckInfo.getNetInfo().getIpv4()));
            dataOutputStream.writeByte(5);
            dataOutputStream.writeByte(16);
            dataOutputStream.write(java.net.InetAddress.getByName(this.mExCheckInfo.getNetInfo().getIpv6()).getAddress());
            java.net.InetAddress byName = java.net.InetAddress.getByName(str);
            byte[] address = byName.getAddress();
            if (byName instanceof java.net.Inet6Address) {
                dataOutputStream.writeByte(6);
                dataOutputStream.writeByte(16);
            } else {
                dataOutputStream.writeByte(4);
                dataOutputStream.writeByte(4);
            }
            dataOutputStream.write(address);
            dataOutputStream.writeByte(7);
            dataOutputStream.writeByte(2);
            dataOutputStream.writeShort(this.mExCheckInfo.getUdpPort());
            dataOutputStream.writeByte(8);
            dataOutputStream.writeByte(2);
            dataOutputStream.writeShort(this.mExCheckInfo.getTcpPort());
            dataOutputStream.writeByte(9);
            dataOutputStream.writeByte(2);
            dataOutputStream.writeShort(i5);
            dataOutputStream.writeByte(11);
            dataOutputStream.writeByte(4);
            dataOutputStream.writeInt(com.cndatacom.sdk.portal.util.ApkUtil.getVersionCode(com.cndatacom.sdk.portal.util.ContextUtil.getContext()));
            dataOutputStream.writeByte(255);
            dataOutputStream.writeByte(0);
            dataOutputStream.writeByte(0);
            return byteArrayOutputStream.toByteArray();
        } catch (java.io.IOException e5) {
            e5.printStackTrace();
            return new byte[0];
        }
    }

    public static com.cndatacom.zexcheck.v3.manager.ExCheckManager getInstance() {
        synchronized (com.cndatacom.zexcheck.v3.manager.ExCheckManager.class) {
            if (instance == null) {
                instance = new com.cndatacom.zexcheck.v3.manager.ExCheckManager();
            }
        }
        return instance;
    }

    private java.lang.String getMacString(byte[] bArr) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        for (byte b5 : bArr) {
            sb.append(':');
            sb.append(java.lang.Integer.toHexString(b5 & 255));
        }
        return sb.substring(1);
    }

    private java.lang.String getResponseTicket(java.util.concurrent.ConcurrentHashMap<java.lang.String, com.cndatacom.zexcheck.v3.entity.OnlineClientInfo> concurrentHashMap, java.lang.String str) {
        return concurrentHashMap.containsKey(str) ? concurrentHashMap.get(str).getTicket() : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUploadData(boolean z4) {
        try {
            android.util.ArrayMap<java.lang.String, java.lang.String> arrayMap = new android.util.ArrayMap<>();
            arrayMap.put("Content-Type", "text/plain;charset=utf-8");
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            jSONObject.put("account", this.mExCheckInfo.getAccount());
            jSONObject.put("clientid", this.mExCheckInfo.getClientId());
            jSONObject.put("cid", this.mExCheckInfo.getSchoolId());
            jSONObject.put("ostype", 4);
            jSONObject.put("version", com.cndatacom.sdk.portal.util.ApkUtil.getVersionCode(com.cndatacom.sdk.portal.util.ContextUtil.getContext()));
            org.json.JSONArray jSONArray = new org.json.JSONArray();
            java.util.ArrayList arrayList = new java.util.ArrayList(this.mResultList.values());
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                com.cndatacom.zexcheck.v3.entity.ExCheckResult exCheckResult = (com.cndatacom.zexcheck.v3.entity.ExCheckResult) arrayList.get(i5);
                org.json.JSONObject jSONObject2 = new org.json.JSONObject();
                jSONObject2.put(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_TICKET, exCheckResult.getTicket());
                jSONObject2.put("cmd", exCheckResult.isUdp() ? "hello" : "conn");
                jSONObject2.put("result", exCheckResult.getErrType());
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("data", jSONArray);
            java.lang.String string = jSONObject.toString();
            com.cndatacom.sdk.portal.util.ExLogUtil.i("ExCheckManager handleUploadData 上报数据->" + string);
            com.cndatacom.sdk.portal.http.HttpClient.Result resultPost = new com.cndatacom.sdk.portal.http.HttpClient().post(this.mExCheckInfo.getUploadUrl(), arrayMap, com.cndatacom.sdk.portal.util.CryptoUtil.byteArrayToHex(com.cndatacom.sdk.portal.util.CryptoUtil.des3EncodeCBC("9vApxLk5G3PAsJrM".getBytes("utf-8"), "FnJL7EDzjqWjcaY9".getBytes("utf-8"), string.getBytes("utf-8"))).getBytes());
            com.cndatacom.sdk.portal.util.ExLogUtil.i("ExCheckManager handleUploadData 上报结果->" + resultPost.getDataString());
            if (resultPost.isSuccessful() || !z4) {
                this.mResultList.clear();
            } else {
                new java.util.Timer().schedule(new java.util.TimerTask() { // from class: com.cndatacom.zexcheck.v3.manager.ExCheckManager.2
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.handleUploadData(false);
                    }
                }, 5000L);
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            com.cndatacom.sdk.portal.util.ExLogUtil.i("ExCheckManager handleUploadData->" + e5.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initTcpServerChannel() {
        try {
            this.mTcpServerChannel = java.nio.channels.ServerSocketChannel.open();
            this.mTcpServerChannel.socket().bind(new java.net.InetSocketAddress(this.mExCheckInfo.isIpv4() ? this.mExCheckInfo.getNetInfo().getIpv4() : this.mExCheckInfo.getNetInfo().getIpv6(), this.mExCheckInfo.getTcpPort()));
            this.mTcpServerChannel.configureBlocking(true);
            startTcpReceiveTask(this.mTcpServerChannel);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initUdpChannel() {
        boolean z4 = false;
        int i5 = 0;
        while (!z4) {
            try {
                this.mUdpChannel = java.nio.channels.DatagramChannel.open();
                this.mUdpChannel.socket().bind(new java.net.InetSocketAddress(this.mExCheckInfo.isIpv4() ? this.mExCheckInfo.getNetInfo().getIpv4() : this.mExCheckInfo.getNetInfo().getIpv6(), this.mExCheckInfo.getUdpPort()));
                try {
                    this.mUdpChannel.configureBlocking(false);
                    startUdpReceiveTask();
                    z4 = true;
                } catch (java.lang.Exception e5) {
                    e = e5;
                    z4 = true;
                    java.nio.channels.DatagramChannel datagramChannel = this.mUdpChannel;
                    if (datagramChannel != null) {
                        try {
                            datagramChannel.close();
                            this.mUdpChannel = null;
                        } catch (java.lang.Exception e6) {
                            e6.printStackTrace();
                        }
                    }
                    i5++;
                    if (i5 >= this.udpPortArray.size()) {
                        return;
                    }
                    this.mExCheckInfo.setUdpPort(this.udpPortArray.get(i5));
                    e.printStackTrace();
                }
            } catch (java.lang.Exception e7) {
                e = e7;
            }
        }
    }

    private void parseMsgBody(byte[] bArr, java.lang.String str) throws java.lang.Exception {
        java.io.DataInputStream dataInputStream = new java.io.DataInputStream(new java.io.ByteArrayInputStream(bArr));
        while (true) {
            byte b5 = dataInputStream.readByte();
            if (b5 == -1) {
                return;
            }
            if (b5 == 8) {
                dataInputStream.readByte();
                int unsignedShort = dataInputStream.readUnsignedShort();
                com.cndatacom.sdk.portal.util.ExLogUtil.i("ExCheckManager UDPTask parseMsgBody->type=" + ((int) b5) + ",tcpPort=" + unsignedShort);
                this.mOnlineClientInfos.get(str).setTcpPort(unsignedShort);
            } else if (b5 != 11) {
                switch (b5) {
                    case 1:
                    case 2:
                        dataInputStream.readByte();
                        dataInputStream.read(new byte[6]);
                        break;
                    case 3:
                    case 4:
                        dataInputStream.readByte();
                        byte[] bArr2 = new byte[4];
                        dataInputStream.read(bArr2);
                        com.cndatacom.sdk.portal.util.ExLogUtil.i("ExCheckManager UDPTask parseMsgBody->type=" + ((int) b5) + ",ip=" + java.net.InetAddress.getByAddress(bArr2).getHostAddress());
                        break;
                    case 5:
                    case 6:
                        dataInputStream.readByte();
                        byte[] bArr3 = new byte[16];
                        dataInputStream.read(bArr3);
                        com.cndatacom.sdk.portal.util.ExLogUtil.i("ExCheckManager UDPTask parseMsgBody->type=" + ((int) b5) + ",ipv6=" + java.net.InetAddress.getByAddress(bArr3).getHostAddress());
                        break;
                    default:
                        dataInputStream.skip(dataInputStream.readByte());
                        break;
                }
            } else {
                dataInputStream.readByte();
                com.cndatacom.sdk.portal.util.ExLogUtil.i("ExCheckManager UDPTask parseMsgBody->type=" + ((int) b5) + ",versionCode=" + dataInputStream.readInt());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parseTcpPacket(java.nio.channels.SocketChannel socketChannel, byte[] bArr, java.lang.String str, int i5) throws java.lang.Exception {
        java.io.DataInputStream dataInputStream = new java.io.DataInputStream(new java.io.ByteArrayInputStream(bArr));
        for (int i6 = 0; i6 < 2; i6++) {
            dataInputStream.readByte();
        }
        dataInputStream.readByte();
        byte b5 = dataInputStream.readByte();
        dataInputStream.readByte();
        dataInputStream.readByte();
        dataInputStream.readShort();
        if (b5 == 5) {
            java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
            java.io.DataOutputStream dataOutputStream = new java.io.DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeBytes("CE");
            dataOutputStream.writeByte(1);
            dataOutputStream.writeByte(6);
            dataOutputStream.writeByte(2);
            dataOutputStream.writeByte(1);
            byte[] bArrCreateReturnTcpMsg = createReturnTcpMsg(str, i5);
            dataOutputStream.writeShort(com.cndatacom.zexcheck.v3.util.CRC16Util.calcCrc16(bArrCreateReturnTcpMsg));
            dataOutputStream.write(com.cndatacom.sdk.portal.util.CryptoUtil.des3EncodeCBC(this.mExCheckInfo.getTicket().substring(0, 16).getBytes(), this.mExCheckInfo.getTicket().substring(16, 32).getBytes(), bArrCreateReturnTcpMsg));
            java.nio.ByteBuffer byteBufferWrap = java.nio.ByteBuffer.wrap(byteArrayOutputStream.toByteArray());
            while (byteBufferWrap.hasRemaining()) {
                socketChannel.write(byteBufferWrap);
            }
            socketChannel.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parseUdpPacket(byte[] bArr, int i5, java.lang.String str, int i6) throws java.lang.Exception {
        java.io.DataInputStream dataInputStream = new java.io.DataInputStream(new java.io.ByteArrayInputStream(bArr));
        for (int i7 = 0; i7 < 2; i7++) {
            dataInputStream.readByte();
        }
        dataInputStream.readByte();
        byte b5 = dataInputStream.readByte();
        dataInputStream.readByte();
        dataInputStream.readByte();
        short s5 = dataInputStream.readShort();
        java.lang.String str2 = "true" + str + i6;
        if (b5 == 3) {
            java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
            java.io.DataOutputStream dataOutputStream = new java.io.DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeBytes("CE");
            dataOutputStream.writeByte(1);
            dataOutputStream.writeByte(4);
            dataOutputStream.writeByte(2);
            dataOutputStream.writeByte(1);
            byte[] bArrCreateReturnUdpMsg = createReturnUdpMsg(str, i6);
            dataOutputStream.writeShort(com.cndatacom.zexcheck.v3.util.CRC16Util.calcCrc16(bArrCreateReturnUdpMsg));
            dataOutputStream.write(com.cndatacom.sdk.portal.util.CryptoUtil.des3EncodeCBC(this.mExCheckInfo.getTicket().substring(0, 16).getBytes(), this.mExCheckInfo.getTicket().substring(16, 32).getBytes(), bArrCreateReturnUdpMsg));
            this.mUdpChannel.send(java.nio.ByteBuffer.wrap(byteArrayOutputStream.toByteArray()), new java.net.InetSocketAddress(java.net.InetAddress.getByName(str), i6));
            com.cndatacom.sdk.portal.util.ExLogUtil.i("ExCheckManager UDPTask  parseUdpPacket 返回检测应答报文" + str);
            return;
        }
        if (b5 != 4) {
            if (this.mResultList.containsKey(str2)) {
                this.mResultList.get(str2).setErrType(5);
            }
            com.cndatacom.zexcheck.v3.manager.ExCheckManager.TaskEvent taskEvent = this.mTaskEvent;
            if (taskEvent != null) {
                taskEvent.doFinish(this.mResultList.get(str2));
                return;
            }
            return;
        }
        this.mOnlineClientInfos.get(str).setRecvUdp(true);
        parseUdpReceiveMsgBody(str, str2, dataInputStream, s5, i5);
        if (this.mResultList.get(str2).getErrType() == 1) {
            com.cndatacom.zexcheck.v3.entity.OnlineClientInfo onlineClientInfo = this.mOnlineClientInfos.get(str);
            int tcpPort = onlineClientInfo.getTcpPort();
            java.lang.String ip = onlineClientInfo.getIp();
            java.lang.String ticket = onlineClientInfo.getTicket();
            com.cndatacom.zexcheck.v3.entity.PacketInfo packetInfo = new com.cndatacom.zexcheck.v3.entity.PacketInfo();
            packetInfo.setTcpPort(tcpPort);
            packetInfo.setIp(ip);
            packetInfo.setTicket(ticket);
            com.cndatacom.zexcheck.v3.task.TCPTask tCPTask = new com.cndatacom.zexcheck.v3.task.TCPTask(this.mTcpExecutorService, this.mOnlineClientInfos, packetInfo, this.mResultList, this.mExCheckInfo);
            tCPTask.setTaskEvent(this.mTaskEvent);
            tCPTask.start();
        }
        com.cndatacom.zexcheck.v3.manager.ExCheckManager.TaskEvent taskEvent2 = this.mTaskEvent;
        if (taskEvent2 != null) {
            taskEvent2.doFinish(this.mResultList.get(str2));
        }
    }

    private void parseUdpReceiveMsgBody(java.lang.String str, java.lang.String str2, java.io.DataInputStream dataInputStream, short s5, int i5) throws java.lang.Exception {
        java.lang.String responseTicket = getResponseTicket(this.mOnlineClientInfos, str);
        byte[] bArr = new byte[i5 - 8];
        if (dataInputStream.read(bArr) <= 0 || android.text.TextUtils.isEmpty(responseTicket)) {
            if (this.mResultList.containsKey(str2)) {
                this.mResultList.get(str2).setErrType(6);
                return;
            }
            return;
        }
        byte[] bArrDes3DecodeCBC = com.cndatacom.sdk.portal.util.CryptoUtil.des3DecodeCBC(responseTicket.substring(0, 16).getBytes(), responseTicket.substring(16, 32).getBytes(), bArr);
        parseMsgBody(bArrDes3DecodeCBC, str);
        if (((short) com.cndatacom.zexcheck.v3.util.CRC16Util.calcCrc16(bArrDes3DecodeCBC)) != s5) {
            if (this.mResultList.containsKey(str2)) {
                this.mResultList.get(str2).setErrType(6);
            }
        } else if (this.mResultList.containsKey(str2)) {
            this.mResultList.get(str2).setErrType(1);
        }
    }

    private void startTcpReceiveTask(final java.nio.channels.ServerSocketChannel serverSocketChannel) {
        com.cndatacom.sdk.portal.util.ExLogUtil.i("ExCheckManager TCPTask startTcpReceiveTask->");
        new java.lang.Thread() { // from class: com.cndatacom.zexcheck.v3.manager.ExCheckManager.4
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    java.nio.ByteBuffer byteBufferAllocate = java.nio.ByteBuffer.allocate(32767);
                    while (true) {
                        java.nio.channels.ServerSocketChannel serverSocketChannel2 = serverSocketChannel;
                        if (serverSocketChannel2 == null) {
                            return;
                        }
                        java.nio.channels.SocketChannel socketChannelAccept = serverSocketChannel2.accept();
                        if (socketChannelAccept != null) {
                            byteBufferAllocate.clear();
                            int i5 = socketChannelAccept.read(byteBufferAllocate);
                            if (i5 > 0) {
                                byteBufferAllocate.limit(i5);
                                java.lang.String hostAddress = socketChannelAccept.socket().getInetAddress().getHostAddress();
                                if (hostAddress.indexOf("%") != -1) {
                                    hostAddress = hostAddress.substring(0, hostAddress.indexOf("%"));
                                }
                                com.cndatacom.sdk.portal.util.ExLogUtil.i("ExCheckManager TCPTask  ->" + hostAddress + " --发来消息");
                                com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.parseTcpPacket(socketChannelAccept, byteBufferAllocate.array(), hostAddress, socketChannelAccept.socket().getPort());
                            }
                        }
                    }
                } catch (java.lang.Exception e5) {
                    e5.printStackTrace();
                }
            }
        }.start();
    }

    private void startUdpReceiveTask() {
        com.cndatacom.sdk.portal.util.ExLogUtil.i("ExCheckManager UDPTask startUdpReceiveTask->");
        new java.lang.Thread(new java.lang.Runnable() { // from class: com.cndatacom.zexcheck.v3.manager.ExCheckManager.5
            @Override // java.lang.Runnable
            public void run() {
                java.nio.ByteBuffer byteBufferAllocate = java.nio.ByteBuffer.allocate(32767);
                while (com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.mUdpChannel != null) {
                    try {
                        java.net.InetSocketAddress inetSocketAddress = (java.net.InetSocketAddress) com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.mUdpChannel.receive(byteBufferAllocate);
                        if (inetSocketAddress != null) {
                            java.lang.String hostAddress = inetSocketAddress.getAddress().getHostAddress();
                            if (hostAddress.indexOf("%") != -1) {
                                hostAddress = hostAddress.substring(0, hostAddress.indexOf("%"));
                            }
                            com.cndatacom.sdk.portal.util.ExLogUtil.i("ExCheckManager UDPTask  ->" + hostAddress + " --发来消息");
                            int port = inetSocketAddress.getPort();
                            byteBufferAllocate.flip();
                            int iRemaining = byteBufferAllocate.remaining();
                            byte[] bArr = new byte[iRemaining];
                            byteBufferAllocate.get(bArr);
                            byteBufferAllocate.clear();
                            com.cndatacom.zexcheck.v3.manager.ExCheckManager.this.parseUdpPacket(bArr, iRemaining, hostAddress, port);
                        }
                    } catch (java.lang.Exception e5) {
                        e5.printStackTrace();
                        com.cndatacom.sdk.portal.util.ExLogUtil.e("ExCheckManager UDPTask startUdpReceiveTask Exception ->" + e5.getMessage());
                    }
                }
                com.cndatacom.sdk.portal.util.ExLogUtil.i("ExCheckManager UDPTask startUdpReceiveTask finish ->");
            }
        }).start();
    }

    public void release() {
        try {
            this.mTimer.cancel();
            java.nio.channels.DatagramChannel datagramChannel = this.mUdpChannel;
            if (datagramChannel != null) {
                datagramChannel.close();
                this.mUdpChannel = null;
            }
            java.nio.channels.ServerSocketChannel serverSocketChannel = this.mTcpServerChannel;
            if (serverSocketChannel != null) {
                serverSocketChannel.close();
                this.mTcpServerChannel = null;
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public void start(com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        this.mExCheckInfo = new com.cndatacom.zexcheck.v3.entity.ExCheckInfo();
        int iNextInt = new java.util.Random().nextInt(10000) + 20000;
        this.mExCheckInfo.setTcpPort(iNextInt + "");
        this.mExCheckInfo.setSchoolId(configInfo.getSchoolId());
        this.mExCheckInfo.setNetInfo(configInfo.getNetInfo());
        this.mExCheckInfo.setTicket(configInfo.getTicket());
        this.mExCheckInfo.setClientId(configInfo.getClientId());
        this.mExCheckInfo.setAccount(configInfo.getUserId());
        try {
            java.lang.String config = configInfo.getConfig("excheck-args", "");
            if (android.text.TextUtils.isEmpty(config)) {
                return;
            }
            org.json.JSONObject jSONObject = new org.json.JSONObject(config);
            if (jSONObject.has("enable") ? jSONObject.getJSONObject("enable").optString("value").equals("1") : false) {
                org.json.JSONObject jSONObject2 = jSONObject.getJSONObject("uploadurl");
                org.json.JSONObject jSONObject3 = jSONObject.getJSONObject("geturl");
                org.json.JSONObject jSONObject4 = jSONObject.getJSONObject("timeout");
                org.json.JSONObject jSONObject5 = jSONObject.getJSONObject("interval");
                org.json.JSONObject jSONObject6 = jSONObject.getJSONObject("port");
                org.json.JSONObject jSONObject7 = jSONObject.getJSONObject("delay");
                this.mExCheckInfo.setIpv6First(jSONObject.getJSONObject("isIpv6First").getString("value").equals("1"));
                com.cndatacom.sdk.portal.util.ExLogUtil.i("ExCheckManager ipv6First ->" + this.mExCheckInfo.isIpv6First());
                if (this.mExCheckInfo.isIpv4()) {
                    this.mExCheckInfo.setUploadUrl(jSONObject2.getString("url"));
                    this.mExCheckInfo.setGetUrl(jSONObject3.getString("url"));
                } else {
                    this.mExCheckInfo.setUploadUrl(jSONObject2.getString("ipv6Url"));
                    this.mExCheckInfo.setGetUrl(jSONObject3.getString("ipv6Url"));
                }
                java.util.ArrayList<java.lang.String> arrayList = new java.util.ArrayList<>(java.util.Arrays.asList(jSONObject6.getString("value").split(",")));
                this.udpPortArray = arrayList;
                if (arrayList.size() <= 0) {
                    com.cndatacom.sdk.portal.util.ExLogUtil.i("ExCheckManager udp 端口被占用");
                    return;
                }
                java.lang.String str = this.udpPortArray.get(0);
                this.mExCheckInfo.setUdpPort(str);
                this.mExCheckInfo.setInterval(jSONObject5.getString("value"));
                this.mExCheckInfo.setTimeout(jSONObject4.getString("value"));
                this.mExCheckInfo.setDelay(jSONObject7.getString("value"));
                com.cndatacom.sdk.portal.util.ExLogUtil.i("ExCheckManager tcp port" + iNextInt + ",udp,Port=" + str);
            }
            this.mTimer.schedule(new com.cndatacom.zexcheck.v3.manager.ExCheckManager.ExCheckTask(), this.mExCheckInfo.getDelay(), this.mExCheckInfo.getInterval());
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }
}
