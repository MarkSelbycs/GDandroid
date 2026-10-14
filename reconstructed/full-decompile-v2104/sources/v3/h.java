package v3;

/* JADX INFO: compiled from: Channel.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class h<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final v3.h.b f6603b = new v3.h.b(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final v3.h.c f6604c = new v3.h.c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Object f6605a;

    /* JADX INFO: compiled from: Channel.kt */
    public static final class a extends v3.h.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.Throwable f6606a;

        public a(java.lang.Throwable th) {
            this.f6606a = th;
        }

        public boolean equals(java.lang.Object obj) {
            return (obj instanceof v3.h.a) && m3.k.a(this.f6606a, ((v3.h.a) obj).f6606a);
        }

        public int hashCode() {
            java.lang.Throwable th = this.f6606a;
            if (th != null) {
                return th.hashCode();
            }
            return 0;
        }

        @Override // v3.h.c
        public java.lang.String toString() {
            return "Closed(" + this.f6606a + ')';
        }
    }

    /* JADX INFO: compiled from: Channel.kt */
    public static final class b {
        public b() {
        }

        public /* synthetic */ b(m3.g gVar) {
            this();
        }

        public final <E> java.lang.Object a(java.lang.Throwable th) {
            return v3.h.c(new v3.h.a(th));
        }

        public final <E> java.lang.Object b() {
            return v3.h.c(v3.h.f6604c);
        }

        public final <E> java.lang.Object c(E e5) {
            return v3.h.c(e5);
        }
    }

    /* JADX INFO: compiled from: Channel.kt */
    public static class c {
        public java.lang.String toString() {
            return "Failed";
        }
    }

    public /* synthetic */ h(java.lang.Object obj) {
        this.f6605a = obj;
    }

    public static final /* synthetic */ v3.h b(java.lang.Object obj) {
        return new v3.h(obj);
    }

    public static <T> java.lang.Object c(java.lang.Object obj) {
        return obj;
    }

    public static boolean d(java.lang.Object obj, java.lang.Object obj2) {
        return (obj2 instanceof v3.h) && m3.k.a(obj, ((v3.h) obj2).k());
    }

    public static final java.lang.Throwable e(java.lang.Object obj) {
        v3.h.a aVar = obj instanceof v3.h.a ? (v3.h.a) obj : null;
        if (aVar != null) {
            return aVar.f6606a;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final T f(java.lang.Object obj) {
        if (obj instanceof v3.h.c) {
            return null;
        }
        return obj;
    }

    public static int g(java.lang.Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static final boolean h(java.lang.Object obj) {
        return obj instanceof v3.h.a;
    }

    public static final boolean i(java.lang.Object obj) {
        return !(obj instanceof v3.h.c);
    }

    public static java.lang.String j(java.lang.Object obj) {
        if (obj instanceof v3.h.a) {
            return ((v3.h.a) obj).toString();
        }
        return "Value(" + obj + ')';
    }

    public boolean equals(java.lang.Object obj) {
        return d(this.f6605a, obj);
    }

    public int hashCode() {
        return g(this.f6605a);
    }

    public final /* synthetic */ java.lang.Object k() {
        return this.f6605a;
    }

    public java.lang.String toString() {
        return j(this.f6605a);
    }
}
