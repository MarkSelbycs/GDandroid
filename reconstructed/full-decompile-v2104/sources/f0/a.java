package f0;

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
/* JADX INFO: compiled from: SimpleSQLiteQuery.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class a implements f0.j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final f0.a.C0048a f4172c = new f0.a.C0048a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f4173a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.Object[] f4174b;

    /* JADX INFO: renamed from: f0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: SimpleSQLiteQuery.kt */
    @kotlin.Metadata
    public static final class C0048a {
        public C0048a() {
        }

        public /* synthetic */ C0048a(m3.g gVar) {
            this();
        }

        public final void a(f0.i iVar, int i5, java.lang.Object obj) {
            if (obj == null) {
                iVar.d0(i5);
                return;
            }
            if (obj instanceof byte[]) {
                iVar.a0(i5, (byte[]) obj);
                return;
            }
            if (obj instanceof java.lang.Float) {
                iVar.g0(i5, ((java.lang.Number) obj).floatValue());
                return;
            }
            if (obj instanceof java.lang.Double) {
                iVar.g0(i5, ((java.lang.Number) obj).doubleValue());
                return;
            }
            if (obj instanceof java.lang.Long) {
                iVar.G(i5, ((java.lang.Number) obj).longValue());
                return;
            }
            if (obj instanceof java.lang.Integer) {
                iVar.G(i5, ((java.lang.Number) obj).intValue());
                return;
            }
            if (obj instanceof java.lang.Short) {
                iVar.G(i5, ((java.lang.Number) obj).shortValue());
                return;
            }
            if (obj instanceof java.lang.Byte) {
                iVar.G(i5, ((java.lang.Number) obj).byteValue());
                return;
            }
            if (obj instanceof java.lang.String) {
                iVar.E(i5, (java.lang.String) obj);
                return;
            }
            if (obj instanceof java.lang.Boolean) {
                iVar.G(i5, ((java.lang.Boolean) obj).booleanValue() ? 1L : 0L);
                return;
            }
            throw new java.lang.IllegalArgumentException("Cannot bind " + obj + " at index " + i5 + " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String");
        }

        @android.annotation.SuppressLint({"SyntheticAccessor"})
        public final void b(f0.i iVar, java.lang.Object[] objArr) {
            m3.k.e(iVar, "statement");
            if (objArr == null) {
                return;
            }
            int length = objArr.length;
            int i5 = 0;
            while (i5 < length) {
                java.lang.Object obj = objArr[i5];
                i5++;
                a(iVar, i5, obj);
            }
        }
    }

    public a(java.lang.String str, java.lang.Object[] objArr) {
        m3.k.e(str, "query");
        this.f4173a = str;
        this.f4174b = objArr;
    }

    @Override // f0.j
    public void c(f0.i iVar) {
        m3.k.e(iVar, "statement");
        f4172c.b(iVar, this.f4174b);
    }

    @Override // f0.j
    public java.lang.String e() {
        return this.f4173a;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(java.lang.String str) {
        this(str, null);
        m3.k.e(str, "query");
    }
}
