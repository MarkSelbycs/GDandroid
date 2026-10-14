package t2;

/* JADX INFO: compiled from: Expose.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@java.lang.annotation.Target({java.lang.annotation.ElementType.FIELD})
@java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.RUNTIME)
public @interface a {
    boolean deserialize() default true;

    boolean serialize() default true;
}
