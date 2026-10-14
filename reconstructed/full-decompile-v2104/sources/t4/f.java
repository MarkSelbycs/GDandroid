package t4;

/* JADX INFO: compiled from: SimpleOIDTextFormat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class f implements t4.d {
    public static java.lang.String d(int[] iArr) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(iArr.length * 3);
        for (int i5 = 0; i5 < iArr.length; i5++) {
            if (i5 != 0) {
                sb.append('.');
            }
            sb.append(((long) iArr[i5]) & 4294967295L);
        }
        return sb.toString();
    }

    public static int[] e(java.lang.String str) throws java.text.ParseException {
        java.util.StringTokenizer stringTokenizer = new java.util.StringTokenizer(str, ".", true);
        int[] iArr = new int[stringTokenizer.countTokens()];
        java.lang.StringBuffer stringBuffer = null;
        int iU = 0;
        while (stringTokenizer.hasMoreTokens()) {
            java.lang.String strNextToken = stringTokenizer.nextToken();
            if (stringBuffer == null && strNextToken.startsWith("'")) {
                stringBuffer = new java.lang.StringBuffer();
                strNextToken = strNextToken.substring(1);
            }
            if (stringBuffer != null && strNextToken.endsWith("'")) {
                stringBuffer.append(strNextToken.substring(0, strNextToken.length() - 1));
                r4.j jVarK0 = new r4.k(stringBuffer.toString()).k0(true);
                int[] iArr2 = new int[stringTokenizer.countTokens() + iArr.length + jVarK0.U()];
                java.lang.System.arraycopy(iArr, 0, iArr2, 0, iU);
                java.lang.System.arraycopy(jVarK0.H(), 0, iArr2, iU, jVarK0.U());
                iU += jVarK0.U();
                stringBuffer = null;
                iArr = iArr2;
            } else if (stringBuffer != null) {
                stringBuffer.append(strNextToken);
            } else if (!".".equals(strNextToken)) {
                iArr[iU] = (int) java.lang.Long.parseLong(strNextToken.trim());
                iU++;
            }
        }
        if (iU >= iArr.length) {
            return iArr;
        }
        int[] iArr3 = new int[iU];
        java.lang.System.arraycopy(iArr, 0, iArr3, 0, iU);
        return iArr3;
    }

    @Override // t4.d
    public int[] a(java.lang.String str) throws java.text.ParseException {
        return e(str);
    }

    @Override // t4.d
    public java.lang.String b(int[] iArr) {
        return d(iArr);
    }

    @Override // t4.d
    public java.lang.String c(int[] iArr) {
        return b(iArr);
    }
}
