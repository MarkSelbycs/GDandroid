package s3;

/* JADX INFO: compiled from: Appendable.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d {
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> void a(java.lang.Appendable appendable, T t5, l3.l<? super T, ? extends java.lang.CharSequence> lVar) {
        m3.k.e(appendable, "<this>");
        if (lVar != null) {
            appendable.append(lVar.x(t5));
            return;
        }
        if (t5 == 0 ? true : t5 instanceof java.lang.CharSequence) {
            appendable.append((java.lang.CharSequence) t5);
        } else if (t5 instanceof java.lang.Character) {
            appendable.append(((java.lang.Character) t5).charValue());
        } else {
            appendable.append(java.lang.String.valueOf(t5));
        }
    }
}
