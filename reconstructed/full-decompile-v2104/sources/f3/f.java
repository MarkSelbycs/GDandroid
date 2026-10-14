package f3;

/* JADX WARN: Method from annotation default annotation not found: i */
/* JADX WARN: Method from annotation default annotation not found: n */
/* JADX WARN: Method from annotation default annotation not found: s */
/* JADX INFO: compiled from: DebugMetadata.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@java.lang.annotation.Target({java.lang.annotation.ElementType.TYPE})
@java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.RUNTIME)
public @interface f {
    java.lang.String c() default "";

    java.lang.String f() default "";

    int[] l() default {};

    java.lang.String m() default "";

    int v() default 1;
}
