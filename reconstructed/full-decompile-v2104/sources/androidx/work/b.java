package androidx.work;

/* JADX INFO: compiled from: Data.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.lang.String f2638b = q0.n.i("Data");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final androidx.work.b f2639c = new androidx.work.b.a().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.Map<java.lang.String, java.lang.Object> f2640a;

    /* JADX INFO: compiled from: Data.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.util.Map<java.lang.String, java.lang.Object> f2641a = new java.util.HashMap();

        public androidx.work.b a() throws java.lang.Throwable {
            androidx.work.b bVar = new androidx.work.b((java.util.Map<java.lang.String, ?>) this.f2641a);
            androidx.work.b.q(bVar);
            return bVar;
        }

        public androidx.work.b.a b(java.lang.String str, java.lang.Object obj) {
            if (obj == null) {
                this.f2641a.put(str, null);
            } else {
                java.lang.Class<?> cls = obj.getClass();
                if (cls == java.lang.Boolean.class || cls == java.lang.Byte.class || cls == java.lang.Integer.class || cls == java.lang.Long.class || cls == java.lang.Float.class || cls == java.lang.Double.class || cls == java.lang.String.class || cls == java.lang.Boolean[].class || cls == java.lang.Byte[].class || cls == java.lang.Integer[].class || cls == java.lang.Long[].class || cls == java.lang.Float[].class || cls == java.lang.Double[].class || cls == java.lang.String[].class) {
                    this.f2641a.put(str, obj);
                } else if (cls == boolean[].class) {
                    this.f2641a.put(str, androidx.work.b.a((boolean[]) obj));
                } else if (cls == byte[].class) {
                    this.f2641a.put(str, androidx.work.b.b((byte[]) obj));
                } else if (cls == int[].class) {
                    this.f2641a.put(str, androidx.work.b.e((int[]) obj));
                } else if (cls == long[].class) {
                    this.f2641a.put(str, androidx.work.b.f((long[]) obj));
                } else if (cls == float[].class) {
                    this.f2641a.put(str, androidx.work.b.d((float[]) obj));
                } else {
                    if (cls != double[].class) {
                        throw new java.lang.IllegalArgumentException("Key " + str + " has invalid type " + cls);
                    }
                    this.f2641a.put(str, androidx.work.b.c((double[]) obj));
                }
            }
            return this;
        }

        public androidx.work.b.a c(java.util.Map<java.lang.String, java.lang.Object> map) {
            for (java.util.Map.Entry<java.lang.String, java.lang.Object> entry : map.entrySet()) {
                b(entry.getKey(), entry.getValue());
            }
            return this;
        }
    }

    public b() {
    }

    public static java.lang.Boolean[] a(boolean[] zArr) {
        java.lang.Boolean[] boolArr = new java.lang.Boolean[zArr.length];
        for (int i5 = 0; i5 < zArr.length; i5++) {
            boolArr[i5] = java.lang.Boolean.valueOf(zArr[i5]);
        }
        return boolArr;
    }

    public static java.lang.Byte[] b(byte[] bArr) {
        java.lang.Byte[] bArr2 = new java.lang.Byte[bArr.length];
        for (int i5 = 0; i5 < bArr.length; i5++) {
            bArr2[i5] = java.lang.Byte.valueOf(bArr[i5]);
        }
        return bArr2;
    }

    public static java.lang.Double[] c(double[] dArr) {
        java.lang.Double[] dArr2 = new java.lang.Double[dArr.length];
        for (int i5 = 0; i5 < dArr.length; i5++) {
            dArr2[i5] = java.lang.Double.valueOf(dArr[i5]);
        }
        return dArr2;
    }

    public static java.lang.Float[] d(float[] fArr) {
        java.lang.Float[] fArr2 = new java.lang.Float[fArr.length];
        for (int i5 = 0; i5 < fArr.length; i5++) {
            fArr2[i5] = java.lang.Float.valueOf(fArr[i5]);
        }
        return fArr2;
    }

    public static java.lang.Integer[] e(int[] iArr) {
        java.lang.Integer[] numArr = new java.lang.Integer[iArr.length];
        for (int i5 = 0; i5 < iArr.length; i5++) {
            numArr[i5] = java.lang.Integer.valueOf(iArr[i5]);
        }
        return numArr;
    }

    public static java.lang.Long[] f(long[] jArr) {
        java.lang.Long[] lArr = new java.lang.Long[jArr.length];
        for (int i5 = 0; i5 < jArr.length; i5++) {
            lArr[i5] = java.lang.Long.valueOf(jArr[i5]);
        }
        return lArr;
    }

    public static byte[] g(java.lang.Byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        for (int i5 = 0; i5 < bArr.length; i5++) {
            bArr2[i5] = bArr[i5].byteValue();
        }
        return bArr2;
    }

    public static double[] h(java.lang.Double[] dArr) {
        double[] dArr2 = new double[dArr.length];
        for (int i5 = 0; i5 < dArr.length; i5++) {
            dArr2[i5] = dArr[i5].doubleValue();
        }
        return dArr2;
    }

    public static float[] i(java.lang.Float[] fArr) {
        float[] fArr2 = new float[fArr.length];
        for (int i5 = 0; i5 < fArr.length; i5++) {
            fArr2[i5] = fArr[i5].floatValue();
        }
        return fArr2;
    }

    public static int[] j(java.lang.Integer[] numArr) {
        int[] iArr = new int[numArr.length];
        for (int i5 = 0; i5 < numArr.length; i5++) {
            iArr[i5] = numArr[i5].intValue();
        }
        return iArr;
    }

    public static long[] k(java.lang.Long[] lArr) {
        long[] jArr = new long[lArr.length];
        for (int i5 = 0; i5 < lArr.length; i5++) {
            jArr[i5] = lArr[i5].longValue();
        }
        return jArr;
    }

    public static boolean[] l(java.lang.Boolean[] boolArr) {
        boolean[] zArr = new boolean[boolArr.length];
        for (int i5 = 0; i5 < boolArr.length; i5++) {
            zArr[i5] = boolArr[i5].booleanValue();
        }
        return zArr;
    }

    /* JADX WARN: Code duplicated, block: B:54:0x004e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static androidx.work.b m(byte[] bArr) throws java.lang.Throwable {
        java.lang.Throwable th;
        java.io.ObjectInputStream objectInputStream;
        java.lang.Throwable e5;
        if (bArr.length > 10240) {
            throw new java.lang.IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
        }
        java.util.HashMap map = new java.util.HashMap();
        java.io.ByteArrayInputStream byteArrayInputStream = new java.io.ByteArrayInputStream(bArr);
        java.io.ObjectInputStream objectInputStream2 = null;
        try {
            try {
                try {
                    objectInputStream = new java.io.ObjectInputStream(byteArrayInputStream);
                    try {
                        for (int i5 = objectInputStream.readInt(); i5 > 0; i5--) {
                            map.put(objectInputStream.readUTF(), objectInputStream.readObject());
                        }
                        try {
                            objectInputStream.close();
                        } catch (java.io.IOException e6) {
                            android.util.Log.e(f2638b, "Error in Data#fromByteArray: ", e6);
                        }
                        byteArrayInputStream.close();
                    } catch (java.io.IOException e7) {
                        e5 = e7;
                        android.util.Log.e(f2638b, "Error in Data#fromByteArray: ", e5);
                        if (objectInputStream != null) {
                            try {
                                objectInputStream.close();
                            } catch (java.io.IOException e8) {
                                android.util.Log.e(f2638b, "Error in Data#fromByteArray: ", e8);
                            }
                        }
                        byteArrayInputStream.close();
                    } catch (java.lang.ClassNotFoundException e9) {
                        e5 = e9;
                        android.util.Log.e(f2638b, "Error in Data#fromByteArray: ", e5);
                        if (objectInputStream != null) {
                            objectInputStream.close();
                        }
                        byteArrayInputStream.close();
                    }
                } catch (java.lang.Throwable th2) {
                    th = th2;
                    if (0 != 0) {
                        try {
                            objectInputStream2.close();
                        } catch (java.io.IOException e10) {
                            android.util.Log.e(f2638b, "Error in Data#fromByteArray: ", e10);
                        }
                    }
                    try {
                        byteArrayInputStream.close();
                        throw th;
                    } catch (java.io.IOException e11) {
                        android.util.Log.e(f2638b, "Error in Data#fromByteArray: ", e11);
                        throw th;
                    }
                }
            } catch (java.io.IOException e12) {
                e = e12;
                java.lang.Throwable th3 = e;
                objectInputStream = null;
                e5 = th3;
                android.util.Log.e(f2638b, "Error in Data#fromByteArray: ", e5);
                if (objectInputStream != null) {
                    objectInputStream.close();
                }
                byteArrayInputStream.close();
                return new androidx.work.b(map);
            } catch (java.lang.ClassNotFoundException e13) {
                e = e13;
                java.lang.Throwable th4 = e;
                objectInputStream = null;
                e5 = th4;
                android.util.Log.e(f2638b, "Error in Data#fromByteArray: ", e5);
                if (objectInputStream != null) {
                    objectInputStream.close();
                }
                byteArrayInputStream.close();
                return new androidx.work.b(map);
            } catch (java.lang.Throwable th5) {
                th = th5;
                if (0 != 0) {
                    objectInputStream2.close();
                }
                byteArrayInputStream.close();
                throw th;
            }
        } catch (java.io.IOException e14) {
            android.util.Log.e(f2638b, "Error in Data#fromByteArray: ", e14);
        }
        return new androidx.work.b(map);
    }

    public static byte[] q(androidx.work.b bVar) throws java.lang.Throwable {
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        java.io.ObjectOutputStream objectOutputStream = null;
        try {
            try {
                java.io.ObjectOutputStream objectOutputStream2 = new java.io.ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream2.writeInt(bVar.p());
                    for (java.util.Map.Entry<java.lang.String, java.lang.Object> entry : bVar.f2640a.entrySet()) {
                        objectOutputStream2.writeUTF(entry.getKey());
                        objectOutputStream2.writeObject(entry.getValue());
                    }
                    try {
                        objectOutputStream2.close();
                    } catch (java.io.IOException e5) {
                        android.util.Log.e(f2638b, "Error in Data#toByteArray: ", e5);
                    }
                    try {
                        byteArrayOutputStream.close();
                    } catch (java.io.IOException e6) {
                        android.util.Log.e(f2638b, "Error in Data#toByteArray: ", e6);
                    }
                    if (byteArrayOutputStream.size() <= 10240) {
                        return byteArrayOutputStream.toByteArray();
                    }
                    throw new java.lang.IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
                } catch (java.io.IOException e7) {
                    e = e7;
                    objectOutputStream = objectOutputStream2;
                    android.util.Log.e(f2638b, "Error in Data#toByteArray: ", e);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (java.io.IOException e8) {
                            android.util.Log.e(f2638b, "Error in Data#toByteArray: ", e8);
                        }
                    }
                    try {
                        byteArrayOutputStream.close();
                    } catch (java.io.IOException e9) {
                        android.util.Log.e(f2638b, "Error in Data#toByteArray: ", e9);
                    }
                    return byteArray;
                } catch (java.lang.Throwable th) {
                    th = th;
                    objectOutputStream = objectOutputStream2;
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (java.io.IOException e10) {
                            android.util.Log.e(f2638b, "Error in Data#toByteArray: ", e10);
                        }
                    }
                    try {
                        byteArrayOutputStream.close();
                        throw th;
                    } catch (java.io.IOException e11) {
                        android.util.Log.e(f2638b, "Error in Data#toByteArray: ", e11);
                        throw th;
                    }
                }
            } catch (java.lang.Throwable th2) {
                th = th2;
            }
        } catch (java.io.IOException e12) {
            e = e12;
        }
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || androidx.work.b.class != obj.getClass()) {
            return false;
        }
        androidx.work.b bVar = (androidx.work.b) obj;
        java.util.Set<java.lang.String> setKeySet = this.f2640a.keySet();
        if (!setKeySet.equals(bVar.f2640a.keySet())) {
            return false;
        }
        for (java.lang.String str : setKeySet) {
            java.lang.Object obj2 = this.f2640a.get(str);
            java.lang.Object obj3 = bVar.f2640a.get(str);
            if (!((obj2 == null || obj3 == null) ? obj2 == obj3 : ((obj2 instanceof java.lang.Object[]) && (obj3 instanceof java.lang.Object[])) ? java.util.Arrays.deepEquals((java.lang.Object[]) obj2, (java.lang.Object[]) obj3) : obj2.equals(obj3))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return this.f2640a.hashCode() * 31;
    }

    public java.util.Map<java.lang.String, java.lang.Object> n() {
        return java.util.Collections.unmodifiableMap(this.f2640a);
    }

    public java.lang.String o(java.lang.String str) {
        java.lang.Object obj = this.f2640a.get(str);
        if (obj instanceof java.lang.String) {
            return (java.lang.String) obj;
        }
        return null;
    }

    public int p() {
        return this.f2640a.size();
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder("Data {");
        if (!this.f2640a.isEmpty()) {
            for (java.lang.String str : this.f2640a.keySet()) {
                sb.append(str);
                sb.append(" : ");
                java.lang.Object obj = this.f2640a.get(str);
                if (obj instanceof java.lang.Object[]) {
                    sb.append(java.util.Arrays.toString((java.lang.Object[]) obj));
                } else {
                    sb.append(obj);
                }
                sb.append(", ");
            }
        }
        sb.append("}");
        return sb.toString();
    }

    public b(androidx.work.b bVar) {
        this.f2640a = new java.util.HashMap(bVar.f2640a);
    }

    public b(java.util.Map<java.lang.String, ?> map) {
        this.f2640a = new java.util.HashMap(map);
    }
}
