package h4;

/* JADX INFO: compiled from: StatusLine.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c4.w f4630a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4631b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.String f4632c;

    public m(c4.w wVar, int i5, java.lang.String str) {
        this.f4630a = wVar;
        this.f4631b = i5;
        this.f4632c = str;
    }

    public static h4.m a(java.lang.String str) throws java.io.IOException {
        c4.w wVar;
        java.lang.String strSubstring;
        int i5 = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new java.net.ProtocolException("Unexpected status line: " + str);
            }
            int iCharAt = str.charAt(7) - '0';
            if (iCharAt == 0) {
                wVar = c4.w.HTTP_1_0;
            } else {
                if (iCharAt != 1) {
                    throw new java.net.ProtocolException("Unexpected status line: " + str);
                }
                wVar = c4.w.HTTP_1_1;
            }
        } else {
            if (!str.startsWith("ICY ")) {
                throw new java.net.ProtocolException("Unexpected status line: " + str);
            }
            wVar = c4.w.HTTP_1_0;
            i5 = 4;
        }
        int i6 = i5 + 3;
        if (str.length() < i6) {
            throw new java.net.ProtocolException("Unexpected status line: " + str);
        }
        try {
            int i7 = java.lang.Integer.parseInt(str.substring(i5, i6));
            if (str.length() <= i6) {
                strSubstring = "";
            } else {
                if (str.charAt(i6) != ' ') {
                    throw new java.net.ProtocolException("Unexpected status line: " + str);
                }
                strSubstring = str.substring(i5 + 4);
            }
            return new h4.m(wVar, i7, strSubstring);
        } catch (java.lang.NumberFormatException unused) {
            throw new java.net.ProtocolException("Unexpected status line: " + str);
        }
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(this.f4630a == c4.w.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.f4631b);
        if (this.f4632c != null) {
            sb.append(' ');
            sb.append(this.f4632c);
        }
        return sb.toString();
    }
}
