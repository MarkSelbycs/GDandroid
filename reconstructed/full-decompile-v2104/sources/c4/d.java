package c4;

/* JADX INFO: compiled from: CacheControl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class d {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final c4.d f3062m = new c4.d.b().c().a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final c4.d f3063n = new c4.d.b().d().b(Integer.MAX_VALUE, java.util.concurrent.TimeUnit.SECONDS).a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f3064a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f3065b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3066c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3067d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f3068e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f3069f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f3070g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3071h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f3072i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f3073j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f3074k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public java.lang.String f3075l;

    /* JADX INFO: compiled from: CacheControl.java */
    public static /* synthetic */ class a {
    }

    /* JADX INFO: compiled from: CacheControl.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f3076a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f3077b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f3078c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f3079d = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f3080e = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f3081f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f3082g;

        public c4.d a() {
            return new c4.d(this, null);
        }

        public c4.d.b b(int i5, java.util.concurrent.TimeUnit timeUnit) {
            if (i5 >= 0) {
                long seconds = timeUnit.toSeconds(i5);
                this.f3079d = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
                return this;
            }
            throw new java.lang.IllegalArgumentException("maxStale < 0: " + i5);
        }

        public c4.d.b c() {
            this.f3076a = true;
            return this;
        }

        public c4.d.b d() {
            this.f3081f = true;
            return this;
        }
    }

    public /* synthetic */ d(c4.d.b bVar, c4.d.a aVar) {
        this(bVar);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003f  */
    /* JADX WARN: Code duplicated, block: B:28:0x0097  */
    /* JADX WARN: Code duplicated, block: B:31:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:34:0x00af  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:37:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:41:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:44:0x00da  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:49:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:50:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:52:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:53:0x0101  */
    /* JADX WARN: Code duplicated, block: B:55:0x0109  */
    /* JADX WARN: Code duplicated, block: B:56:0x010f  */
    /* JADX WARN: Code duplicated, block: B:58:0x0118  */
    /* JADX WARN: Code duplicated, block: B:59:0x011b  */
    /* JADX WARN: Code duplicated, block: B:61:0x0123  */
    /* JADX WARN: Code duplicated, block: B:83:0x0125 A[SYNTHETIC] */
    public static c4.d k(c4.q qVar) {
        int i5;
        int iF;
        java.lang.String strTrim;
        int iF2;
        java.lang.String strTrim2;
        int iG = qVar.g();
        boolean z4 = true;
        java.lang.String str = null;
        boolean z5 = false;
        boolean z6 = false;
        int iD = -1;
        int iD2 = -1;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        int iD3 = -1;
        int iD4 = -1;
        boolean z10 = false;
        boolean z11 = false;
        for (int i6 = 0; i6 < iG; i6++) {
            java.lang.String strD = qVar.d(i6);
            java.lang.String strH = qVar.h(i6);
            if (strD.equalsIgnoreCase("Cache-Control")) {
                if (str == null) {
                    str = strH;
                }
                for (i5 = 0; i5 < strH.length(); i5 = iF2) {
                    iF = h4.f.f(strH, i5, "=,;");
                    strTrim = strH.substring(i5, iF).trim();
                    if (iF != strH.length() || strH.charAt(iF) == ',' || strH.charAt(iF) == ';') {
                        iF2 = iF + 1;
                        strTrim2 = null;
                    } else {
                        int iG2 = h4.f.g(strH, iF + 1);
                        if (iG2 >= strH.length() || strH.charAt(iG2) != '\"') {
                            iF2 = h4.f.f(strH, iG2, ",;");
                            strTrim2 = strH.substring(iG2, iF2).trim();
                        } else {
                            int i7 = iG2 + 1;
                            int iF3 = h4.f.f(strH, i7, "\"");
                            strTrim2 = strH.substring(i7, iF3);
                            iF2 = iF3 + 1;
                        }
                    }
                    if ("no-cache".equalsIgnoreCase(strTrim)) {
                        z5 = true;
                    } else if ("no-store".equalsIgnoreCase(strTrim)) {
                        z6 = true;
                    } else if ("max-age".equalsIgnoreCase(strTrim)) {
                        iD = h4.f.d(strTrim2, -1);
                    } else if ("s-maxage".equalsIgnoreCase(strTrim)) {
                        iD2 = h4.f.d(strTrim2, -1);
                    } else if ("private".equalsIgnoreCase(strTrim)) {
                        z7 = true;
                    } else if ("public".equalsIgnoreCase(strTrim)) {
                        z8 = true;
                    } else if ("must-revalidate".equalsIgnoreCase(strTrim)) {
                        z9 = true;
                    } else if ("max-stale".equalsIgnoreCase(strTrim)) {
                        iD3 = h4.f.d(strTrim2, Integer.MAX_VALUE);
                    } else if ("min-fresh".equalsIgnoreCase(strTrim)) {
                        iD4 = h4.f.d(strTrim2, -1);
                    } else if ("only-if-cached".equalsIgnoreCase(strTrim)) {
                        z10 = true;
                    } else if ("no-transform".equalsIgnoreCase(strTrim)) {
                        z11 = true;
                    }
                }
            } else {
                if (strD.equalsIgnoreCase("Pragma")) {
                }
            }
            z4 = false;
            while (i5 < strH.length()) {
                iF = h4.f.f(strH, i5, "=,;");
                strTrim = strH.substring(i5, iF).trim();
                if (iF != strH.length()) {
                    iF2 = iF + 1;
                    strTrim2 = null;
                } else {
                    iF2 = iF + 1;
                    strTrim2 = null;
                }
                if ("no-cache".equalsIgnoreCase(strTrim)) {
                    z5 = true;
                } else if ("no-store".equalsIgnoreCase(strTrim)) {
                    z6 = true;
                } else if ("max-age".equalsIgnoreCase(strTrim)) {
                    iD = h4.f.d(strTrim2, -1);
                } else if ("s-maxage".equalsIgnoreCase(strTrim)) {
                    iD2 = h4.f.d(strTrim2, -1);
                } else if ("private".equalsIgnoreCase(strTrim)) {
                    z7 = true;
                } else if ("public".equalsIgnoreCase(strTrim)) {
                    z8 = true;
                } else if ("must-revalidate".equalsIgnoreCase(strTrim)) {
                    z9 = true;
                } else if ("max-stale".equalsIgnoreCase(strTrim)) {
                    iD3 = h4.f.d(strTrim2, Integer.MAX_VALUE);
                } else if ("min-fresh".equalsIgnoreCase(strTrim)) {
                    iD4 = h4.f.d(strTrim2, -1);
                } else if ("only-if-cached".equalsIgnoreCase(strTrim)) {
                    z10 = true;
                } else if ("no-transform".equalsIgnoreCase(strTrim)) {
                    z11 = true;
                }
            }
        }
        return new c4.d(z5, z6, iD, iD2, z7, z8, z9, iD3, iD4, z10, z11, !z4 ? null : str);
    }

    public final java.lang.String a() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        if (this.f3064a) {
            sb.append("no-cache, ");
        }
        if (this.f3065b) {
            sb.append("no-store, ");
        }
        if (this.f3066c != -1) {
            sb.append("max-age=");
            sb.append(this.f3066c);
            sb.append(", ");
        }
        if (this.f3067d != -1) {
            sb.append("s-maxage=");
            sb.append(this.f3067d);
            sb.append(", ");
        }
        if (this.f3068e) {
            sb.append("private, ");
        }
        if (this.f3069f) {
            sb.append("public, ");
        }
        if (this.f3070g) {
            sb.append("must-revalidate, ");
        }
        if (this.f3071h != -1) {
            sb.append("max-stale=");
            sb.append(this.f3071h);
            sb.append(", ");
        }
        if (this.f3072i != -1) {
            sb.append("min-fresh=");
            sb.append(this.f3072i);
            sb.append(", ");
        }
        if (this.f3073j) {
            sb.append("only-if-cached, ");
        }
        if (this.f3074k) {
            sb.append("no-transform, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        return sb.toString();
    }

    public boolean b() {
        return this.f3068e;
    }

    public boolean c() {
        return this.f3069f;
    }

    public int d() {
        return this.f3066c;
    }

    public int e() {
        return this.f3071h;
    }

    public int f() {
        return this.f3072i;
    }

    public boolean g() {
        return this.f3070g;
    }

    public boolean h() {
        return this.f3064a;
    }

    public boolean i() {
        return this.f3065b;
    }

    public boolean j() {
        return this.f3073j;
    }

    public java.lang.String toString() {
        java.lang.String str = this.f3075l;
        if (str != null) {
            return str;
        }
        java.lang.String strA = a();
        this.f3075l = strA;
        return strA;
    }

    public d(boolean z4, boolean z5, int i5, int i6, boolean z6, boolean z7, boolean z8, int i7, int i8, boolean z9, boolean z10, java.lang.String str) {
        this.f3064a = z4;
        this.f3065b = z5;
        this.f3066c = i5;
        this.f3067d = i6;
        this.f3068e = z6;
        this.f3069f = z7;
        this.f3070g = z8;
        this.f3071h = i7;
        this.f3072i = i8;
        this.f3073j = z9;
        this.f3074k = z10;
        this.f3075l = str;
    }

    public d(c4.d.b bVar) {
        this.f3064a = bVar.f3076a;
        this.f3065b = bVar.f3077b;
        this.f3066c = bVar.f3078c;
        this.f3067d = -1;
        this.f3068e = false;
        this.f3069f = false;
        this.f3070g = false;
        this.f3071h = bVar.f3079d;
        this.f3072i = bVar.f3080e;
        this.f3073j = bVar.f3081f;
        this.f3074k = bVar.f3082g;
    }
}
