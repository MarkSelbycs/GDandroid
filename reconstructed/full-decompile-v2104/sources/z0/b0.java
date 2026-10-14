package z0;

/* JADX INFO: compiled from: WorkTypeConverters.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final z0.b0 f6988a = new z0.b0();

    /* JADX INFO: compiled from: WorkTypeConverters.kt */
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6989a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f6990b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f6991c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final /* synthetic */ int[] f6992d;

        static {
            int[] iArr = new int[q0.y.c.values().length];
            try {
                iArr[q0.y.c.ENQUEUED.ordinal()] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                iArr[q0.y.c.RUNNING.ordinal()] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                iArr[q0.y.c.SUCCEEDED.ordinal()] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
            try {
                iArr[q0.y.c.FAILED.ordinal()] = 4;
            } catch (java.lang.NoSuchFieldError unused4) {
            }
            try {
                iArr[q0.y.c.BLOCKED.ordinal()] = 5;
            } catch (java.lang.NoSuchFieldError unused5) {
            }
            try {
                iArr[q0.y.c.CANCELLED.ordinal()] = 6;
            } catch (java.lang.NoSuchFieldError unused6) {
            }
            f6989a = iArr;
            int[] iArr2 = new int[q0.a.values().length];
            try {
                iArr2[q0.a.EXPONENTIAL.ordinal()] = 1;
            } catch (java.lang.NoSuchFieldError unused7) {
            }
            try {
                iArr2[q0.a.LINEAR.ordinal()] = 2;
            } catch (java.lang.NoSuchFieldError unused8) {
            }
            f6990b = iArr2;
            int[] iArr3 = new int[q0.o.values().length];
            try {
                iArr3[q0.o.NOT_REQUIRED.ordinal()] = 1;
            } catch (java.lang.NoSuchFieldError unused9) {
            }
            try {
                iArr3[q0.o.CONNECTED.ordinal()] = 2;
            } catch (java.lang.NoSuchFieldError unused10) {
            }
            try {
                iArr3[q0.o.UNMETERED.ordinal()] = 3;
            } catch (java.lang.NoSuchFieldError unused11) {
            }
            try {
                iArr3[q0.o.NOT_ROAMING.ordinal()] = 4;
            } catch (java.lang.NoSuchFieldError unused12) {
            }
            try {
                iArr3[q0.o.METERED.ordinal()] = 5;
            } catch (java.lang.NoSuchFieldError unused13) {
            }
            f6991c = iArr3;
            int[] iArr4 = new int[q0.s.values().length];
            try {
                iArr4[q0.s.RUN_AS_NON_EXPEDITED_WORK_REQUEST.ordinal()] = 1;
            } catch (java.lang.NoSuchFieldError unused14) {
            }
            try {
                iArr4[q0.s.DROP_WORK_REQUEST.ordinal()] = 2;
            } catch (java.lang.NoSuchFieldError unused15) {
            }
            f6992d = iArr4;
        }
    }

    public static final int a(q0.a aVar) {
        m3.k.e(aVar, "backoffPolicy");
        int i5 = z0.b0.a.f6990b[aVar.ordinal()];
        if (i5 == 1) {
            return 0;
        }
        if (i5 == 2) {
            return 1;
        }
        throw new a3.g();
    }

    public static final java.util.Set<q0.d.c> b(byte[] bArr) throws java.lang.IllegalAccessException, java.io.IOException, java.lang.reflect.InvocationTargetException {
        m3.k.e(bArr, "bytes");
        java.util.LinkedHashSet linkedHashSet = new java.util.LinkedHashSet();
        if (bArr.length == 0) {
            return linkedHashSet;
        }
        java.io.ByteArrayInputStream byteArrayInputStream = new java.io.ByteArrayInputStream(bArr);
        try {
            try {
                java.io.ObjectInputStream objectInputStream = new java.io.ObjectInputStream(byteArrayInputStream);
                try {
                    int i5 = objectInputStream.readInt();
                    for (int i6 = 0; i6 < i5; i6++) {
                        android.net.Uri uri = android.net.Uri.parse(objectInputStream.readUTF());
                        boolean z4 = objectInputStream.readBoolean();
                        m3.k.d(uri, "uri");
                        linkedHashSet.add(new q0.d.c(uri, z4));
                    }
                    a3.o oVar = a3.o.f122a;
                    j3.a.a(objectInputStream, null);
                } catch (java.lang.Throwable th) {
                    try {
                        throw th;
                    } catch (java.lang.Throwable th2) {
                        j3.a.a(objectInputStream, th);
                        throw th2;
                    }
                }
            } catch (java.io.IOException e5) {
                e5.printStackTrace();
            }
            a3.o oVar2 = a3.o.f122a;
            j3.a.a(byteArrayInputStream, null);
            return linkedHashSet;
        } catch (java.lang.Throwable th3) {
            try {
                throw th3;
            } catch (java.lang.Throwable th4) {
                j3.a.a(byteArrayInputStream, th3);
                throw th4;
            }
        }
    }

    public static final q0.a c(int i5) {
        if (i5 == 0) {
            return q0.a.EXPONENTIAL;
        }
        if (i5 == 1) {
            return q0.a.LINEAR;
        }
        throw new java.lang.IllegalArgumentException("Could not convert " + i5 + " to BackoffPolicy");
    }

    public static final q0.o d(int i5) {
        if (i5 == 0) {
            return q0.o.NOT_REQUIRED;
        }
        if (i5 == 1) {
            return q0.o.CONNECTED;
        }
        if (i5 == 2) {
            return q0.o.UNMETERED;
        }
        if (i5 == 3) {
            return q0.o.NOT_ROAMING;
        }
        if (i5 == 4) {
            return q0.o.METERED;
        }
        if (android.os.Build.VERSION.SDK_INT >= 30 && i5 == 5) {
            return q0.o.TEMPORARILY_UNMETERED;
        }
        throw new java.lang.IllegalArgumentException("Could not convert " + i5 + " to NetworkType");
    }

    public static final q0.s e(int i5) {
        if (i5 == 0) {
            return q0.s.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
        }
        if (i5 == 1) {
            return q0.s.DROP_WORK_REQUEST;
        }
        throw new java.lang.IllegalArgumentException("Could not convert " + i5 + " to OutOfQuotaPolicy");
    }

    public static final q0.y.c f(int i5) {
        if (i5 == 0) {
            return q0.y.c.ENQUEUED;
        }
        if (i5 == 1) {
            return q0.y.c.RUNNING;
        }
        if (i5 == 2) {
            return q0.y.c.SUCCEEDED;
        }
        if (i5 == 3) {
            return q0.y.c.FAILED;
        }
        if (i5 == 4) {
            return q0.y.c.BLOCKED;
        }
        if (i5 == 5) {
            return q0.y.c.CANCELLED;
        }
        throw new java.lang.IllegalArgumentException("Could not convert " + i5 + " to State");
    }

    public static final int g(q0.o oVar) {
        m3.k.e(oVar, "networkType");
        int i5 = z0.b0.a.f6991c[oVar.ordinal()];
        if (i5 == 1) {
            return 0;
        }
        if (i5 == 2) {
            return 1;
        }
        if (i5 == 3) {
            return 2;
        }
        if (i5 == 4) {
            return 3;
        }
        if (i5 == 5) {
            return 4;
        }
        if (android.os.Build.VERSION.SDK_INT >= 30 && oVar == q0.o.TEMPORARILY_UNMETERED) {
            return 5;
        }
        throw new java.lang.IllegalArgumentException("Could not convert " + oVar + " to int");
    }

    public static final int h(q0.s sVar) {
        m3.k.e(sVar, "policy");
        int i5 = z0.b0.a.f6992d[sVar.ordinal()];
        if (i5 == 1) {
            return 0;
        }
        if (i5 == 2) {
            return 1;
        }
        throw new a3.g();
    }

    public static final byte[] i(java.util.Set<q0.d.c> set) throws java.lang.IllegalAccessException, java.io.IOException, java.lang.reflect.InvocationTargetException {
        m3.k.e(set, "triggers");
        if (set.isEmpty()) {
            return new byte[0];
        }
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        try {
            java.io.ObjectOutputStream objectOutputStream = new java.io.ObjectOutputStream(byteArrayOutputStream);
            try {
                objectOutputStream.writeInt(set.size());
                for (q0.d.c cVar : set) {
                    objectOutputStream.writeUTF(cVar.a().toString());
                    objectOutputStream.writeBoolean(cVar.b());
                }
                a3.o oVar = a3.o.f122a;
                j3.a.a(objectOutputStream, null);
                j3.a.a(byteArrayOutputStream, null);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                m3.k.d(byteArray, "outputStream.toByteArray()");
                return byteArray;
            } catch (java.lang.Throwable th) {
                try {
                    throw th;
                } catch (java.lang.Throwable th2) {
                    j3.a.a(objectOutputStream, th);
                    throw th2;
                }
            }
        } catch (java.lang.Throwable th3) {
            try {
                throw th3;
            } catch (java.lang.Throwable th4) {
                j3.a.a(byteArrayOutputStream, th3);
                throw th4;
            }
        }
    }

    public static final int j(q0.y.c cVar) {
        m3.k.e(cVar, "state");
        switch (z0.b0.a.f6989a[cVar.ordinal()]) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return 5;
            default:
                throw new a3.g();
        }
    }
}
