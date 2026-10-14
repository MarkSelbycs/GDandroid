package s3;

/* JADX INFO: compiled from: Indent.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e extends s3.d {

    /* JADX INFO: compiled from: Indent.kt */
    public static final class a extends m3.l implements l3.l<java.lang.String, java.lang.String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final s3.e.a f6085b = new s3.e.a();

        public a() {
            super(1);
        }

        @Override // l3.l
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final java.lang.String x(java.lang.String str) {
            m3.k.e(str, "line");
            return str;
        }
    }

    /* JADX INFO: compiled from: Indent.kt */
    public static final class b extends m3.l implements l3.l<java.lang.String, java.lang.String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ java.lang.String f6086b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(java.lang.String str) {
            super(1);
            this.f6086b = str;
        }

        @Override // l3.l
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final java.lang.String x(java.lang.String str) {
            m3.k.e(str, "line");
            return this.f6086b + str;
        }
    }

    public static final l3.l<java.lang.String, java.lang.String> b(java.lang.String str) {
        return str.length() == 0 ? s3.e.a.f6085b : new s3.e.b(str);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001b  */
    /* JADX WARN: Code duplicated, block: B:15:? A[RETURN, SYNTHETIC] */
    public static final int c(java.lang.String str) {
        int length = str.length();
        int i5 = 0;
        while (i5 < length) {
            if (!s3.a.c(str.charAt(i5))) {
                if (i5 == -1) {
                    return str.length();
                }
                return i5;
            }
            i5++;
        }
        i5 = -1;
        if (i5 == -1) {
            return str.length();
        }
        return i5;
    }

    public static final java.lang.String d(java.lang.String str, java.lang.String str2) {
        java.lang.String strX;
        m3.k.e(str, "<this>");
        m3.k.e(str2, "newIndent");
        java.util.List<java.lang.String> listH = s3.m.H(str);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (java.lang.Object obj : listH) {
            if (!s3.l.i((java.lang.String) obj)) {
                arrayList.add(obj);
            }
        }
        java.util.ArrayList arrayList2 = new java.util.ArrayList(b3.p.l(arrayList, 10));
        java.util.Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(java.lang.Integer.valueOf(c((java.lang.String) it.next())));
        }
        java.lang.Integer num = (java.lang.Integer) b3.w.u(arrayList2);
        int i5 = 0;
        int iIntValue = num != null ? num.intValue() : 0;
        int length = str.length() + (str2.length() * listH.size());
        l3.l<java.lang.String, java.lang.String> lVarB = b(str2);
        int iF = b3.o.f(listH);
        java.util.ArrayList arrayList3 = new java.util.ArrayList();
        for (java.lang.Object obj2 : listH) {
            int i6 = i5 + 1;
            if (i5 < 0) {
                b3.o.k();
            }
            java.lang.String str3 = (java.lang.String) obj2;
            if ((i5 == 0 || i5 == iF) && s3.l.i(str3)) {
                str3 = null;
            } else {
                java.lang.String strA0 = s3.o.a0(str3, iIntValue);
                if (strA0 != null && (strX = lVarB.x(strA0)) != null) {
                    str3 = strX;
                }
            }
            if (str3 != null) {
                arrayList3.add(str3);
            }
            i5 = i6;
        }
        java.lang.String string = ((java.lang.StringBuilder) b3.w.q(arrayList3, new java.lang.StringBuilder(length), (124 & 2) != 0 ? ", " : "\n", (124 & 4) != 0 ? "" : null, (124 & 8) == 0 ? null : "", (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : null)).toString();
        m3.k.d(string, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return string;
    }

    public static final java.lang.String e(java.lang.String str) {
        m3.k.e(str, "<this>");
        return d(str, "");
    }
}
