package androidx.room;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:68)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:31)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: compiled from: Room.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final androidx.room.h0 f2286a = new androidx.room.h0();

    public static final <T extends androidx.room.i0> androidx.room.i0.a<T> a(android.content.Context context, java.lang.Class<T> cls, java.lang.String str) {
        m3.k.e(context, "context");
        m3.k.e(cls, "klass");
        if (true ^ (str == null || s3.l.i(str))) {
            return new androidx.room.i0.a<>(context, cls, str);
        }
        throw new java.lang.IllegalArgumentException("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder".toString());
    }

    public static final <T, C> T b(java.lang.Class<C> cls, java.lang.String str) {
        java.lang.String str2;
        m3.k.e(cls, "klass");
        m3.k.e(str, "suffix");
        java.lang.Package r5 = cls.getPackage();
        m3.k.b(r5);
        java.lang.String name = r5.getName();
        java.lang.String canonicalName = cls.getCanonicalName();
        m3.k.b(canonicalName);
        m3.k.d(name, "fullPackage");
        if (!(name.length() == 0)) {
            canonicalName = canonicalName.substring(name.length() + 1);
            m3.k.d(canonicalName, "this as java.lang.String).substring(startIndex)");
        }
        java.lang.String str3 = s3.l.l(canonicalName, '.', '_', false, 4, null) + str;
        try {
            if (name.length() == 0) {
                str2 = str3;
            } else {
                str2 = name + '.' + str3;
            }
            java.lang.Class<?> cls2 = java.lang.Class.forName(str2, true, cls.getClassLoader());
            m3.k.c(cls2, "null cannot be cast to non-null type java.lang.Class<T of androidx.room.Room.getGeneratedImplementation>");
            return (T) cls2.newInstance();
        } catch (java.lang.ClassNotFoundException unused) {
            throw new java.lang.RuntimeException("Cannot find implementation for " + cls.getCanonicalName() + ". " + str3 + " does not exist");
        } catch (java.lang.IllegalAccessException unused2) {
            throw new java.lang.RuntimeException("Cannot access the constructor " + cls + ".canonicalName");
        } catch (java.lang.InstantiationException unused3) {
            throw new java.lang.RuntimeException("Failed to create an instance of " + cls + ".canonicalName");
        }
    }

    public static final <T extends androidx.room.i0> androidx.room.i0.a<T> c(android.content.Context context, java.lang.Class<T> cls) {
        m3.k.e(context, "context");
        m3.k.e(cls, "klass");
        return new androidx.room.i0.a<>(context, cls, null);
    }
}
