package g1;

/* JADX INFO: compiled from: CombinationAnnotationElement.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c implements java.lang.reflect.AnnotatedElement, java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.Map<java.lang.Class<? extends java.lang.annotation.Annotation>, java.lang.annotation.Annotation> f4330a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public java.util.Map<java.lang.Class<? extends java.lang.annotation.Annotation>, java.lang.annotation.Annotation> f4331b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.util.function.Predicate<java.lang.annotation.Annotation> f4332c;

    public c(java.lang.reflect.AnnotatedElement annotatedElement) {
        this(annotatedElement, null);
    }

    public final void b(java.lang.reflect.AnnotatedElement annotatedElement) {
        java.lang.annotation.Annotation[] declaredAnnotations = annotatedElement.getDeclaredAnnotations();
        this.f4331b = new a2.v();
        e(declaredAnnotations);
        java.lang.annotation.Annotation[] annotations = annotatedElement.getAnnotations();
        if (java.util.Arrays.equals(declaredAnnotations, annotations)) {
            this.f4330a = this.f4331b;
        } else {
            this.f4330a = new a2.v();
            c(annotations);
        }
    }

    public final void c(java.lang.annotation.Annotation[] annotationArr) {
        for (java.lang.annotation.Annotation annotation : annotationArr) {
            java.lang.Class<? extends java.lang.annotation.Annotation> clsAnnotationType = annotation.annotationType();
            if (g1.b.d(clsAnnotationType) && !this.f4331b.containsKey(clsAnnotationType)) {
                if (f(annotation)) {
                    this.f4330a.put(clsAnnotationType, annotation);
                }
                c(clsAnnotationType.getAnnotations());
            }
        }
    }

    public final void e(java.lang.annotation.Annotation[] annotationArr) {
        for (java.lang.annotation.Annotation annotation : annotationArr) {
            java.lang.Class<? extends java.lang.annotation.Annotation> clsAnnotationType = annotation.annotationType();
            if (g1.b.d(clsAnnotationType) && !this.f4331b.containsKey(clsAnnotationType)) {
                if (f(annotation)) {
                    this.f4331b.put(clsAnnotationType, annotation);
                }
                e(clsAnnotationType.getDeclaredAnnotations());
            }
        }
    }

    public final boolean f(java.lang.annotation.Annotation annotation) {
        java.util.function.Predicate<java.lang.annotation.Annotation> predicate = this.f4332c;
        return predicate == null || predicate.test(annotation);
    }

    @Override // java.lang.reflect.AnnotatedElement
    public <T extends java.lang.annotation.Annotation> T getAnnotation(java.lang.Class<T> cls) {
        T t5 = (T) this.f4330a.get(cls);
        if (t5 == null) {
            return null;
        }
        return t5;
    }

    @Override // java.lang.reflect.AnnotatedElement
    public java.lang.annotation.Annotation[] getAnnotations() {
        return (java.lang.annotation.Annotation[]) this.f4330a.values().toArray(new java.lang.annotation.Annotation[0]);
    }

    @Override // java.lang.reflect.AnnotatedElement
    public java.lang.annotation.Annotation[] getDeclaredAnnotations() {
        return (java.lang.annotation.Annotation[]) this.f4331b.values().toArray(new java.lang.annotation.Annotation[0]);
    }

    @Override // java.lang.reflect.AnnotatedElement
    public boolean isAnnotationPresent(java.lang.Class<? extends java.lang.annotation.Annotation> cls) {
        return this.f4330a.containsKey(cls);
    }

    public c(java.lang.reflect.AnnotatedElement annotatedElement, java.util.function.Predicate<java.lang.annotation.Annotation> predicate) {
        this.f4332c = predicate;
        b(annotatedElement);
    }
}
