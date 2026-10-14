package p4;

/* JADX INFO: compiled from: SecurityProtocols.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class z implements java.io.Serializable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final n4.a f5634e = n4.b.d(p4.z.class);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static p4.z f5635f = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5638c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5639d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.Hashtable<r4.j, p4.i> f5636a = new java.util.Hashtable<>(5);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public java.util.Hashtable<r4.j, p4.s> f5637b = new java.util.Hashtable<>(5);

    public static p4.z h() {
        if (f5635f == null) {
            f5635f = new p4.z();
        }
        return f5635f;
    }

    public synchronized void b(p4.i iVar) {
        if (this.f5636a.get(iVar.a()) == null) {
            this.f5636a.put(iVar.a(), iVar);
            if (iVar.k() > this.f5638c) {
                this.f5638c = iVar.k();
            }
        }
    }

    public synchronized p4.z c() {
        if (k4.m.l()) {
            java.lang.String property = java.lang.System.getProperty("org.snmp4j.securityProtocols", "SecurityProtocols.properties");
            java.io.InputStream resourceAsStream = p4.z.class.getResourceAsStream(property);
            if (resourceAsStream == null) {
                throw new java.lang.InternalError("Could not read '" + property + "' from classpath!");
            }
            java.util.Properties properties = new java.util.Properties();
            try {
                try {
                    properties.load(resourceAsStream);
                    java.util.Enumeration<?> enumerationPropertyNames = properties.propertyNames();
                    while (enumerationPropertyNames.hasMoreElements()) {
                        java.lang.String string = enumerationPropertyNames.nextElement().toString();
                        java.lang.String property2 = properties.getProperty(string);
                        r4.j jVar = property2 != null ? new r4.j(property2) : null;
                        try {
                            java.lang.Object objNewInstance = java.lang.Class.forName(string).newInstance();
                            if ((objNewInstance instanceof q4.a) && jVar != null && jVar.U() > 0) {
                                n4.a aVar = f5634e;
                                if (aVar.a()) {
                                    aVar.g("Assigning custom ID '" + jVar + "' to security protocol " + string);
                                }
                                ((q4.a) objNewInstance).b(jVar);
                            }
                            if (objNewInstance instanceof p4.i) {
                                b((p4.i) objNewInstance);
                            } else if (objNewInstance instanceof p4.s) {
                                e((p4.s) objNewInstance);
                            } else {
                                f5634e.c("Failed to register security protocol because it does not implement required interfaces: " + string);
                            }
                        } catch (java.lang.Exception e5) {
                            f5634e.c(e5);
                            throw new java.lang.InternalError(e5.toString());
                        }
                    }
                    try {
                        resourceAsStream.close();
                    } catch (java.io.IOException e6) {
                        f5634e.i(e6);
                    }
                } catch (java.io.IOException e7) {
                    java.lang.String str = "Could not read '" + property + "': " + e7.getMessage();
                    f5634e.c(str);
                    throw new java.lang.InternalError(str);
                }
            } catch (java.lang.Throwable th) {
                try {
                    resourceAsStream.close();
                } catch (java.io.IOException e8) {
                    f5634e.i(e8);
                }
                throw th;
            }
        } else {
            b(new p4.f());
            b(new p4.h());
            b(new p4.b());
            b(new p4.c());
            b(new p4.d());
            b(new p4.e());
            e(new p4.q());
            e(new p4.m());
            e(new p4.n());
            e(new p4.o());
        }
        return this;
    }

    public synchronized void e(p4.s sVar) {
        if (this.f5637b.get(sVar.a()) == null) {
            this.f5637b.put(sVar.a(), sVar);
            if (sVar.E() > this.f5639d) {
                this.f5639d = sVar.E();
            }
        }
    }

    public p4.i f(r4.j jVar) {
        if (jVar == null) {
            return null;
        }
        return this.f5636a.get(jVar);
    }

    public int j() {
        return this.f5638c;
    }

    public int q() {
        return this.f5639d;
    }

    public p4.s u(r4.j jVar) {
        if (jVar == null) {
            return null;
        }
        return this.f5637b.get(jVar);
    }

    public byte[] x(r4.j jVar, r4.j jVar2, r4.k kVar, byte[] bArr) {
        p4.s sVar;
        byte[] bArrG;
        p4.i iVar = this.f5636a.get(jVar2);
        if (iVar == null || (sVar = this.f5637b.get(jVar)) == null || (bArrG = iVar.G(kVar, bArr)) == null) {
            return null;
        }
        if (bArrG.length < sVar.S()) {
            return sVar.L(bArrG, kVar, bArr, iVar);
        }
        if (bArrG.length <= sVar.w()) {
            return bArrG;
        }
        byte[] bArr2 = new byte[sVar.w()];
        java.lang.System.arraycopy(bArrG, 0, bArr2, 0, sVar.w());
        return bArr2;
    }

    public byte[] y(r4.j jVar, r4.k kVar, byte[] bArr) {
        p4.i iVar = this.f5636a.get(jVar);
        if (iVar == null) {
            return null;
        }
        return iVar.G(kVar, bArr);
    }
}
