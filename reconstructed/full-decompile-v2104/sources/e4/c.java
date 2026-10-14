package e4;

/* JADX INFO: compiled from: CacheStrategy.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c4.y f4123a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c4.a0 f4124b;

    /* JADX INFO: compiled from: CacheStrategy.java */
    public static /* synthetic */ class a {
    }

    /* JADX INFO: compiled from: CacheStrategy.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f4125a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final c4.y f4126b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final c4.a0 f4127c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public java.util.Date f4128d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public java.lang.String f4129e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public java.util.Date f4130f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public java.lang.String f4131g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public java.util.Date f4132h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public long f4133i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public long f4134j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public java.lang.String f4135k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f4136l;

        public b(long j5, c4.y yVar, c4.a0 a0Var) {
            this.f4136l = -1;
            this.f4125a = j5;
            this.f4126b = yVar;
            this.f4127c = a0Var;
            if (a0Var != null) {
                this.f4133i = a0Var.R();
                this.f4134j = a0Var.M();
                c4.q qVarI = a0Var.I();
                int iG = qVarI.g();
                for (int i5 = 0; i5 < iG; i5++) {
                    java.lang.String strD = qVarI.d(i5);
                    java.lang.String strH = qVarI.h(i5);
                    if ("Date".equalsIgnoreCase(strD)) {
                        this.f4128d = h4.e.b(strH);
                        this.f4129e = strH;
                    } else if ("Expires".equalsIgnoreCase(strD)) {
                        this.f4132h = h4.e.b(strH);
                    } else if ("Last-Modified".equalsIgnoreCase(strD)) {
                        this.f4130f = h4.e.b(strH);
                        this.f4131g = strH;
                    } else if ("ETag".equalsIgnoreCase(strD)) {
                        this.f4135k = strH;
                    } else if ("Age".equalsIgnoreCase(strD)) {
                        this.f4136l = h4.f.d(strH, -1);
                    }
                }
            }
        }

        public static boolean e(c4.y yVar) {
            return (yVar.h("If-Modified-Since") == null && yVar.h("If-None-Match") == null) ? false : true;
        }

        public final long a() {
            java.util.Date date = this.f4128d;
            long jMax = date != null ? java.lang.Math.max(0L, this.f4134j - date.getTime()) : 0L;
            int i5 = this.f4136l;
            if (i5 != -1) {
                jMax = java.lang.Math.max(jMax, java.util.concurrent.TimeUnit.SECONDS.toMillis(i5));
            }
            long j5 = this.f4134j;
            return jMax + (j5 - this.f4133i) + (this.f4125a - j5);
        }

        public final long b() {
            c4.d dVarX = this.f4127c.x();
            if (dVarX.d() != -1) {
                return java.util.concurrent.TimeUnit.SECONDS.toMillis(dVarX.d());
            }
            if (this.f4132h != null) {
                java.util.Date date = this.f4128d;
                long time = this.f4132h.getTime() - (date != null ? date.getTime() : this.f4134j);
                if (time > 0) {
                    return time;
                }
                return 0L;
            }
            if (this.f4130f == null || this.f4127c.P().m().B() != null) {
                return 0L;
            }
            java.util.Date date2 = this.f4128d;
            long time2 = (date2 != null ? date2.getTime() : this.f4133i) - this.f4130f.getTime();
            if (time2 > 0) {
                return time2 / 10;
            }
            return 0L;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public e4.c c() {
            e4.c cVarD = d();
            return (cVarD.f4123a == null || !this.f4126b.g().j()) ? cVarD : new e4.c(null, 0 == true ? 1 : 0, 0 == true ? 1 : 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final e4.c d() {
            c4.a0 a0Var = null;
            java.lang.Object[] objArr = 0;
            java.lang.Object[] objArr2 = 0;
            java.lang.Object[] objArr3 = 0;
            java.lang.Object[] objArr4 = 0;
            java.lang.Object[] objArr5 = 0;
            java.lang.Object[] objArr6 = 0;
            java.lang.Object[] objArr7 = 0;
            java.lang.Object[] objArr8 = 0;
            java.lang.Object[] objArr9 = 0;
            java.lang.Object[] objArr10 = 0;
            java.lang.Object[] objArr11 = 0;
            java.lang.Object[] objArr12 = 0;
            if (this.f4127c == null) {
                return new e4.c(this.f4126b, a0Var, objArr12 == true ? 1 : 0);
            }
            if (this.f4126b.j() && this.f4127c.z() == null) {
                return new e4.c(this.f4126b, objArr11 == true ? 1 : 0, objArr10 == true ? 1 : 0);
            }
            if (!e4.c.a(this.f4127c, this.f4126b)) {
                return new e4.c(this.f4126b, objArr9 == true ? 1 : 0, objArr8 == true ? 1 : 0);
            }
            c4.d dVarG = this.f4126b.g();
            if (dVarG.h() || e(this.f4126b)) {
                return new e4.c(this.f4126b, objArr2 == true ? 1 : 0, objArr == true ? 1 : 0);
            }
            long jA = a();
            long jB = b();
            if (dVarG.d() != -1) {
                jB = java.lang.Math.min(jB, java.util.concurrent.TimeUnit.SECONDS.toMillis(dVarG.d()));
            }
            long millis = 0;
            long millis2 = dVarG.f() != -1 ? java.util.concurrent.TimeUnit.SECONDS.toMillis(dVarG.f()) : 0L;
            c4.d dVarX = this.f4127c.x();
            if (!dVarX.g() && dVarG.e() != -1) {
                millis = java.util.concurrent.TimeUnit.SECONDS.toMillis(dVarG.e());
            }
            if (!dVarX.h()) {
                long j5 = millis2 + jA;
                if (j5 < millis + jB) {
                    c4.a0.b bVarK = this.f4127c.K();
                    if (j5 >= jB) {
                        bVarK.m("Warning", "110 HttpURLConnection \"Response is stale\"");
                    }
                    if (jA > 86400000 && f()) {
                        bVarK.m("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                    }
                    return new e4.c(objArr7 == true ? 1 : 0, bVarK.o(), objArr6 == true ? 1 : 0);
                }
            }
            java.lang.String str = this.f4135k;
            java.lang.String str2 = "If-Modified-Since";
            if (str != null) {
                str2 = "If-None-Match";
            } else if (this.f4130f != null) {
                str = this.f4131g;
            } else {
                if (this.f4128d == null) {
                    return new e4.c(this.f4126b, objArr4 == true ? 1 : 0, objArr3 == true ? 1 : 0);
                }
                str = this.f4129e;
            }
            c4.q.b bVarE = this.f4126b.i().e();
            d4.a.f3963a.b(bVarE, str2, str);
            return new e4.c(this.f4126b.l().j(bVarE.e()).g(), this.f4127c, objArr5 == true ? 1 : 0);
        }

        public final boolean f() {
            return this.f4127c.x().d() == -1 && this.f4132h == null;
        }
    }

    public /* synthetic */ c(c4.y yVar, c4.a0 a0Var, e4.c.a aVar) {
        this(yVar, a0Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
    
        if (r3.x().b() == false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(c4.a0 a0Var, c4.y yVar) {
        int iY = a0Var.y();
        if (iY != 200 && iY != 410 && iY != 414 && iY != 501 && iY != 203 && iY != 204) {
            if (iY != 307) {
                if (iY != 308 && iY != 404 && iY != 405) {
                    switch (iY) {
                        case com.cndatacom.sdk.portal.entity.ConfigInfo.KEEP_INTERVAL_DEF /* 300 */:
                        case 301:
                            break;
                        case 302:
                            break;
                        default:
                            return false;
                    }
                }
            }
            if (a0Var.C("Expires") == null) {
                if (a0Var.x().d() == -1) {
                    if (!a0Var.x().c()) {
                    }
                }
            }
        }
        return (a0Var.x().i() || yVar.g().i()) ? false : true;
    }

    public c(c4.y yVar, c4.a0 a0Var) {
        this.f4123a = yVar;
        this.f4124b = a0Var;
    }
}
