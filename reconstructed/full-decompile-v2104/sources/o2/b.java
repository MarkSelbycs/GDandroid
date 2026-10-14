package o2;

/* JADX INFO: compiled from: Slf4jLogFactory.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b extends i2.d {

    /* JADX INFO: compiled from: Slf4jLogFactory.java */
    public class a extends java.io.OutputStream {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.lang.StringBuilder f5324a;

        public a(java.lang.StringBuilder sb) {
            this.f5324a = sb;
        }

        @Override // java.io.OutputStream
        public void write(int i5) {
            this.f5324a.append((char) i5);
        }
    }

    public b() {
        this(true);
    }

    @Override // i2.d
    /* JADX INFO: renamed from: c */
    public i2.b e(java.lang.Class<?> cls) {
        return new o2.a(cls);
    }

    public b(boolean z4) {
        super("Slf4j");
        b(org.slf4j.LoggerFactory.class);
        if (z4) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            java.io.PrintStream printStream = java.lang.System.err;
            try {
                java.lang.System.setErr(new java.io.PrintStream((java.io.OutputStream) new o2.b.a(sb), true, "US-ASCII"));
                try {
                    if (org.slf4j.LoggerFactory.getILoggerFactory() instanceof org.slf4j.helpers.NOPLoggerFactory) {
                        throw new java.lang.NoClassDefFoundError(sb.toString());
                    }
                    printStream.print(sb);
                    printStream.flush();
                    java.lang.System.setErr(printStream);
                } catch (java.lang.Throwable th) {
                    java.lang.System.setErr(printStream);
                    throw th;
                }
            } catch (java.io.UnsupportedEncodingException e5) {
                throw new java.lang.Error(e5);
            }
        }
    }
}
