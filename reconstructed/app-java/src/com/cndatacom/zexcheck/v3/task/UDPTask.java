package com.cndatacom.zexcheck.v3.task;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class UDPTask {
    private java.util.concurrent.ExecutorService mExecutorService;
    private com.cndatacom.zexcheck.v3.entity.PacketInfo mPacketInfo;
    private java.util.concurrent.ConcurrentHashMap<java.lang.String, com.cndatacom.zexcheck.v3.entity.ExCheckResult> mResultList;
    private com.cndatacom.zexcheck.v3.manager.ExCheckManager.TaskEvent mTaskEvent;
    private java.nio.channels.DatagramChannel mUdpChannel;
    private java.util.Timer mUdpTimeout;
    private java.util.concurrent.ConcurrentHashMap<java.lang.String, com.cndatacom.zexcheck.v3.entity.OnlineClientInfo> onlineClientInfos;
    private java.util.ArrayList<java.lang.String> udpPortArray;
    private final int UDP_RETRY_TIME = 20000;
    private int mIndex = -1;

    public UDPTask(java.util.concurrent.ExecutorService executorService, java.nio.channels.DatagramChannel datagramChannel, com.cndatacom.zexcheck.v3.entity.PacketInfo packetInfo, java.util.concurrent.ConcurrentHashMap<java.lang.String, com.cndatacom.zexcheck.v3.entity.ExCheckResult> concurrentHashMap, java.util.concurrent.ConcurrentHashMap<java.lang.String, com.cndatacom.zexcheck.v3.entity.OnlineClientInfo> concurrentHashMap2, java.util.ArrayList<java.lang.String> arrayList) {
        this.mExecutorService = executorService;
        this.mUdpChannel = datagramChannel;
        this.mPacketInfo = packetInfo;
        this.mResultList = concurrentHashMap;
        this.onlineClientInfos = concurrentHashMap2;
        this.udpPortArray = arrayList;
    }

    public static /* synthetic */ int access$408(com.cndatacom.zexcheck.v3.task.UDPTask uDPTask) {
        int i5 = uDPTask.mIndex;
        uDPTask.mIndex = i5 + 1;
        return i5;
    }

    private byte[] createUdpMsg() {
        try {
            java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
            java.io.DataOutputStream dataOutputStream = new java.io.DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeBytes("CE");
            dataOutputStream.writeByte(1);
            dataOutputStream.writeByte(3);
            dataOutputStream.writeByte(6);
            dataOutputStream.writeByte(0);
            dataOutputStream.writeShort(0);
            return byteArrayOutputStream.toByteArray();
        } catch (java.io.IOException e5) {
            e5.printStackTrace();
            return new byte[0];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendUdpMsg() throws java.io.IOException {
        this.mUdpChannel.send(java.nio.ByteBuffer.wrap(createUdpMsg()), new java.net.InetSocketAddress(java.net.InetAddress.getByName(this.mPacketInfo.getIp()), this.mPacketInfo.getUdpPort()));
        com.cndatacom.sdk.portal.util.ExLogUtil.i("ExCheckManager UDPTask sendUdpMsg->");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int toInt(java.lang.String str, int i5) {
        try {
            return java.lang.Integer.parseInt(str);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            return i5;
        }
    }

    public void cancelTime() {
        this.mUdpTimeout.cancel();
    }

    public void setTaskEvent(com.cndatacom.zexcheck.v3.manager.ExCheckManager.TaskEvent taskEvent) {
        this.mTaskEvent = taskEvent;
    }

    public void start() {
        this.mExecutorService.execute(new java.lang.Runnable() { // from class: com.cndatacom.zexcheck.v3.task.UDPTask.1
            @Override // java.lang.Runnable
            public void run() {
                final java.lang.String ip = com.cndatacom.zexcheck.v3.task.UDPTask.this.mPacketInfo.getIp();
                final int udpPort = com.cndatacom.zexcheck.v3.task.UDPTask.this.mPacketInfo.getUdpPort();
                com.cndatacom.zexcheck.v3.entity.ExCheckResult exCheckResult = new com.cndatacom.zexcheck.v3.entity.ExCheckResult();
                exCheckResult.setPort(udpPort);
                exCheckResult.setUdp(true);
                exCheckResult.setIp(ip);
                exCheckResult.setTicket(com.cndatacom.zexcheck.v3.task.UDPTask.this.mPacketInfo.getTicket());
                com.cndatacom.zexcheck.v3.task.UDPTask.this.mResultList.put(exCheckResult.getKey(), exCheckResult);
                com.cndatacom.zexcheck.v3.task.UDPTask.this.mUdpTimeout = new java.util.Timer();
                com.cndatacom.zexcheck.v3.task.UDPTask.this.mUdpTimeout.schedule(new java.util.TimerTask() { // from class: com.cndatacom.zexcheck.v3.task.UDPTask.1.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        try {
                            if (((com.cndatacom.zexcheck.v3.entity.OnlineClientInfo) com.cndatacom.zexcheck.v3.task.UDPTask.this.onlineClientInfos.get(ip)).isRecvUdp()) {
                                com.cndatacom.zexcheck.v3.task.UDPTask.this.cancelTime();
                                return;
                            }
                            com.cndatacom.zexcheck.v3.task.UDPTask.access$408(com.cndatacom.zexcheck.v3.task.UDPTask.this);
                            if (com.cndatacom.zexcheck.v3.task.UDPTask.this.mIndex == com.cndatacom.zexcheck.v3.task.UDPTask.this.udpPortArray.size()) {
                                java.lang.String str = "true" + ip + udpPort;
                                ((com.cndatacom.zexcheck.v3.entity.ExCheckResult) com.cndatacom.zexcheck.v3.task.UDPTask.this.mResultList.get(str)).setErrType(0);
                                if (com.cndatacom.zexcheck.v3.task.UDPTask.this.mTaskEvent != null) {
                                    com.cndatacom.zexcheck.v3.task.UDPTask.this.mTaskEvent.doFinish((com.cndatacom.zexcheck.v3.entity.ExCheckResult) com.cndatacom.zexcheck.v3.task.UDPTask.this.mResultList.get(str));
                                }
                                com.cndatacom.zexcheck.v3.task.UDPTask.this.cancelTime();
                                return;
                            }
                            com.cndatacom.zexcheck.v3.task.UDPTask uDPTask = com.cndatacom.zexcheck.v3.task.UDPTask.this;
                            int i5 = uDPTask.toInt((java.lang.String) uDPTask.udpPortArray.get(com.cndatacom.zexcheck.v3.task.UDPTask.this.mIndex), 10000);
                            com.cndatacom.zexcheck.v3.task.UDPTask.this.mPacketInfo.setUdpPort(i5);
                            java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
                            stringBuffer.append("指令执行:");
                            stringBuffer.append("udp " + com.cndatacom.zexcheck.v3.task.UDPTask.this.mPacketInfo.getIp() + ":" + i5);
                            java.lang.StringBuilder sb = new java.lang.StringBuilder();
                            sb.append("ExCheckManager do code->");
                            sb.append(stringBuffer.toString());
                            com.cndatacom.sdk.portal.util.ExLogUtil.i(sb.toString());
                            com.cndatacom.zexcheck.v3.task.UDPTask.this.sendUdpMsg();
                        } catch (java.lang.Exception e5) {
                            e5.printStackTrace();
                        }
                    }
                }, 100L, 20000L);
            }
        });
    }
}
