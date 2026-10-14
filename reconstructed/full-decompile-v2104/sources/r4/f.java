package r4;

/* JADX INFO: compiled from: GenericAddress.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class f extends r4.m {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final n4.a f5977e = n4.b.d(r4.f.class);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static java.util.Map<java.lang.String, java.lang.Class<? extends r4.b>> f5978f = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public r4.m f5979d;

    public f() {
    }

    public static r4.b H(java.lang.String str) {
        java.lang.String strSubstring;
        if (f5978f == null) {
            I();
        }
        int iIndexOf = str.indexOf(58);
        if (iIndexOf > 0) {
            strSubstring = str.substring(0, iIndexOf);
            str = str.substring(iIndexOf + 1);
        } else {
            strSubstring = "udp";
        }
        java.lang.String lowerCase = strSubstring.toLowerCase();
        java.lang.Class<? extends r4.b> cls = f5978f.get(lowerCase);
        if (cls == null) {
            throw new java.lang.IllegalArgumentException("Address type " + lowerCase + " unknown");
        }
        try {
            r4.b bVarNewInstance = cls.newInstance();
            if (bVarNewInstance.h(str)) {
                return bVarNewInstance;
            }
            return null;
        } catch (java.lang.Exception e5) {
            f5977e.i(e5);
            return null;
        }
    }

    public static synchronized void I() {
        if (k4.m.l()) {
            java.lang.String property = java.lang.System.getProperty("org.snmp4j.addresses", "address.properties");
            java.io.InputStream resourceAsStream = r4.u.class.getResourceAsStream(property);
            if (resourceAsStream == null) {
                throw new java.lang.InternalError("Could not read '" + property + "' from classpath!");
            }
            java.util.Properties properties = new java.util.Properties();
            try {
                try {
                    properties.load(resourceAsStream);
                    java.util.TreeMap treeMap = new java.util.TreeMap();
                    java.util.Enumeration<?> enumerationPropertyNames = properties.propertyNames();
                    while (enumerationPropertyNames.hasMoreElements()) {
                        java.lang.String string = enumerationPropertyNames.nextElement().toString();
                        java.lang.String property2 = properties.getProperty(string);
                        try {
                            treeMap.put(string, java.lang.Class.forName(property2));
                        } catch (java.lang.ClassCastException unused) {
                            f5977e.c("Class name '" + property2 + "' is not a subclass of " + r4.b.class.getName());
                        } catch (java.lang.ClassNotFoundException e5) {
                            f5977e.c(e5);
                        }
                    }
                    f5978f = treeMap;
                    try {
                        resourceAsStream.close();
                    } catch (java.io.IOException e6) {
                        f5977e.i(e6);
                    }
                } catch (java.io.IOException e7) {
                    java.lang.String str = "Could not read '" + property + "': " + e7.getMessage();
                    f5977e.c(str);
                    throw new java.lang.InternalError(str);
                }
            } catch (java.lang.Throwable th) {
                try {
                    resourceAsStream.close();
                } catch (java.io.IOException e8) {
                    f5977e.i(e8);
                }
                throw th;
            }
        } else {
            java.util.TreeMap treeMap2 = new java.util.TreeMap();
            treeMap2.put("udp", r4.s.class);
            treeMap2.put("tcp", r4.o.class);
            treeMap2.put("ip", r4.h.class);
            treeMap2.put("tls", r4.q.class);
            f5978f = treeMap2;
        }
    }

    public void M(r4.m mVar) {
        this.f5979d = mVar;
    }

    @Override // r4.a, r4.u
    public int c() {
        return this.f5979d.c();
    }

    public r4.b c0() {
        return this.f5979d;
    }

    @Override // r4.a, r4.u
    public java.lang.Object clone() {
        return new r4.f(this.f5979d);
    }

    @Override // r4.a, l4.d
    public void e(java.io.OutputStream outputStream) throws java.io.IOException {
        this.f5979d.e(outputStream);
    }

    @Override // r4.a, r4.u
    public boolean equals(java.lang.Object obj) {
        return this.f5979d.equals(obj);
    }

    @Override // r4.a, l4.d
    public int f() {
        return this.f5979d.f();
    }

    @Override // r4.b
    public boolean h(java.lang.String str) {
        r4.b bVarH = H(str);
        if (!(bVarH instanceof r4.m)) {
            return false;
        }
        M((r4.m) bVarH);
        return true;
    }

    @Override // r4.a
    public int hashCode() {
        return this.f5979d.hashCode();
    }

    @Override // l4.d
    public void j(l4.b bVar) throws java.io.IOException {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // r4.a, r4.u
    public java.lang.String toString() {
        return this.f5979d.toString();
    }

    @Override // r4.a, java.lang.Comparable
    /* JADX INFO: renamed from: u */
    public int compareTo(r4.u uVar) {
        return this.f5979d.compareTo(uVar);
    }

    public f(r4.m mVar) {
        this.f5979d = mVar;
    }
}
