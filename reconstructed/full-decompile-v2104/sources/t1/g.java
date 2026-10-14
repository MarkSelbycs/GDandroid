package t1;

/* JADX INFO: compiled from: ValidateObjectInputStream.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g extends java.io.ObjectInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.Set<java.lang.String> f6163a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public java.util.Set<java.lang.String> f6164b;

    public g(java.io.InputStream inputStream, java.lang.Class<?>... clsArr) throws java.io.IOException {
        super(inputStream);
        c(clsArr);
    }

    public void c(java.lang.Class<?>... clsArr) {
        if (this.f6163a == null) {
            this.f6163a = new java.util.HashSet();
        }
        for (java.lang.Class<?> cls : clsArr) {
            this.f6163a.add(cls.getName());
        }
    }

    public final void e(java.lang.String str) throws java.io.InvalidClassException {
        if (l1.c.h(this.f6164b) && this.f6164b.contains(str)) {
            throw new java.io.InvalidClassException("Unauthorized deserialization attempt by black list", str);
        }
        if (!l1.c.g(this.f6163a) && !str.startsWith("java.") && !this.f6163a.contains(str)) {
            throw new java.io.InvalidClassException("Unauthorized deserialization attempt", str);
        }
    }

    @Override // java.io.ObjectInputStream
    public java.lang.Class<?> resolveClass(java.io.ObjectStreamClass objectStreamClass) throws java.io.IOException, java.lang.ClassNotFoundException {
        e(objectStreamClass.getName());
        return super.resolveClass(objectStreamClass);
    }
}
