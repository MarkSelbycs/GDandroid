package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class l implements android.hardware.SensorEventListener, com.msec.n {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static float[] f3870d = new float[3];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f3871e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static double f3872f = 3.141592653589793d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private android.hardware.SensorManager f3873a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final java.lang.String f3874b = com.msec.vvv.a(1610);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private java.lang.String f3875c = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private java.util.LinkedHashMap<java.lang.Integer, com.msec.l.a> f3876g = new java.util.LinkedHashMap<java.lang.Integer, com.msec.l.a>() { // from class: com.msec.l.1
        {
            put(10, com.msec.l.this.new c(com.msec.u.b(64), 0.2f));
            put(9, com.msec.l.this.new c(com.msec.u.b(com.alibaba.fastjson.asm.Opcodes.IOR), 0.01f));
            put(4, com.msec.l.this.new c(com.msec.u.b(256), 0.01f));
            put(2, com.msec.l.this.new c(com.msec.u.b(512), 1.0E-4f));
            put(5, com.msec.l.this.new a(com.msec.u.b(2048)));
            put(8, com.msec.l.this.new a(com.msec.u.b(2048)));
            put(6, com.msec.l.this.new a(false));
            put(13, com.msec.l.this.new a(false));
            put(12, com.msec.l.this.new a(false));
            put(19, com.msec.l.this.new b(com.msec.u.b(8192)));
        }
    };

    public class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f3879b;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f3878a = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f3880c = 0.0f;

        public a(boolean z4) {
            this.f3879b = z4;
        }

        public java.lang.String toString() {
            return (java.lang.String) com.msec.vvv.a(1727, new java.lang.Object[]{this});
        }
    }

    public class b extends com.msec.l.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f3882e;

        public b(boolean z4) {
            super(z4);
            this.f3882e = 0L;
        }

        @Override // com.msec.l.a
        public java.lang.String toString() {
            if (!this.f3878a) {
                return com.msec.vvv.a(1610);
            }
            return java.lang.Integer.toString((int) this.f3880c) + com.msec.vvv.a(1610);
        }
    }

    public class c extends com.msec.l.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f3884e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f3885f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public float f3886g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f3887h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public float f3888i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f3889j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public float f3890k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public float f3891l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f3892m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f3893n;

        public c(boolean z4, float f5) {
            super(z4);
            this.f3887h = 0.0f;
            this.f3888i = 0.0f;
            this.f3889j = 0.0f;
            this.f3890k = 0.0f;
            this.f3892m = 0;
            this.f3893n = true;
            this.f3891l = f5;
        }

        @Override // com.msec.l.a
        public java.lang.String toString() {
            return (java.lang.String) com.msec.vvv.a(1718, new java.lang.Object[]{this});
        }
    }

    private void a(com.msec.l.a aVar, float[] fArr) {
        com.msec.l.c cVar = (com.msec.l.c) aVar;
        float f5 = fArr[0];
        float f6 = fArr[1];
        float f7 = fArr[2];
        if (cVar.f3893n) {
            cVar.f3893n = false;
            cVar.f3884e = f5;
            cVar.f3885f = f6;
            cVar.f3886g = f7;
        }
        float f8 = cVar.f3884e;
        float f9 = (f8 - f5) * (f8 - f5);
        float f10 = cVar.f3885f;
        float f11 = f9 + ((f10 - f6) * (f10 - f6));
        float f12 = cVar.f3886g;
        float f13 = f11 + ((f12 - f7) * (f12 - f7));
        if (java.lang.Math.sqrt(f13) > cVar.f3891l) {
            cVar.f3892m++;
        }
        if (f13 > cVar.f3890k) {
            cVar.f3890k = f13;
            cVar.f3887h = cVar.f3884e - f5;
            cVar.f3888i = cVar.f3885f - f6;
            cVar.f3889j = cVar.f3886g - f7;
        }
        cVar.f3884e = f5;
        cVar.f3885f = f6;
        cVar.f3886g = f7;
    }

    public static java.lang.String b() {
        if (!f3871e) {
            return null;
        }
        float[] fArr = f3870d;
        return java.lang.String.valueOf((int) (90.0d - java.lang.Math.atan2(fArr[2], ((java.lang.Math.sqrt((fArr[0] * fArr[0]) + (fArr[1] * fArr[1])) / f3872f) * (-90.0d)) * 2.0d)));
    }

    private java.lang.String c() {
        return (java.lang.String) com.msec.vvv.a(1686, new java.lang.Object[]{this});
    }

    @Override // com.msec.n
    public java.lang.String a() {
        return (java.lang.String) com.msec.vvv.a(1685, new java.lang.Object[]{this});
    }

    @Override // com.msec.n
    public void a(android.content.Context context) {
        com.msec.vvv.a(1684, new java.lang.Object[]{this, context});
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(android.hardware.Sensor sensor, int i5) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(android.hardware.SensorEvent sensorEvent) {
        float[] fArr;
        if (sensorEvent != null) {
            try {
                android.hardware.Sensor sensor = sensorEvent.sensor;
                if (sensor != null && (fArr = sensorEvent.values) != null) {
                    int type = sensor.getType();
                    com.msec.l.a aVar = this.f3876g.get(java.lang.Integer.valueOf(type));
                    if (aVar == null && 1 == type) {
                        aVar = this.f3876g.get(10);
                    }
                    if (aVar == null) {
                        return;
                    }
                    if (5 == type || 13 == type || 6 == type || 8 == type || 12 == type) {
                        aVar.f3880c = fArr[0];
                        android.hardware.SensorManager sensorManager = this.f3873a;
                        if (sensorManager != null) {
                            sensorManager.unregisterListener(this, sensorEvent.sensor);
                        }
                    } else if (19 == type) {
                        com.msec.l.b bVar = (com.msec.l.b) aVar;
                        long j5 = bVar.f3882e;
                        if (0 == j5 && fArr[0] > 0.0f) {
                            bVar.f3882e = (long) fArr[0];
                        } else if (fArr[0] > 0.0f && fArr[0] > j5) {
                            bVar.f3880c = ((long) fArr[0]) - j5;
                        }
                    } else {
                        int i5 = 0;
                        for (float f5 : fArr) {
                            if (f5 == 0.0f) {
                                i5++;
                            }
                        }
                        if (fArr.length < 3) {
                            return;
                        }
                        if (i5 >= 3 && type != 4) {
                            return;
                        } else {
                            a(aVar, fArr);
                        }
                    }
                    aVar.f3878a = true;
                }
            } catch (java.lang.Throwable unused) {
            }
        }
    }
}
