package com.cndatacom.zexcheck.v3.task;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class TCPTask {
    private com.cndatacom.zexcheck.v3.entity.ExCheckInfo mExCheckInfo;
    private java.util.concurrent.ExecutorService mExecutorService;
    private java.util.concurrent.ConcurrentHashMap<java.lang.String, com.cndatacom.zexcheck.v3.entity.OnlineClientInfo> mOnlineClientInfos;
    private com.cndatacom.zexcheck.v3.entity.PacketInfo mPacketInfo;
    private java.util.concurrent.ConcurrentHashMap<java.lang.String, com.cndatacom.zexcheck.v3.entity.ExCheckResult> mResultList;
    private com.cndatacom.zexcheck.v3.manager.ExCheckManager.TaskEvent mTaskEvent;
    private final int TIME_OUT = 20000;
    private java.util.Timer mTimer = new java.util.Timer();

    public TCPTask(java.util.concurrent.ExecutorService executorService, java.util.concurrent.ConcurrentHashMap<java.lang.String, com.cndatacom.zexcheck.v3.entity.OnlineClientInfo> concurrentHashMap, com.cndatacom.zexcheck.v3.entity.PacketInfo packetInfo, java.util.concurrent.ConcurrentHashMap<java.lang.String, com.cndatacom.zexcheck.v3.entity.ExCheckResult> concurrentHashMap2, com.cndatacom.zexcheck.v3.entity.ExCheckInfo exCheckInfo) {
        this.mExecutorService = executorService;
        this.mOnlineClientInfos = concurrentHashMap;
        this.mPacketInfo = packetInfo;
        this.mExCheckInfo = exCheckInfo;
        this.mResultList = concurrentHashMap2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] createTcpMsg() {
        try {
            java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
            java.io.DataOutputStream dataOutputStream = new java.io.DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeBytes("CE");
            dataOutputStream.writeByte(1);
            dataOutputStream.writeByte(5);
            dataOutputStream.writeByte(6);
            dataOutputStream.writeByte(0);
            dataOutputStream.writeShort(0);
            return byteArrayOutputStream.toByteArray();
        } catch (java.io.IOException e5) {
            e5.printStackTrace();
            return new byte[0];
        }
    }

    private java.lang.String getMacString(byte[] bArr) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        for (byte b5 : bArr) {
            sb.append(':');
            sb.append(java.lang.Integer.toHexString(b5 & 255));
        }
        return sb.substring(1);
    }

    private java.lang.String getResponseTicket(java.lang.String str) {
        return this.mOnlineClientInfos.containsKey(str) ? this.mOnlineClientInfos.get(str).getTicket() : "";
    }

    private void parseMsgBody(byte[] bArr) throws java.lang.Exception {
        java.io.DataInputStream dataInputStream = new java.io.DataInputStream(new java.io.ByteArrayInputStream(bArr));
        while (true) {
            byte b5 = dataInputStream.readByte();
            if (b5 == -1) {
                return;
            }
            if (b5 == 1 || b5 == 2) {
                dataInputStream.readByte();
                dataInputStream.read(new byte[6]);
            } else if (b5 == 3 || b5 == 4) {
                dataInputStream.readByte();
                com.cndatacom.zexcheck.v3.util.IpUtil.intToIP(dataInputStream.readInt());
            } else if (b5 != 11) {
                dataInputStream.skip(dataInputStream.readByte());
            } else {
                dataInputStream.readByte();
                dataInputStream.readInt();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parseTcpReceiveMsgBody(java.lang.String str, java.lang.String str2, java.io.DataInputStream dataInputStream, short s5, int i5) throws java.lang.Exception {
        java.lang.String responseTicket = getResponseTicket(str);
        byte[] bArr = new byte[i5 - 8];
        if (dataInputStream.read(bArr) <= 0 || android.text.TextUtils.isEmpty(responseTicket)) {
            if (this.mResultList.containsKey(str2)) {
                this.mResultList.get(str2).setErrType(5);
                return;
            }
            return;
        }
        byte[] bArrDes3DecodeCBC = com.cndatacom.sdk.portal.util.CryptoUtil.des3DecodeCBC(responseTicket.substring(0, 16).getBytes(), responseTicket.substring(16, 32).getBytes(), bArr);
        parseMsgBody(bArrDes3DecodeCBC);
        if (((short) com.cndatacom.zexcheck.v3.util.CRC16Util.calcCrc16(bArrDes3DecodeCBC)) != s5) {
            if (this.mResultList.containsKey(str2)) {
                this.mResultList.get(str2).setErrType(6);
            }
        } else if (this.mResultList.containsKey(str2)) {
            this.mResultList.get(str2).setErrType(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startTcpClientReceiveTask(final java.nio.channels.SocketChannel socketChannel) {
        new java.lang.Thread(new java.lang.Runnable() { // from class: com.cndatacom.zexcheck.v3.task.TCPTask.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    java.nio.ByteBuffer byteBufferAllocate = java.nio.ByteBuffer.allocate(32767);
                    java.nio.channels.SocketChannel socketChannel2 = socketChannel;
                    if (socketChannel2 != null) {
                        int i5 = socketChannel2.read(byteBufferAllocate);
                        com.cndatacom.zexcheck.v3.task.TCPTask.this.mTimer.cancel();
                        java.lang.String hostAddress = socketChannel.socket().getInetAddress().getHostAddress();
                        java.lang.String strSubstring = hostAddress.indexOf("%") != -1 ? hostAddress.substring(0, hostAddress.indexOf("%")) : hostAddress;
                        java.lang.String str = "false" + strSubstring + socketChannel.socket().getPort();
                        if (i5 > 0) {
                            byteBufferAllocate.flip();
                            byte[] bArrArray = byteBufferAllocate.array();
                            byteBufferAllocate.clear();
                            java.io.DataInputStream dataInputStream = new java.io.DataInputStream(new java.io.ByteArrayInputStream(bArrArray));
                            for (int i6 = 0; i6 < 2; i6++) {
                                dataInputStream.readByte();
                            }
                            dataInputStream.readByte();
                            byte b5 = dataInputStream.readByte();
                            dataInputStream.readByte();
                            dataInputStream.readByte();
                            short s5 = dataInputStream.readShort();
                            if (b5 == 6) {
                                com.cndatacom.zexcheck.v3.task.TCPTask.this.parseTcpReceiveMsgBody(strSubstring, str, dataInputStream, s5, i5);
                            } else if (com.cndatacom.zexcheck.v3.task.TCPTask.this.mResultList.containsKey(str)) {
                                ((com.cndatacom.zexcheck.v3.entity.ExCheckResult) com.cndatacom.zexcheck.v3.task.TCPTask.this.mResultList.get(str)).setErrType(5);
                            }
                        } else if (com.cndatacom.zexcheck.v3.task.TCPTask.this.mResultList.containsKey(str)) {
                            ((com.cndatacom.zexcheck.v3.entity.ExCheckResult) com.cndatacom.zexcheck.v3.task.TCPTask.this.mResultList.get(str)).setErrType(5);
                        }
                        if (com.cndatacom.zexcheck.v3.task.TCPTask.this.mTaskEvent != null) {
                            com.cndatacom.sdk.portal.util.ExLogUtil.i("ExCheckManager ExCheckManager TCPTask clientReceiveTask start finish ->");
                            com.cndatacom.zexcheck.v3.task.TCPTask.this.mTaskEvent.doFinish((com.cndatacom.zexcheck.v3.entity.ExCheckResult) com.cndatacom.zexcheck.v3.task.TCPTask.this.mResultList.get(str));
                        }
                    }
                } catch (java.lang.Exception e5) {
                    e5.printStackTrace();
                    com.cndatacom.sdk.portal.util.ExLogUtil.e("TCPTask clientReceiveTask Exception ->" + e5.getMessage());
                }
                com.cndatacom.sdk.portal.util.ExLogUtil.i("ExCheckManager ExCheckManager TCPTask clientReceiveTask finish ->");
            }
        }).start();
    }

    public void setTaskEvent(com.cndatacom.zexcheck.v3.manager.ExCheckManager.TaskEvent taskEvent) {
        this.mTaskEvent = taskEvent;
    }

    public void start() {
        this.mExecutorService.execute(new java.lang.Runnable() { // from class: com.cndatacom.zexcheck.v3.task.TCPTask.1
            @Override // java.lang.Runnable
            public void run() {
                java.lang.String ip = com.cndatacom.zexcheck.v3.task.TCPTask.this.mPacketInfo.getIp();
                int tcpPort = com.cndatacom.zexcheck.v3.task.TCPTask.this.mPacketInfo.getTcpPort();
                java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
                stringBuffer.append("指令执行:");
                stringBuffer.append("tcp " + ip + ":" + tcpPort);
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append("ExCheckManager ExCheckManager do code->");
                sb.append(stringBuffer.toString());
                com.cndatacom.sdk.portal.util.ExLogUtil.i(sb.toString());
                com.cndatacom.zexcheck.v3.entity.ExCheckResult exCheckResult = new com.cndatacom.zexcheck.v3.entity.ExCheckResult();
                exCheckResult.setPort(tcpPort);
                exCheckResult.setUdp(false);
                exCheckResult.setIp(ip);
                exCheckResult.setTicket(com.cndatacom.zexcheck.v3.task.TCPTask.this.mPacketInfo.getTicket());
                final java.lang.String key = exCheckResult.getKey();
                com.cndatacom.zexcheck.v3.task.TCPTask.this.mResultList.put(key, exCheckResult);
                try {
                    byte[] bArrCreateTcpMsg = com.cndatacom.zexcheck.v3.task.TCPTask.this.createTcpMsg();
                    java.nio.channels.SocketChannel socketChannelOpen = java.nio.channels.SocketChannel.open();
                    socketChannelOpen.bind((java.net.SocketAddress) new java.net.InetSocketAddress(com.cndatacom.zexcheck.v3.task.TCPTask.this.mExCheckInfo.isIpv4() ? com.cndatacom.zexcheck.v3.task.TCPTask.this.mExCheckInfo.getNetInfo().getIpv4() : com.cndatacom.zexcheck.v3.task.TCPTask.this.mExCheckInfo.getNetInfo().getIpv6(), 0));
                    if (!socketChannelOpen.connect(new java.net.InetSocketAddress(ip, tcpPort))) {
                        if (com.cndatacom.zexcheck.v3.task.TCPTask.this.mResultList.containsKey(key)) {
                            ((com.cndatacom.zexcheck.v3.entity.ExCheckResult) com.cndatacom.zexcheck.v3.task.TCPTask.this.mResultList.get(key)).setErrType(0);
                        }
                        if (com.cndatacom.zexcheck.v3.task.TCPTask.this.mTaskEvent != null) {
                            com.cndatacom.zexcheck.v3.task.TCPTask.this.mTaskEvent.doFinish((com.cndatacom.zexcheck.v3.entity.ExCheckResult) com.cndatacom.zexcheck.v3.task.TCPTask.this.mResultList.get(key));
                            return;
                        }
                        return;
                    }
                    java.nio.ByteBuffer byteBufferWrap = java.nio.ByteBuffer.wrap(bArrCreateTcpMsg);
                    while (byteBufferWrap.hasRemaining()) {
                        socketChannelOpen.write(byteBufferWrap);
                    }
                    com.cndatacom.zexcheck.v3.task.TCPTask.this.mTimer.schedule(new java.util.TimerTask() { // from class: com.cndatacom.zexcheck.v3.task.TCPTask.1.1
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            if (com.cndatacom.zexcheck.v3.task.TCPTask.this.mResultList.containsKey(key)) {
                                ((com.cndatacom.zexcheck.v3.entity.ExCheckResult) com.cndatacom.zexcheck.v3.task.TCPTask.this.mResultList.get(key)).setErrType(4);
                            }
                            if (com.cndatacom.zexcheck.v3.task.TCPTask.this.mTaskEvent != null) {
                                com.cndatacom.zexcheck.v3.task.TCPTask.this.mTaskEvent.doFinish((com.cndatacom.zexcheck.v3.entity.ExCheckResult) com.cndatacom.zexcheck.v3.task.TCPTask.this.mResultList.get(key));
                            }
                        }
                    }, 20000L);
                    com.cndatacom.zexcheck.v3.task.TCPTask.this.startTcpClientReceiveTask(socketChannelOpen);
                    com.cndatacom.sdk.portal.util.ExLogUtil.i("ExCheckManager ExCheckManager TCPTask sendTcpMsg->");
                } catch (java.io.IOException e5) {
                    e5.printStackTrace();
                    if (com.cndatacom.zexcheck.v3.task.TCPTask.this.mTaskEvent != null) {
                        com.cndatacom.zexcheck.v3.task.TCPTask.this.mTaskEvent.doFinish((com.cndatacom.zexcheck.v3.entity.ExCheckResult) com.cndatacom.zexcheck.v3.task.TCPTask.this.mResultList.get(key));
                    }
                }
            }
        });
    }
}
