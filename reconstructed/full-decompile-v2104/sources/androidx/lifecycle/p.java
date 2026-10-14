package androidx.lifecycle;

/* JADX INFO: compiled from: ViewModelProvider.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.lifecycle.p.a f1798a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.lifecycle.q f1799b;

    /* JADX INFO: compiled from: ViewModelProvider.java */
    public interface a {
        <T extends androidx.lifecycle.o> T a(java.lang.Class<T> cls);
    }

    public p(androidx.lifecycle.q qVar, androidx.lifecycle.p.a aVar) {
        this.f1798a = aVar;
        this.f1799b = qVar;
    }

    public <T extends androidx.lifecycle.o> T a(java.lang.Class<T> cls) {
        java.lang.String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            throw new java.lang.IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        return (T) b("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public <T extends androidx.lifecycle.o> T b(java.lang.String str, java.lang.Class<T> cls) {
        T t5 = (T) this.f1799b.b(str);
        if (cls.isInstance(t5)) {
            return t5;
        }
        T t6 = (T) this.f1798a.a(cls);
        this.f1799b.c(str, t6);
        return t6;
    }
}
