package b2;

/* JADX INFO: compiled from: StrFormatter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class f {
    public static java.lang.String a(java.lang.String str, java.lang.Object... objArr) {
        return b(str, "{}", objArr);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x006e  */
    public static java.lang.String b(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        int i5;
        if (b2.c.q(str) || b2.c.q(str2) || e2.c.u(objArr)) {
            return str;
        }
        int length = str.length();
        int length2 = str2.length();
        java.lang.StringBuilder sb = new java.lang.StringBuilder(length + 50);
        int i6 = 0;
        int i7 = 0;
        while (i6 < objArr.length) {
            int iIndexOf = str.indexOf(str2, i7);
            if (iIndexOf == -1) {
                if (i7 == 0) {
                    return str;
                }
                sb.append((java.lang.CharSequence) str, i7, length);
                return sb.toString();
            }
            if (iIndexOf > 0) {
                int i8 = iIndexOf - 1;
                if (str.charAt(i8) != '\\') {
                    sb.append((java.lang.CharSequence) str, i7, iIndexOf);
                    sb.append(e2.b0.l0(objArr[i6]));
                } else if (iIndexOf <= 1 || str.charAt(iIndexOf - 2) != '\\') {
                    i6--;
                    sb.append((java.lang.CharSequence) str, i7, i8);
                    sb.append(str2.charAt(0));
                    i5 = iIndexOf + 1;
                } else {
                    sb.append((java.lang.CharSequence) str, i7, i8);
                    sb.append(e2.b0.l0(objArr[i6]));
                }
                i5 = iIndexOf + length2;
            } else {
                sb.append((java.lang.CharSequence) str, i7, iIndexOf);
                sb.append(e2.b0.l0(objArr[i6]));
                i5 = iIndexOf + length2;
            }
            i7 = i5;
            i6++;
        }
        sb.append((java.lang.CharSequence) str, i7, length);
        return sb.toString();
    }
}
