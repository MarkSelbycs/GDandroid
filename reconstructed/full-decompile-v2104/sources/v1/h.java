package v1;

/* JADX INFO: compiled from: EnumItem.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface h<E extends v1.h<E>> extends java.io.Serializable {
    default E A(java.lang.String str) {
        if (str == null) {
            return null;
        }
        for (v1.h hVar : Q()) {
            E e5 = (E) hVar;
            if (str.equalsIgnoreCase(e5.name())) {
                return e5;
            }
        }
        return null;
    }

    default E[] Q() {
        return (E[]) ((v1.h[]) getClass().getEnumConstants());
    }

    java.lang.String name();

    int p();

    default E v(java.lang.Integer num) {
        if (num == null) {
            return null;
        }
        for (v1.h hVar : Q()) {
            E e5 = (E) hVar;
            if (e5.p() == num.intValue()) {
                return e5;
            }
        }
        return null;
    }
}
