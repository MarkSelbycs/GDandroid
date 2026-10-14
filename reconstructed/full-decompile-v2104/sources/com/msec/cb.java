package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class cb implements c4.s {

    /* JADX INFO: renamed from: com.msec.cb$1, reason: invalid class name */
    public class AnonymousClass1 extends c4.z {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ c4.z f3794a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ com.msec.i f3795b;

        public AnonymousClass1(c4.z zVar, com.msec.i iVar) {
            this.f3794a = zVar;
            this.f3795b = iVar;
        }

        @Override // c4.z
        public long a() throws java.io.IOException {
            long jA = this.f3794a.a();
            if (jA == -1) {
                return -1L;
            }
            long j5 = jA / 8192;
            if (jA % 8192 != 0) {
                j5++;
            }
            return jA + (j5 * 46);
        }

        @Override // c4.z
        public c4.t b() {
            return this.f3794a.b();
        }

        @Override // c4.z
        public void writeTo(okio.BufferedSink bufferedSink) throws java.io.IOException {
            com.msec.vvv.a(1717, new java.lang.Object[]{this, bufferedSink});
        }
    }

    public static java.lang.Object $aa(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        return ((com.msec.cb) obj).new AnonymousClass1((c4.z) obj2, (com.msec.i) obj3);
    }

    public static java.lang.Object $ab(java.lang.Object obj, java.lang.Object obj2, final long j5, java.lang.Object obj3) {
        final c4.t tVar = (c4.t) obj2;
        final java.io.InputStream inputStream = (java.io.InputStream) obj3;
        return new c4.b0() { // from class: com.msec.cb.2
            @Override // c4.b0
            public long h() {
                long j6 = j5;
                if (j6 == -1) {
                    return -1L;
                }
                long j7 = 8238;
                long j8 = j6 / j7;
                if (j6 % j7 != 0) {
                    j8++;
                }
                return j6 - (j8 * 46);
            }

            @Override // c4.b0
            public c4.t i() {
                return tVar;
            }

            @Override // c4.b0
            public okio.BufferedSource n() {
                return okio.Okio.buffer(okio.Okio.source(inputStream));
            }
        };
    }

    @Override // c4.s
    public c4.a0 a(c4.s.a aVar) throws java.io.IOException {
        return (c4.a0) com.msec.vvv.a(1986, new java.lang.Object[]{this, aVar});
    }
}
