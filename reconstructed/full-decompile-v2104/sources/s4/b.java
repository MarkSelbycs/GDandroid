package s4;

/* JADX INFO: compiled from: DefaultUdpTransportMapping.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b extends s4.d {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final n4.a f6093j = n4.b.d(s4.b.class);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public java.net.DatagramSocket f6094e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public t4.k f6095f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public s4.b.a f6096g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6097h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f6098i;

    /* JADX INFO: compiled from: DefaultUdpTransportMapping.java */
    public class a implements t4.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte[] f6099a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public volatile boolean f6100b = false;

        public a() throws java.net.SocketException {
            this.f6099a = new byte[s4.b.this.d()];
        }

        public void a() {
            this.f6100b = true;
        }

        @Override // t4.k
        public void interrupt() {
            if (s4.b.f6093j.e()) {
                s4.b.f6093j.f("Interrupting worker task: " + getClass().getName());
            }
            a();
        }

        @Override // t4.k
        public void join() throws java.lang.InterruptedException {
            if (s4.b.f6093j.e()) {
                s4.b.f6093j.f("Joining worker task: " + getClass().getName());
            }
        }

        /* JADX WARN: Code duplicated, block: B:28:0x00a4 A[Catch: SocketTimeoutException -> 0x0069, IOException -> 0x0137, SocketException -> 0x015e, PortUnreachableException -> 0x01e2, TryCatch #8 {SocketTimeoutException -> 0x0069, blocks: (B:16:0x0087, B:20:0x0090, B:26:0x009a, B:28:0x00a4, B:29:0x00f1, B:31:0x00f9, B:33:0x0113, B:32:0x010b, B:23:0x0095), top: B:110:0x0087 }] */
        /* JADX WARN: Code duplicated, block: B:31:0x00f9 A[Catch: SocketTimeoutException -> 0x0069, IOException -> 0x0137, SocketException -> 0x015e, PortUnreachableException -> 0x01e2, TryCatch #8 {SocketTimeoutException -> 0x0069, blocks: (B:16:0x0087, B:20:0x0090, B:26:0x009a, B:28:0x00a4, B:29:0x00f1, B:31:0x00f9, B:33:0x0113, B:32:0x010b, B:23:0x0095), top: B:110:0x0087 }] */
        /* JADX WARN: Code duplicated, block: B:32:0x010b A[Catch: SocketTimeoutException -> 0x0069, IOException -> 0x0137, SocketException -> 0x015e, PortUnreachableException -> 0x01e2, TryCatch #8 {SocketTimeoutException -> 0x0069, blocks: (B:16:0x0087, B:20:0x0090, B:26:0x009a, B:28:0x00a4, B:29:0x00f1, B:31:0x00f9, B:33:0x0113, B:32:0x010b, B:23:0x0095), top: B:110:0x0087 }] */
        /* JADX WARN: Instruction removed from duplicated block: B:28:0x00a4, please report this as an issue */
        @Override // java.lang.Runnable
        public void run() {
            java.nio.ByteBuffer byteBufferWrap;
            s4.b bVar = s4.b.this;
            java.net.DatagramSocket datagramSocket = bVar.f6094e;
            if (datagramSocket != null) {
                try {
                    datagramSocket.setSoTimeout(bVar.m());
                    if (s4.b.this.f6098i > 0) {
                        datagramSocket.setReceiveBufferSize(java.lang.Math.max(s4.b.this.f6098i, s4.b.this.f6091b));
                    }
                    if (s4.b.f6093j.e()) {
                        s4.b.f6093j.f("UDP receive buffer size for socket " + s4.b.this.i() + " is set to: " + datagramSocket.getReceiveBufferSize());
                    }
                } catch (java.net.SocketException e5) {
                    s4.b.f6093j.c(e5);
                    s4.b.this.p(0);
                }
            }
            while (!this.f6100b) {
                byte[] bArr = this.f6099a;
                java.net.DatagramPacket datagramPacket = new java.net.DatagramPacket(bArr, bArr.length, s4.b.this.f6102d.I(), s4.b.this.f6102d.P());
                try {
                    try {
                        datagramSocket = s4.b.this.f6094e;
                        if (datagramSocket == null) {
                            try {
                                this.f6100b = true;
                            } catch (java.io.InterruptedIOException e6) {
                                if (e6.bytesTransferred > 0) {
                                    if (s4.b.f6093j.e()) {
                                        s4.b.f6093j.f("Received message from " + datagramPacket.getAddress() + "/" + datagramPacket.getPort() + " with length " + datagramPacket.getLength() + ": " + new r4.k(datagramPacket.getData(), 0, datagramPacket.getLength()).h0());
                                    }
                                    if (s4.b.this.h()) {
                                        int length = datagramPacket.getLength();
                                        byte[] bArr2 = new byte[length];
                                        java.lang.System.arraycopy(datagramPacket.getData(), 0, bArr2, 0, length);
                                        byteBufferWrap = java.nio.ByteBuffer.wrap(bArr2);
                                    } else {
                                        byteBufferWrap = java.nio.ByteBuffer.wrap(datagramPacket.getData());
                                    }
                                    s4.b bVar2 = s4.b.this;
                                    r4.s sVar = bVar2.f6102d;
                                    p4.v vVar = p4.v.undefined;
                                    s4.b.this.g(new r4.s(datagramPacket.getAddress(), datagramPacket.getPort()), byteBufferWrap, new k4.t(bVar2, sVar, null, vVar, vVar, false, datagramSocket));
                                }
                            }
                        } else {
                            datagramSocket.receive(datagramPacket);
                        }
                        if (s4.b.f6093j.e()) {
                            s4.b.f6093j.f("Received message from " + datagramPacket.getAddress() + "/" + datagramPacket.getPort() + " with length " + datagramPacket.getLength() + ": " + new r4.k(datagramPacket.getData(), 0, datagramPacket.getLength()).h0());
                        }
                        if (s4.b.this.h()) {
                            int length2 = datagramPacket.getLength();
                            byte[] bArr3 = new byte[length2];
                            java.lang.System.arraycopy(datagramPacket.getData(), 0, bArr3, 0, length2);
                            byteBufferWrap = java.nio.ByteBuffer.wrap(bArr3);
                        } else {
                            byteBufferWrap = java.nio.ByteBuffer.wrap(datagramPacket.getData());
                        }
                        s4.b bVar3 = s4.b.this;
                        r4.s sVar2 = bVar3.f6102d;
                        p4.v vVar2 = p4.v.undefined;
                        s4.b.this.g(new r4.s(datagramPacket.getAddress(), datagramPacket.getPort()), byteBufferWrap, new k4.t(bVar3, sVar2, null, vVar2, vVar2, false, datagramSocket));
                    } catch (java.net.SocketTimeoutException unused) {
                    }
                } catch (java.net.PortUnreachableException e7) {
                    synchronized (s4.b.this) {
                        s4.b.this.f6095f = null;
                        s4.b.f6093j.c(e7);
                        if (s4.b.f6093j.e()) {
                            e7.printStackTrace();
                        }
                        if (!this.f6100b && k4.m.m()) {
                            throw new java.lang.RuntimeException(e7);
                        }
                    }
                } catch (java.net.SocketException e8) {
                    if (!this.f6100b) {
                        s4.b.f6093j.i("Socket for transport mapping " + toString() + " error: " + e8.getMessage());
                    }
                    if (!this.f6100b && k4.m.m()) {
                        this.f6100b = true;
                        throw new java.lang.RuntimeException(e8);
                    }
                    if (this.f6100b) {
                        continue;
                    } else {
                        try {
                            java.net.DatagramSocket datagramSocketN = s4.b.this.n(e8, datagramSocket);
                            if (datagramSocketN == null) {
                                throw e8;
                            }
                            s4.b.this.f6094e = datagramSocketN;
                        } catch (java.net.SocketException e9) {
                            this.f6100b = true;
                            s4.b.this.f6094e = null;
                            s4.b.f6093j.h("Socket renewal for transport mapping " + toString() + " failed with: " + e9.getMessage(), e9);
                        }
                    }
                } catch (java.io.IOException e10) {
                    s4.b.f6093j.i(e10);
                    if (s4.b.f6093j.e()) {
                        e10.printStackTrace();
                    }
                    if (this.f6100b) {
                        continue;
                    } else if (k4.m.m()) {
                        throw new java.lang.RuntimeException(e10);
                    }
                }
            }
            synchronized (s4.b.this) {
                s4.b.this.f6095f = null;
                this.f6100b = true;
                java.net.DatagramSocket datagramSocket2 = s4.b.this.f6094e;
                if (datagramSocket2 != null && !datagramSocket2.isClosed()) {
                    datagramSocket2.close();
                }
                s4.b.this.f6094e = null;
            }
            if (s4.b.f6093j.e()) {
                s4.b.f6093j.f("Worker task stopped:" + getClass().getName());
            }
        }

        @Override // t4.k
        public void terminate() {
            a();
            if (s4.b.f6093j.e()) {
                s4.b.f6093j.f("Terminated worker task: " + getClass().getName());
            }
        }
    }

    public b() throws java.io.IOException {
        super(new r4.s("0.0.0.0/0"));
        this.f6094e = null;
        this.f6097h = 0;
        this.f6098i = 0;
        this.f6094e = new java.net.DatagramSocket(this.f6102d.P());
    }

    @Override // k4.s
    public synchronized void a() throws java.io.IOException {
        if (this.f6095f != null) {
            throw new java.net.SocketException("Port already listening");
        }
        l();
        this.f6096g = new s4.b.a();
        t4.k kVarA = k4.m.f().a("DefaultUDPTransportMapping_" + i(), this.f6096g, true);
        this.f6095f = kVarA;
        kVarA.run();
    }

    @Override // k4.s
    public boolean b() {
        return this.f6095f != null;
    }

    @Override // k4.s
    public void close() throws java.io.IOException {
        t4.k kVar = this.f6095f;
        boolean z4 = true;
        boolean z5 = false;
        if (kVar != null) {
            kVar.terminate();
            kVar.interrupt();
            if (this.f6097h > 0) {
                try {
                    kVar.join();
                } catch (java.lang.InterruptedException e5) {
                    f6093j.i(e5);
                    z5 = true;
                }
            }
            this.f6095f = null;
        }
        java.net.DatagramSocket datagramSocket = this.f6094e;
        if (datagramSocket != null && !datagramSocket.isClosed()) {
            datagramSocket.close();
        }
        this.f6094e = null;
        if (kVar != null && this.f6097h <= 0) {
            try {
                kVar.join();
            } catch (java.lang.InterruptedException e6) {
                f6093j.i(e6);
            }
        }
        z4 = z5;
        if (z4) {
            java.lang.Thread.currentThread().interrupt();
        }
    }

    public final synchronized java.net.DatagramSocket l() throws java.net.SocketException {
        java.net.DatagramSocket datagramSocket;
        datagramSocket = this.f6094e;
        if (datagramSocket == null) {
            datagramSocket = new java.net.DatagramSocket(this.f6102d.P());
            datagramSocket.setSoTimeout(this.f6097h);
            this.f6094e = datagramSocket;
        }
        return datagramSocket;
    }

    public int m() {
        return this.f6097h;
    }

    public java.net.DatagramSocket n(java.net.SocketException socketException, java.net.DatagramSocket datagramSocket) throws java.net.SocketException {
        if (datagramSocket != null && !datagramSocket.isClosed()) {
            datagramSocket.close();
        }
        java.net.DatagramSocket datagramSocket2 = new java.net.DatagramSocket(this.f6102d.P(), this.f6102d.I());
        datagramSocket2.setSoTimeout(this.f6097h);
        return datagramSocket2;
    }

    @Override // k4.s
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public void c(r4.s sVar, byte[] bArr, k4.t tVar) throws java.io.IOException {
        java.net.InetSocketAddress inetSocketAddress = new java.net.InetSocketAddress(sVar.I(), sVar.P());
        n4.a aVar = f6093j;
        if (aVar.e()) {
            aVar.f("Sending message to " + sVar + " with length " + bArr.length + ": " + new r4.k(bArr).h0());
        }
        l().send(new java.net.DatagramPacket(bArr, bArr.length, inetSocketAddress));
    }

    public void p(int i5) {
        this.f6097h = i5;
        java.net.DatagramSocket datagramSocket = this.f6094e;
        if (datagramSocket != null) {
            try {
                datagramSocket.setSoTimeout(i5);
            } catch (java.net.SocketException e5) {
                throw new java.lang.RuntimeException(e5);
            }
        }
    }
}
