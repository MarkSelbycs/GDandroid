package b2;

/* JADX INFO: compiled from: ASCIIStrCache.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.String[] f2932a = new java.lang.String[com.alibaba.fastjson.asm.Opcodes.IOR];

    static {
        for (char c5 = 0; c5 < 128; c5 = (char) (c5 + 1)) {
            f2932a[c5] = java.lang.String.valueOf(c5);
        }
    }

    public static java.lang.String a(char c5) {
        return c5 < 128 ? f2932a[c5] : java.lang.String.valueOf(c5);
    }
}
