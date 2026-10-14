package e2;

/* JADX INFO: compiled from: StrUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b0 extends b2.c {
    public static java.lang.StringBuilder c0() {
        return new java.lang.StringBuilder();
    }

    public static java.io.StringWriter d0() {
        return new java.io.StringWriter();
    }

    public static boolean e0(java.lang.Object obj) {
        if (obj == null) {
            return true;
        }
        return (obj instanceof java.lang.CharSequence) && ((java.lang.CharSequence) obj).length() == 0;
    }

    public static java.lang.String f0(java.lang.Object obj, java.nio.charset.Charset charset) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof java.lang.String) {
            return (java.lang.String) obj;
        }
        if (obj instanceof byte[]) {
            return h0((byte[]) obj, charset);
        }
        if (obj instanceof java.lang.Byte[]) {
            return i0((java.lang.Byte[]) obj, charset);
        }
        if (obj instanceof java.nio.ByteBuffer) {
            return g0((java.nio.ByteBuffer) obj, charset);
        }
        return e2.c.s(obj) ? e2.c.C(obj) : obj.toString();
    }

    public static java.lang.String g0(java.nio.ByteBuffer byteBuffer, java.nio.charset.Charset charset) {
        if (charset == null) {
            charset = java.nio.charset.Charset.defaultCharset();
        }
        return charset.decode(byteBuffer).toString();
    }

    public static java.lang.String h0(byte[] bArr, java.nio.charset.Charset charset) {
        if (bArr == null) {
            return null;
        }
        return charset == null ? new java.lang.String(bArr) : new java.lang.String(bArr, charset);
    }

    public static java.lang.String i0(java.lang.Byte[] bArr, java.nio.charset.Charset charset) {
        if (bArr == null) {
            return null;
        }
        byte[] bArr2 = new byte[bArr.length];
        for (int i5 = 0; i5 < bArr.length; i5++) {
            java.lang.Byte b5 = bArr[i5];
            bArr2[i5] = b5 == null ? (byte) -1 : b5.byteValue();
        }
        return h0(bArr2, charset);
    }

    public static java.lang.String j0(java.lang.Object obj) {
        return java.lang.String.valueOf(obj);
    }

    public static java.lang.String k0(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }

    public static java.lang.String l0(java.lang.Object obj) {
        return f0(obj, e2.g.f4074b);
    }
}
