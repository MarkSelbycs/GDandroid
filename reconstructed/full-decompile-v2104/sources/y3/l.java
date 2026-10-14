package y3;

/* JADX INFO: compiled from: FastServiceLoader.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y3.l f6909a = new y3.l();

    public final <S> S a(java.lang.String str, java.lang.ClassLoader classLoader, java.lang.Class<S> cls) throws java.lang.ClassNotFoundException {
        java.lang.Class<?> cls2 = java.lang.Class.forName(str, false, classLoader);
        if (cls.isAssignableFrom(cls2)) {
            return cls.cast(cls2.getDeclaredConstructor(new java.lang.Class[0]).newInstance(new java.lang.Object[0]));
        }
        throw new java.lang.IllegalArgumentException(("Expected service of class " + cls + ", but found " + cls2).toString());
    }

    public final <S> java.util.List<S> b(java.lang.Class<S> cls, java.lang.ClassLoader classLoader) {
        try {
            return d(cls, classLoader);
        } catch (java.lang.Throwable unused) {
            return b3.w.B(java.util.ServiceLoader.load(cls, classLoader));
        }
    }

    public final java.util.List<y3.v> c() {
        y3.v vVar;
        if (!y3.m.a()) {
            return b(y3.v.class, y3.v.class.getClassLoader());
        }
        try {
            java.util.ArrayList arrayList = new java.util.ArrayList(2);
            y3.v vVar2 = null;
            try {
                vVar = (y3.v) y3.v.class.cast(java.lang.Class.forName("u3.a", true, y3.v.class.getClassLoader()).getDeclaredConstructor(new java.lang.Class[0]).newInstance(new java.lang.Object[0]));
            } catch (java.lang.ClassNotFoundException unused) {
                vVar = null;
            }
            if (vVar != null) {
                arrayList.add(vVar);
            }
            try {
                vVar2 = (y3.v) y3.v.class.cast(java.lang.Class.forName("kotlinx.coroutines.test.internal.TestMainDispatcherFactory", true, y3.v.class.getClassLoader()).getDeclaredConstructor(new java.lang.Class[0]).newInstance(new java.lang.Object[0]));
            } catch (java.lang.ClassNotFoundException unused2) {
            }
            if (vVar2 == null) {
                return arrayList;
            }
            arrayList.add(vVar2);
            return arrayList;
        } catch (java.lang.Throwable unused3) {
            return b(y3.v.class, y3.v.class.getClassLoader());
        }
    }

    public final <S> java.util.List<S> d(java.lang.Class<S> cls, java.lang.ClassLoader classLoader) {
        java.util.ArrayList list = java.util.Collections.list(classLoader.getResources("META-INF/services/" + cls.getName()));
        m3.k.d(list, "list(this)");
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.Iterator it = list.iterator();
        while (it.hasNext()) {
            b3.t.n(arrayList, f6909a.e((java.net.URL) it.next()));
        }
        java.util.Set setE = b3.w.E(arrayList);
        if (!(!setE.isEmpty())) {
            throw new java.lang.IllegalArgumentException("No providers were loaded with FastServiceLoader".toString());
        }
        java.util.ArrayList arrayList2 = new java.util.ArrayList(b3.p.l(setE, 10));
        java.util.Iterator it2 = setE.iterator();
        while (it2.hasNext()) {
            arrayList2.add(f6909a.a((java.lang.String) it2.next(), classLoader, cls));
        }
        return arrayList2;
    }

    public final java.util.List<java.lang.String> e(java.net.URL url) throws java.lang.IllegalAccessException, java.io.IOException, java.lang.reflect.InvocationTargetException {
        java.lang.String string = url.toString();
        if (!s3.l.n(string, "jar", false, 2, null)) {
            java.io.BufferedReader bufferedReader = new java.io.BufferedReader(new java.io.InputStreamReader(url.openStream()));
            try {
                java.util.List<java.lang.String> listF = f6909a.f(bufferedReader);
                j3.a.a(bufferedReader, null);
                return listF;
            } catch (java.lang.Throwable th) {
                try {
                    throw th;
                } catch (java.lang.Throwable th2) {
                    j3.a.a(bufferedReader, th);
                    throw th2;
                }
            }
        }
        java.lang.String strX = s3.m.X(s3.m.S(string, "jar:file:", null, 2, null), '!', null, 2, null);
        java.lang.String strS = s3.m.S(string, "!/", null, 2, null);
        java.util.jar.JarFile jarFile = new java.util.jar.JarFile(strX, false);
        try {
            java.io.BufferedReader bufferedReader2 = new java.io.BufferedReader(new java.io.InputStreamReader(jarFile.getInputStream(new java.util.zip.ZipEntry(strS)), "UTF-8"));
            try {
                java.util.List<java.lang.String> listF2 = f6909a.f(bufferedReader2);
                j3.a.a(bufferedReader2, null);
                jarFile.close();
                return listF2;
            } catch (java.lang.Throwable th3) {
                try {
                    throw th3;
                } catch (java.lang.Throwable th4) {
                    j3.a.a(bufferedReader2, th3);
                    throw th4;
                }
            }
        } catch (java.lang.Throwable th5) {
            try {
                throw th5;
            } catch (java.lang.Throwable th6) {
                try {
                    jarFile.close();
                    throw th6;
                } catch (java.lang.Throwable th7) {
                    a3.a.a(th5, th7);
                    throw th5;
                }
            }
        }
    }

    public final java.util.List<java.lang.String> f(java.io.BufferedReader bufferedReader) throws java.io.IOException {
        boolean z4;
        java.util.LinkedHashSet linkedHashSet = new java.util.LinkedHashSet();
        while (true) {
            java.lang.String line = bufferedReader.readLine();
            if (line == null) {
                return b3.w.B(linkedHashSet);
            }
            java.lang.String string = s3.m.Z(s3.m.Y(line, "#", null, 2, null)).toString();
            int i5 = 0;
            while (true) {
                if (i5 >= string.length()) {
                    z4 = true;
                    break;
                }
                char cCharAt = string.charAt(i5);
                if (!(cCharAt == '.' || java.lang.Character.isJavaIdentifierPart(cCharAt))) {
                    z4 = false;
                    break;
                }
                i5++;
            }
            if (!z4) {
                throw new java.lang.IllegalArgumentException(("Illegal service provider class name: " + string).toString());
            }
            if (string.length() > 0) {
                linkedHashSet.add(string);
            }
        }
    }
}
