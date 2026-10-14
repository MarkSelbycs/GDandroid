package f3;

/* JADX INFO: compiled from: DebugMetadata.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class g {
    public static final void a(int i5, int i6) {
        if (i6 <= i5) {
            return;
        }
        throw new java.lang.IllegalStateException(("Debug metadata version mismatch. Expected: " + i5 + ", got " + i6 + ". Please update the Kotlin standard library.").toString());
    }

    public static final f3.f b(f3.a aVar) {
        return (f3.f) aVar.getClass().getAnnotation(f3.f.class);
    }

    public static final int c(f3.a aVar) {
        try {
            java.lang.reflect.Field declaredField = aVar.getClass().getDeclaredField("label");
            declaredField.setAccessible(true);
            java.lang.Object obj = declaredField.get(aVar);
            java.lang.Integer num = obj instanceof java.lang.Integer ? (java.lang.Integer) obj : null;
            return (num != null ? num.intValue() : 0) - 1;
        } catch (java.lang.Exception unused) {
            return -1;
        }
    }

    public static final java.lang.StackTraceElement d(f3.a aVar) {
        java.lang.String strC;
        m3.k.e(aVar, "<this>");
        f3.f fVarB = b(aVar);
        if (fVarB == null) {
            return null;
        }
        a(1, fVarB.v());
        int iC = c(aVar);
        int i5 = iC < 0 ? -1 : fVarB.l()[iC];
        java.lang.String strB = f3.i.f4234a.b(aVar);
        if (strB == null) {
            strC = fVarB.c();
        } else {
            strC = strB + '/' + fVarB.c();
        }
        return new java.lang.StackTraceElement(strC, fVarB.m(), fVarB.f(), i5);
    }
}
