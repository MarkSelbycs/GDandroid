package k3;

/* JADX INFO: compiled from: JvmClassMapping.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a {
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final <T> java.lang.Class<T> a(q3.b<T> bVar) {
        m3.k.e(bVar, "<this>");
        java.lang.Class<T> cls = (java.lang.Class<T>) ((m3.d) bVar).b();
        if (!cls.isPrimitive()) {
            m3.k.c(cls, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-javaObjectType>>");
            return cls;
        }
        java.lang.String name = cls.getName();
        switch (name.hashCode()) {
            case -1325958191:
                if (name.equals("double")) {
                    cls = (java.lang.Class<T>) java.lang.Double.class;
                }
                break;
            case 104431:
                if (name.equals("int")) {
                    cls = (java.lang.Class<T>) java.lang.Integer.class;
                }
                break;
            case 3039496:
                if (name.equals("byte")) {
                    cls = (java.lang.Class<T>) java.lang.Byte.class;
                }
                break;
            case 3052374:
                if (name.equals("char")) {
                    cls = (java.lang.Class<T>) java.lang.Character.class;
                }
                break;
            case 3327612:
                if (name.equals("long")) {
                    cls = (java.lang.Class<T>) java.lang.Long.class;
                }
                break;
            case 3625364:
                if (name.equals("void")) {
                    cls = (java.lang.Class<T>) java.lang.Void.class;
                }
                break;
            case 64711720:
                if (name.equals("boolean")) {
                    cls = (java.lang.Class<T>) java.lang.Boolean.class;
                }
                break;
            case 97526364:
                if (name.equals("float")) {
                    cls = (java.lang.Class<T>) java.lang.Float.class;
                }
                break;
            case 109413500:
                if (name.equals("short")) {
                    cls = (java.lang.Class<T>) java.lang.Short.class;
                }
                break;
        }
        m3.k.c(cls, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-javaObjectType>>");
        return cls;
    }
}
