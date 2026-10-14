package e2;

/* JADX INFO: compiled from: EnumUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class l {
    public static <E extends java.lang.Enum<E>> E a(java.lang.Class<E> cls, int i5) {
        E[] enumConstants = cls.getEnumConstants();
        if (i5 < 0 || i5 >= enumConstants.length) {
            return null;
        }
        return enumConstants[i5];
    }
}
