package o1;

/* JADX INFO: compiled from: StackTraceElementConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class k0 extends n1.a<java.lang.StackTraceElement> {
    @Override // n1.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public java.lang.StackTraceElement c(java.lang.Object obj) {
        if (!(obj instanceof java.util.Map)) {
            return null;
        }
        java.util.Map map = (java.util.Map) obj;
        return new java.lang.StackTraceElement(a2.i.h(map, "className"), a2.i.h(map, "methodName"), a2.i.h(map, "fileName"), ((java.lang.Integer) e2.p.c(a2.i.g(map, "lineNumber"), 0)).intValue());
    }
}
