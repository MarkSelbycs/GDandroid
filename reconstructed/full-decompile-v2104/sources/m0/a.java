package m0;

/* JADX INFO: compiled from: VersionedParcel.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j.a<java.lang.String, java.lang.reflect.Method> f5158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final j.a<java.lang.String, java.lang.reflect.Method> f5159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final j.a<java.lang.String, java.lang.Class> f5160c;

    public a(j.a<java.lang.String, java.lang.reflect.Method> aVar, j.a<java.lang.String, java.lang.reflect.Method> aVar2, j.a<java.lang.String, java.lang.Class> aVar3) {
        this.f5158a = aVar;
        this.f5159b = aVar2;
        this.f5160c = aVar3;
    }

    public abstract void A(byte[] bArr);

    public void B(byte[] bArr, int i5) {
        w(i5);
        A(bArr);
    }

    public abstract void C(java.lang.CharSequence charSequence);

    public void D(java.lang.CharSequence charSequence, int i5) {
        w(i5);
        C(charSequence);
    }

    public abstract void E(int i5);

    public void F(int i5, int i6) {
        w(i6);
        E(i5);
    }

    public abstract void G(android.os.Parcelable parcelable);

    public void H(android.os.Parcelable parcelable, int i5) {
        w(i5);
        G(parcelable);
    }

    public abstract void I(java.lang.String str);

    public void J(java.lang.String str, int i5) {
        w(i5);
        I(str);
    }

    public <T extends m0.c> void K(T t5, m0.a aVar) {
        try {
            e(t5.getClass()).invoke(null, t5, aVar);
        } catch (java.lang.ClassNotFoundException e5) {
            throw new java.lang.RuntimeException("VersionedParcel encountered ClassNotFoundException", e5);
        } catch (java.lang.IllegalAccessException e6) {
            throw new java.lang.RuntimeException("VersionedParcel encountered IllegalAccessException", e6);
        } catch (java.lang.NoSuchMethodException e7) {
            throw new java.lang.RuntimeException("VersionedParcel encountered NoSuchMethodException", e7);
        } catch (java.lang.reflect.InvocationTargetException e8) {
            if (!(e8.getCause() instanceof java.lang.RuntimeException)) {
                throw new java.lang.RuntimeException("VersionedParcel encountered InvocationTargetException", e8);
            }
            throw ((java.lang.RuntimeException) e8.getCause());
        }
    }

    public void L(m0.c cVar) {
        if (cVar == null) {
            I(null);
            return;
        }
        N(cVar);
        m0.a aVarB = b();
        K(cVar, aVarB);
        aVarB.a();
    }

    public void M(m0.c cVar, int i5) {
        w(i5);
        L(cVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void N(m0.c cVar) {
        try {
            I(c(cVar.getClass()).getName());
        } catch (java.lang.ClassNotFoundException e5) {
            throw new java.lang.RuntimeException(cVar.getClass().getSimpleName() + " does not have a Parcelizer", e5);
        }
    }

    public abstract void a();

    public abstract m0.a b();

    public final java.lang.Class c(java.lang.Class<? extends m0.c> cls) throws java.lang.ClassNotFoundException {
        java.lang.Class cls2 = this.f5160c.get(cls.getName());
        if (cls2 != null) {
            return cls2;
        }
        java.lang.Class<?> cls3 = java.lang.Class.forName(java.lang.String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
        this.f5160c.put(cls.getName(), cls3);
        return cls3;
    }

    public final java.lang.reflect.Method d(java.lang.String str) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.ClassNotFoundException {
        java.lang.reflect.Method method = this.f5158a.get(str);
        if (method != null) {
            return method;
        }
        java.lang.System.currentTimeMillis();
        java.lang.reflect.Method declaredMethod = java.lang.Class.forName(str, true, m0.a.class.getClassLoader()).getDeclaredMethod("read", m0.a.class);
        this.f5158a.put(str, declaredMethod);
        return declaredMethod;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final java.lang.reflect.Method e(java.lang.Class cls) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.ClassNotFoundException {
        java.lang.reflect.Method method = this.f5159b.get(cls.getName());
        if (method != null) {
            return method;
        }
        java.lang.Class clsC = c(cls);
        java.lang.System.currentTimeMillis();
        java.lang.reflect.Method declaredMethod = clsC.getDeclaredMethod("write", cls, m0.a.class);
        this.f5159b.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    public boolean f() {
        return false;
    }

    public abstract boolean g();

    public boolean h(boolean z4, int i5) {
        return !m(i5) ? z4 : g();
    }

    public abstract byte[] i();

    public byte[] j(byte[] bArr, int i5) {
        return !m(i5) ? bArr : i();
    }

    public abstract java.lang.CharSequence k();

    public java.lang.CharSequence l(java.lang.CharSequence charSequence, int i5) {
        return !m(i5) ? charSequence : k();
    }

    public abstract boolean m(int i5);

    public <T extends m0.c> T n(java.lang.String str, m0.a aVar) {
        try {
            return (T) d(str).invoke(null, aVar);
        } catch (java.lang.ClassNotFoundException e5) {
            throw new java.lang.RuntimeException("VersionedParcel encountered ClassNotFoundException", e5);
        } catch (java.lang.IllegalAccessException e6) {
            throw new java.lang.RuntimeException("VersionedParcel encountered IllegalAccessException", e6);
        } catch (java.lang.NoSuchMethodException e7) {
            throw new java.lang.RuntimeException("VersionedParcel encountered NoSuchMethodException", e7);
        } catch (java.lang.reflect.InvocationTargetException e8) {
            if (e8.getCause() instanceof java.lang.RuntimeException) {
                throw ((java.lang.RuntimeException) e8.getCause());
            }
            throw new java.lang.RuntimeException("VersionedParcel encountered InvocationTargetException", e8);
        }
    }

    public abstract int o();

    public int p(int i5, int i6) {
        return !m(i6) ? i5 : o();
    }

    public abstract <T extends android.os.Parcelable> T q();

    public <T extends android.os.Parcelable> T r(T t5, int i5) {
        return !m(i5) ? t5 : (T) q();
    }

    public abstract java.lang.String s();

    public java.lang.String t(java.lang.String str, int i5) {
        return !m(i5) ? str : s();
    }

    public <T extends m0.c> T u() {
        java.lang.String strS = s();
        if (strS == null) {
            return null;
        }
        return (T) n(strS, b());
    }

    public <T extends m0.c> T v(T t5, int i5) {
        return !m(i5) ? t5 : (T) u();
    }

    public abstract void w(int i5);

    public void x(boolean z4, boolean z5) {
    }

    public abstract void y(boolean z4);

    public void z(boolean z4, int i5) {
        w(i5);
        y(z4);
    }
}
