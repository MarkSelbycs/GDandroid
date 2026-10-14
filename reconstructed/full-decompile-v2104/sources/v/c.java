package v;

/* JADX INFO: compiled from: LogWriter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@java.lang.Deprecated
public class c extends java.io.Writer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f6379a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public java.lang.StringBuilder f6380b = new java.lang.StringBuilder(com.alibaba.fastjson.asm.Opcodes.IOR);

    public c(java.lang.String str) {
        this.f6379a = str;
    }

    public final void c() {
        if (this.f6380b.length() > 0) {
            android.util.Log.d(this.f6379a, this.f6380b.toString());
            java.lang.StringBuilder sb = this.f6380b;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        c();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        c();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i5, int i6) {
        for (int i7 = 0; i7 < i6; i7++) {
            char c5 = cArr[i5 + i7];
            if (c5 == '\n') {
                c();
            } else {
                this.f6380b.append(c5);
            }
        }
    }
}
