package o1;

/* JADX INFO: compiled from: LocaleConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class y extends n1.a<java.util.Locale> {
    @Override // n1.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public java.util.Locale c(java.lang.Object obj) {
        try {
            java.lang.String strE = e(obj);
            if (b2.c.r(strE)) {
                return null;
            }
            java.lang.String[] strArrSplit = strE.split("_");
            if (strArrSplit.length == 1) {
                return new java.util.Locale(strArrSplit[0]);
            }
            return strArrSplit.length == 2 ? new java.util.Locale(strArrSplit[0], strArrSplit[1]) : new java.util.Locale(strArrSplit[0], strArrSplit[1], strArrSplit[2]);
        } catch (java.lang.Exception unused) {
            return null;
        }
    }
}
