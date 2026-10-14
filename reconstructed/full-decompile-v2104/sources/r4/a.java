package r4;

/* JADX INFO: compiled from: AbstractVariable.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class a implements r4.u, java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.Object[][] f5973a = {new java.lang.Object[]{"Integer32", 2}, new java.lang.Object[]{"BIT STRING", 3}, new java.lang.Object[]{"OCTET STRING", 4}, new java.lang.Object[]{"OBJECT IDENTIFIER", 6}, new java.lang.Object[]{"TimeTicks", 67}, new java.lang.Object[]{"Counter", 65}, new java.lang.Object[]{"Counter64", 70}, new java.lang.Object[]{"EndOfMibView", 130}, new java.lang.Object[]{"Gauge", 66}, new java.lang.Object[]{"Unsigned32", 66}, new java.lang.Object[]{"IpAddress", 64}, new java.lang.Object[]{"NoSuchInstance", 129}, new java.lang.Object[]{"NoSuchObject", java.lang.Integer.valueOf(com.alibaba.fastjson.asm.Opcodes.IOR)}, new java.lang.Object[]{"Null", 5}, new java.lang.Object[]{"Opaque", 68}};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static java.util.Hashtable<java.lang.Integer, java.lang.Class<? extends r4.u>> f5974b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final n4.a f5975c = n4.b.d(r4.a.class);

    public static boolean D(r4.a aVar, r4.a aVar2) {
        if (aVar == null) {
            return aVar2 == null;
        }
        return aVar.equals(aVar2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static synchronized void F() {
        java.lang.String property = java.lang.System.getProperty("org.snmp4j.smisyntaxes", "smisyntaxes.properties");
        java.io.InputStream resourceAsStream = r4.u.class.getResourceAsStream(property);
        if (resourceAsStream == null) {
            throw new java.lang.InternalError("Could not read '" + property + "' from classpath!");
        }
        java.util.Properties properties = new java.util.Properties();
        try {
            try {
                properties.load(resourceAsStream);
                java.util.Hashtable<java.lang.Integer, java.lang.Class<? extends r4.u>> hashtable = new java.util.Hashtable<>(properties.size());
                java.util.Enumeration<?> enumerationPropertyNames = properties.propertyNames();
                while (enumerationPropertyNames.hasMoreElements()) {
                    java.lang.String string = enumerationPropertyNames.nextElement().toString();
                    try {
                        hashtable.put(new java.lang.Integer(string), java.lang.Class.forName(properties.getProperty(string)));
                    } catch (java.lang.ClassCastException e5) {
                        f5975c.c(e5);
                    } catch (java.lang.ClassNotFoundException e6) {
                        f5975c.c(e6);
                    }
                }
                f5974b = hashtable;
                try {
                    resourceAsStream.close();
                } catch (java.io.IOException e7) {
                    f5975c.i(e7);
                }
            } catch (java.io.IOException e8) {
                java.lang.String str = "Could not read '" + property + "': " + e8.getMessage();
                f5975c.c(str);
                throw new java.lang.InternalError(str);
            }
        } catch (java.lang.Throwable th) {
            try {
                resourceAsStream.close();
            } catch (java.io.IOException e9) {
                f5975c.i(e9);
            }
            throw th;
        }
    }

    public static r4.u x(l4.b bVar) throws java.io.IOException {
        r4.u uVarY;
        if (!bVar.markSupported()) {
            throw new java.io.IOException("InputStream for decoding a Variable must support marks");
        }
        if (k4.m.l() && f5974b == null) {
            F();
        }
        bVar.mark(2);
        int i5 = bVar.read();
        if (k4.m.l()) {
            java.lang.Class<? extends r4.u> cls = f5974b.get(java.lang.Integer.valueOf(i5));
            if (cls == null) {
                throw new java.io.IOException("Encountered unsupported variable syntax: " + i5);
            }
            try {
                uVarY = cls.newInstance();
            } catch (java.lang.IllegalAccessException unused) {
                throw new java.io.IOException("Could not access variable syntax class for: " + cls.getName());
            } catch (java.lang.InstantiationException unused2) {
                throw new java.io.IOException("Could not instantiate variable syntax class for: " + cls.getName());
            }
        } else {
            uVarY = y(i5);
        }
        bVar.reset();
        uVarY.j(bVar);
        return uVarY;
    }

    public static r4.u y(int i5) {
        if (i5 == 2) {
            return new r4.g();
        }
        if (i5 == 70) {
            return new r4.d();
        }
        if (i5 == 4) {
            return new r4.k();
        }
        if (i5 == 5) {
            return new r4.i();
        }
        if (i5 == 6) {
            return new r4.j();
        }
        switch (i5) {
            case 64:
                return new r4.h();
            case 65:
                return new r4.c();
            case 66:
                return new r4.e();
            case 67:
                return new r4.p();
            case 68:
                return new r4.l();
            default:
                switch (i5) {
                    case com.alibaba.fastjson.asm.Opcodes.IOR /* 128 */:
                        return new r4.i(com.alibaba.fastjson.asm.Opcodes.IOR);
                    case 129:
                        return new r4.i(129);
                    case 130:
                        return new r4.i(130);
                    default:
                        throw new java.lang.IllegalArgumentException("Unsupported variable syntax: " + i5);
                }
        }
    }

    @Override // r4.u
    public abstract int c();

    @Override // r4.u
    public abstract java.lang.Object clone();

    @Override // l4.d
    public abstract void e(java.io.OutputStream outputStream) throws java.io.IOException;

    @Override // r4.u
    public abstract boolean equals(java.lang.Object obj);

    @Override // l4.d
    public abstract int f();

    public abstract int hashCode();

    @Override // r4.u
    public boolean q() {
        return r4.i.H(c());
    }

    @Override // r4.u
    public abstract java.lang.String toString();

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: u */
    public abstract int compareTo(r4.u uVar);
}
