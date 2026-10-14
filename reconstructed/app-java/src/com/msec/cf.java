package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class cf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f3803a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f3804b = 1000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f3805c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f3806d = 100;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f3807e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f3808f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f3809g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static com.msec.cf.c[] f3810h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static java.util.List<java.lang.String> f3811i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static android.app.Activity f3812j;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f3813a = 25;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f3814b = 35;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f3815c = 50;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f3816d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f3817e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f3818f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f3819g = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f3820h = 0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f3821i = false;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f3822j = false;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f3823k = 0;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private float[] f3824l = new float[com.msec.cf.f3804b];

        public int a() {
            return this.f3816d;
        }

        public void a(com.msec.cf.c cVar) throws org.json.JSONException {
            int i5 = cVar.f3831a;
            if (i5 == 0) {
                this.f3821i = true;
                return;
            }
            if (i5 != 1) {
                if (i5 == 2 && this.f3821i && !this.f3822j) {
                    this.f3820h++;
                    this.f3822j = true;
                    return;
                }
                return;
            }
            if (this.f3821i) {
                this.f3821i = false;
                this.f3822j = false;
                this.f3819g++;
                long j5 = cVar.f3834d - cVar.f3835e;
                float[] fArr = this.f3824l;
                int i6 = this.f3823k;
                this.f3823k = i6 + 1;
                fArr[i6] = j5;
                if (j5 <= 25) {
                    this.f3816d++;
                }
                if (j5 <= 35) {
                    this.f3817e++;
                }
                if (j5 <= 50) {
                    this.f3818f++;
                }
            }
        }

        public int b() {
            return this.f3819g;
        }

        public int c() {
            return this.f3820h;
        }

        public java.lang.String d() {
            return (java.lang.String) com.msec.vvv.a(2014, new java.lang.Object[]{this});
        }

        public java.lang.String e() {
            return (java.lang.String) com.msec.vvv.a(2013, new java.lang.Object[]{this});
        }
    }

    public static class b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private java.lang.String f3829e;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f3826b = 10000;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f3827c = 2;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f3828d = 0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.util.Map<android.util.Pair<java.lang.Float, java.lang.Float>, android.util.Pair<java.lang.Integer, java.lang.Long>> f3825a = new java.util.concurrent.ConcurrentHashMap();

        /* JADX INFO: renamed from: com.msec.cf$b$1, reason: invalid class name */
        public class AnonymousClass1 extends android.util.Pair {
            public AnonymousClass1(java.lang.Object obj, java.lang.Object obj2) {
                super(obj, obj2);
            }

            @Override // android.util.Pair
            public boolean equals(java.lang.Object obj) {
                if (!(obj instanceof android.util.Pair)) {
                    return false;
                }
                android.util.Pair pair = (android.util.Pair) obj;
                return ((double) java.lang.Math.abs(((java.lang.Float) pair.first).floatValue() - ((java.lang.Float) ((android.util.Pair) this).first).floatValue())) < 0.001d && ((double) java.lang.Math.abs(((java.lang.Float) pair.second).floatValue() - ((java.lang.Float) ((android.util.Pair) this).second).floatValue())) < 0.001d;
            }
        }

        public int a() {
            return ((java.lang.Integer) com.msec.vvv.a(1551, new java.lang.Object[]{this})).intValue();
        }

        public void a(float f5, float f6) {
            com.msec.vvv.a(1550, new java.lang.Object[]{this, java.lang.Float.valueOf(f5), java.lang.Float.valueOf(f6)});
        }

        public int b() {
            return this.f3828d;
        }

        public void b(float f5, float f6) {
            com.msec.vvv.a(1549, new java.lang.Object[]{this, java.lang.Float.valueOf(f5), java.lang.Float.valueOf(f6)});
        }

        public java.lang.String c() {
            return this.f3829e;
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f3831a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f3832b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f3833c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f3834d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f3835e;

        public c(android.view.MotionEvent motionEvent) {
            this.f3831a = motionEvent.getActionMasked();
            this.f3832b = motionEvent.getX();
            this.f3833c = motionEvent.getY();
            this.f3834d = motionEvent.getEventTime();
            this.f3835e = motionEvent.getDownTime();
        }
    }

    static {
        int i5 = com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO * 3;
        f3805c = i5;
        f3810h = new com.msec.cf.c[i5];
        f3811i = new java.util.LinkedList();
        f3812j = null;
        f3803a = 0;
    }

    private static int a(int i5) {
        return ((java.lang.Integer) com.msec.vvv.a(1743, new java.lang.Object[]{java.lang.Integer.valueOf(i5)})).intValue();
    }

    public static void a() {
        new java.lang.Thread(new java.lang.Runnable() { // from class: com.msec.cf.1
            @Override // java.lang.Runnable
            public void run() {
                com.msec.vvv.a(1693, new java.lang.Object[]{this});
            }
        }).start();
    }

    public static void a(android.app.Activity activity) {
        f3812j = activity;
    }

    public static synchronized void a(android.view.MotionEvent motionEvent) {
        int i5 = f3807e;
        if (i5 == f3805c - 1) {
            f3808f = true;
        }
        f3810h[i5] = new com.msec.cf.c(motionEvent);
        f3807e = (f3807e + 1) % f3805c;
        f3809g = true;
    }

    public static void a(java.util.List<java.lang.String> list) {
        com.msec.vvv.a(1742, new java.lang.Object[]{list});
    }

    public static boolean a(java.lang.String str) {
        return ((java.lang.Boolean) com.msec.vvv.a(1741, new java.lang.Object[]{str})).booleanValue();
    }

    public static void b() {
        f3811i.clear();
    }

    public static java.lang.String c() {
        return (java.lang.String) com.msec.vvv.a(1740, null);
    }

    private static int h() {
        int i5;
        return (f3808f || (i5 = f3807e) > f3804b) ? f3804b : i5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static java.lang.String i() {
        if (f3810h[0] == null) {
            return com.msec.vvv.a(723);
        }
        f3809g = false;
        com.msec.cf.a aVar = new com.msec.cf.a();
        com.msec.cf.b bVar = new com.msec.cf.b();
        try {
            int iH = h();
            int iA = a(iH);
            while (iH > 0) {
                com.msec.cf.c cVar = f3810h[iA];
                aVar.a(cVar);
                bVar.a(cVar.f3832b, cVar.f3833c);
                iH--;
                iA = (iA + 1) % f3805c;
            }
            return java.lang.Integer.valueOf(aVar.b()).toString() + com.msec.vvv.a(1610) + java.lang.Integer.valueOf(aVar.a()).toString() + com.msec.vvv.a(1610) + java.lang.Integer.valueOf(aVar.c()).toString() + com.msec.vvv.a(1610) + java.lang.Integer.valueOf(bVar.b()).toString() + com.msec.vvv.a(1610) + java.lang.Integer.valueOf(bVar.a()).toString() + com.msec.vvv.a(1610) + aVar.e() + com.msec.vvv.a(722) + bVar.c() + aVar.d() + com.msec.vvv.a(1610) + f3803a;
        } catch (java.lang.Throwable unused) {
            return "";
        }
    }
}
