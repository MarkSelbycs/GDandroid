package o1;

/* JADX INFO: compiled from: CharacterConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class i extends n1.a<java.lang.Character> {
    @Override // n1.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public java.lang.Character c(java.lang.Object obj) {
        if (obj instanceof java.lang.Boolean) {
            return e2.d.f(((java.lang.Boolean) obj).booleanValue());
        }
        java.lang.String strE = e(obj);
        if (b2.c.s(strE)) {
            return java.lang.Character.valueOf(strE.charAt(0));
        }
        return null;
    }
}
