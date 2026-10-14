package s2;

/* JADX INFO: compiled from: JsonElement.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class i {
    public int a() {
        throw new java.lang.UnsupportedOperationException(getClass().getSimpleName());
    }

    public s2.g b() {
        if (f()) {
            return (s2.g) this;
        }
        throw new java.lang.IllegalStateException("This is not a JSON Array.");
    }

    public s2.l c() {
        if (h()) {
            return (s2.l) this;
        }
        throw new java.lang.IllegalStateException("Not a JSON Object: " + this);
    }

    public s2.o d() {
        if (i()) {
            return (s2.o) this;
        }
        throw new java.lang.IllegalStateException("This is not a JSON Primitive.");
    }

    public java.lang.String e() {
        throw new java.lang.UnsupportedOperationException(getClass().getSimpleName());
    }

    public boolean f() {
        return this instanceof s2.g;
    }

    public boolean g() {
        return this instanceof s2.k;
    }

    public boolean h() {
        return this instanceof s2.l;
    }

    public boolean i() {
        return this instanceof s2.o;
    }

    public java.lang.String toString() {
        try {
            java.io.StringWriter stringWriter = new java.io.StringWriter();
            y2.c cVar = new y2.c(stringWriter);
            cVar.K(true);
            u2.j.b(this, cVar);
            return stringWriter.toString();
        } catch (java.io.IOException e5) {
            throw new java.lang.AssertionError(e5);
        }
    }
}
