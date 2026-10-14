package androidx.room;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:68)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:31)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:31)
    */
/* JADX INFO: compiled from: RoomSQLiteQuery.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class l0 implements f0.j, f0.i {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final androidx.room.l0.a f2348i = new androidx.room.l0.a(null);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final java.util.TreeMap<java.lang.Integer, androidx.room.l0> f2349o = new java.util.TreeMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2350a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile java.lang.String f2351b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long[] f2352c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final double[] f2353d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final java.lang.String[] f2354e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[][] f2355f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f2356g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2357h;

    /* JADX INFO: compiled from: RoomSQLiteQuery.kt */
    @kotlin.Metadata
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(m3.g gVar) {
            this();
        }

        public final androidx.room.l0 a(java.lang.String str, int i5) {
            m3.k.e(str, "query");
            java.util.TreeMap<java.lang.Integer, androidx.room.l0> treeMap = androidx.room.l0.f2349o;
            synchronized (treeMap) {
                java.util.Map.Entry<java.lang.Integer, androidx.room.l0> entryCeilingEntry = treeMap.ceilingEntry(java.lang.Integer.valueOf(i5));
                if (entryCeilingEntry == null) {
                    a3.o oVar = a3.o.f122a;
                    androidx.room.l0 l0Var = new androidx.room.l0(i5, null);
                    l0Var.i(str, i5);
                    return l0Var;
                }
                treeMap.remove(entryCeilingEntry.getKey());
                androidx.room.l0 value = entryCeilingEntry.getValue();
                value.i(str, i5);
                m3.k.d(value, "sqliteQuery");
                return value;
            }
        }

        public final void b() {
            java.util.TreeMap<java.lang.Integer, androidx.room.l0> treeMap = androidx.room.l0.f2349o;
            if (treeMap.size() <= 15) {
                return;
            }
            int size = treeMap.size() - 10;
            java.util.Iterator<java.lang.Integer> it = treeMap.descendingKeySet().iterator();
            m3.k.d(it, "queryPool.descendingKeySet().iterator()");
            while (true) {
                int i5 = size - 1;
                if (size <= 0) {
                    return;
                }
                it.next();
                it.remove();
                size = i5;
            }
        }
    }

    public l0(int i5) {
        this.f2350a = i5;
        int i6 = i5 + 1;
        this.f2356g = new int[i6];
        this.f2352c = new long[i6];
        this.f2353d = new double[i6];
        this.f2354e = new java.lang.String[i6];
        this.f2355f = new byte[i6][];
    }

    public /* synthetic */ l0(int i5, m3.g gVar) {
        this(i5);
    }

    public static final androidx.room.l0 f(java.lang.String str, int i5) {
        return f2348i.a(str, i5);
    }

    @Override // f0.i
    public void E(int i5, java.lang.String str) {
        m3.k.e(str, "value");
        this.f2356g[i5] = 4;
        this.f2354e[i5] = str;
    }

    @Override // f0.i
    public void G(int i5, long j5) {
        this.f2356g[i5] = 2;
        this.f2352c[i5] = j5;
    }

    @Override // f0.i
    public void a0(int i5, byte[] bArr) {
        m3.k.e(bArr, "value");
        this.f2356g[i5] = 5;
        this.f2355f[i5] = bArr;
    }

    @Override // f0.j
    public void c(f0.i iVar) {
        m3.k.e(iVar, "statement");
        int iH = h();
        if (1 > iH) {
            return;
        }
        int i5 = 1;
        while (true) {
            int i6 = this.f2356g[i5];
            if (i6 == 1) {
                iVar.d0(i5);
            } else if (i6 == 2) {
                iVar.G(i5, this.f2352c[i5]);
            } else if (i6 == 3) {
                iVar.g0(i5, this.f2353d[i5]);
            } else if (i6 == 4) {
                java.lang.String str = this.f2354e[i5];
                if (str == null) {
                    throw new java.lang.IllegalArgumentException("Required value was null.".toString());
                }
                iVar.E(i5, str);
            } else if (i6 == 5) {
                byte[] bArr = this.f2355f[i5];
                if (bArr == null) {
                    throw new java.lang.IllegalArgumentException("Required value was null.".toString());
                }
                iVar.a0(i5, bArr);
            }
            if (i5 == iH) {
                return;
            } else {
                i5++;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // f0.i
    public void d0(int i5) {
        this.f2356g[i5] = 1;
    }

    @Override // f0.j
    public java.lang.String e() {
        java.lang.String str = this.f2351b;
        if (str != null) {
            return str;
        }
        throw new java.lang.IllegalStateException("Required value was null.".toString());
    }

    @Override // f0.i
    public void g0(int i5, double d5) {
        this.f2356g[i5] = 3;
        this.f2353d[i5] = d5;
    }

    public int h() {
        return this.f2357h;
    }

    public final void i(java.lang.String str, int i5) {
        m3.k.e(str, "query");
        this.f2351b = str;
        this.f2357h = i5;
    }

    public final void j() {
        java.util.TreeMap<java.lang.Integer, androidx.room.l0> treeMap = f2349o;
        synchronized (treeMap) {
            treeMap.put(java.lang.Integer.valueOf(this.f2350a), this);
            f2348i.b();
            a3.o oVar = a3.o.f122a;
        }
    }
}
