package g1;

/* JADX INFO: compiled from: AnnotationUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.util.Set<java.lang.Class<? extends java.lang.annotation.Annotation>> f4329a = l1.c.k(java.lang.annotation.Target.class, java.lang.annotation.Retention.class, java.lang.annotation.Inherited.class, java.lang.annotation.Documented.class, java.lang.SuppressWarnings.class, java.lang.Override.class, java.lang.Deprecated.class);

    public static <A extends java.lang.annotation.Annotation> A a(java.lang.reflect.AnnotatedElement annotatedElement, java.lang.Class<A> cls) {
        if (annotatedElement == null) {
            return null;
        }
        return (A) e(annotatedElement).getAnnotation(cls);
    }

    public static boolean b(java.lang.reflect.AnnotatedElement annotatedElement, java.lang.Class<? extends java.lang.annotation.Annotation> cls) {
        return a(annotatedElement, cls) != null;
    }

    public static boolean c(java.lang.Class<? extends java.lang.annotation.Annotation> cls) {
        return f4329a.contains(cls);
    }

    public static boolean d(java.lang.Class<? extends java.lang.annotation.Annotation> cls) {
        return !c(cls);
    }

    public static g1.c e(java.lang.reflect.AnnotatedElement annotatedElement) {
        return annotatedElement instanceof g1.c ? (g1.c) annotatedElement : new g1.c(annotatedElement);
    }
}
