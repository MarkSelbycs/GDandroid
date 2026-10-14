package f2;

/* JADX INFO: compiled from: InternalJSONUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a {
    public static java.util.Map<java.lang.String, java.lang.Object> a(int i5, f2.f fVar) {
        java.util.Map<java.lang.String, java.lang.Object> linkedHashMap;
        if (fVar == null) {
            fVar = f2.f.b();
        }
        java.util.Comparator<java.lang.String> comparatorE = fVar.e();
        if (fVar.h()) {
            if (comparatorE != null) {
                return new a2.d(comparatorE);
            }
            linkedHashMap = new a2.a<>(i5);
        } else {
            if (comparatorE != null) {
                return new java.util.TreeMap(comparatorE);
            }
            linkedHashMap = new java.util.LinkedHashMap<>(i5);
        }
        return linkedHashMap;
    }

    public static boolean b(java.lang.Object obj) {
        return ((obj instanceof java.lang.CharSequence) || (obj instanceof f2.o) || (obj instanceof java.util.Map)) ? false : true;
    }

    public static f2.l c(f2.l lVar, java.lang.Object obj, java.lang.Object obj2, v1.i<y1.d<java.lang.String, java.lang.Object>> iVar) {
        java.lang.String[] strArrD = b2.c.D(n1.c.k(obj), '.');
        int length = strArrD.length - 1;
        f2.l lVar2 = lVar;
        for (int i5 = 0; i5 < length; i5++) {
            java.lang.String str = strArrD[i5];
            f2.l lVarF = lVar2.f(str);
            if (lVarF == null) {
                lVarF = new f2.l(lVar2.h());
                lVar2.T(str, lVarF, iVar, lVar2.h().f());
            }
            lVar2 = lVarF;
        }
        lVar2.T(strArrD[length], obj2, iVar, lVar2.h().f());
        return lVar;
    }

    public static java.lang.Object d(java.lang.String str) {
        if (b2.c.r(str) || "null".equalsIgnoreCase(str)) {
            return f2.j.f4206a;
        }
        if ("true".equalsIgnoreCase(str)) {
            return java.lang.Boolean.TRUE;
        }
        if ("false".equalsIgnoreCase(str)) {
            return java.lang.Boolean.FALSE;
        }
        char cCharAt = str.charAt(0);
        if ((cCharAt < '0' || cCharAt > '9') && cCharAt != '-') {
            return str;
        }
        try {
            if (b2.c.d(str, ".", "e")) {
                return new java.math.BigDecimal(str);
            }
            long j5 = java.lang.Long.parseLong(str);
            if (!str.equals(java.lang.Long.toString(j5))) {
                return str;
            }
            int i5 = (int) j5;
            return j5 == ((long) i5) ? java.lang.Integer.valueOf(i5) : java.lang.Long.valueOf(j5);
        } catch (java.lang.Exception unused) {
            return str;
        }
    }

    public static java.lang.Object e(java.lang.Object obj) throws f2.h {
        if (e2.p.j(obj)) {
            return obj;
        }
        throw new f2.h("JSON does not allow non-finite numbers.");
    }

    public static i1.i f(f2.f fVar) {
        return i1.i.e().u(fVar.h()).x(fVar.j()).y(fVar.q()).D(fVar.x());
    }
}
