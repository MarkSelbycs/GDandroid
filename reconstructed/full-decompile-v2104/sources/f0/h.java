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
/* JADX INFO: compiled from: SupportSQLiteOpenHelper.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public interface h extends java.io.Closeable {

    /* JADX INFO: compiled from: SupportSQLiteOpenHelper.kt */
    @kotlin.Metadata
    public static abstract class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final f0.h.a.C0049a f4180b = new f0.h.a.C0049a(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f4181a;

        /* JADX INFO: renamed from: f0.h$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: SupportSQLiteOpenHelper.kt */
        @kotlin.Metadata
        public static final class C0049a {
            public C0049a() {
            }

            public /* synthetic */ C0049a(m3.g gVar) {
                this();
            }
        }

        public a(int i5) {
            this.f4181a = i5;
        }

        public final void a(java.lang.String str) {
            if (s3.l.h(str, ":memory:", true)) {
                return;
            }
            int length = str.length() - 1;
            int i5 = 0;
            boolean z4 = false;
            while (i5 <= length) {
                boolean z5 = m3.k.f(str.charAt(!z4 ? i5 : length), 32) <= 0;
                if (z4) {
                    if (!z5) {
                        break;
                    } else {
                        length--;
                    }
                } else if (z5) {
                    i5++;
                } else {
                    z4 = true;
                }
            }
            if (str.subSequence(i5, length + 1).toString().length() == 0) {
                return;
            }
            android.util.Log.w("SupportSQLite", "deleting the database file: " + str);
            try {
                f0.b.a(new java.io.File(str));
            } catch (java.lang.Exception e5) {
                android.util.Log.w("SupportSQLite", "delete failed: ", e5);
            }
        }

        public void b(f0.g gVar) {
            m3.k.e(gVar, "db");
        }

        public void c(f0.g gVar) {
            m3.k.e(gVar, "db");
            android.util.Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + gVar + ".path");
            if (!gVar.v()) {
                java.lang.String strQ0 = gVar.q0();
                if (strQ0 != null) {
                    a(strQ0);
                    return;
                }
                return;
            }
            java.util.List<android.util.Pair<java.lang.String, java.lang.String>> listW = null;
            try {
                try {
                    listW = gVar.w();
                } catch (android.database.sqlite.SQLiteException unused) {
                }
                try {
                    gVar.close();
                } catch (java.io.IOException unused2) {
                }
                if (listW != null) {
                    return;
                }
            } finally {
                if (listW != null) {
                    java.util.Iterator<T> it = listW.iterator();
                    while (it.hasNext()) {
                        java.lang.Object obj = ((android.util.Pair) it.next()).second;
                        m3.k.d(obj, "p.second");
                        a((java.lang.String) obj);
                    }
                } else {
                    java.lang.String strQ1 = gVar.q0();
                    if (strQ1 != null) {
                        a(strQ1);
                    }
                }
            }
        }

        public abstract void d(f0.g gVar);

        public abstract void e(f0.g gVar, int i5, int i6);

        public void f(f0.g gVar) {
            m3.k.e(gVar, "db");
        }

        public abstract void g(f0.g gVar, int i5, int i6);
    }

    /* JADX INFO: compiled from: SupportSQLiteOpenHelper.kt */
    @kotlin.Metadata
    public static final class b {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final f0.h.b.C0050b f4182f = new f0.h.b.C0050b(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final android.content.Context f4183a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.lang.String f4184b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final f0.h.a f4185c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f4186d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f4187e;

        /* JADX INFO: compiled from: SupportSQLiteOpenHelper.kt */
        @kotlin.Metadata
        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final android.content.Context f4188a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public java.lang.String f4189b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public f0.h.a f4190c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f4191d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f4192e;

            public a(android.content.Context context) {
                m3.k.e(context, "context");
                this.f4188a = context;
            }

            public f0.h.b.a a(boolean z4) {
                this.f4192e = z4;
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:14:0x001a  */
            public f0.h.b b() {
                boolean z4;
                f0.h.a aVar = this.f4190c;
                if (aVar == null) {
                    throw new java.lang.IllegalArgumentException("Must set a callback to create the configuration.".toString());
                }
                if (this.f4191d) {
                    java.lang.String str = this.f4189b;
                    z4 = str == null || str.length() == 0 ? false : true;
                }
                if (z4) {
                    return new f0.h.b(this.f4188a, this.f4189b, aVar, this.f4191d, this.f4192e);
                }
                throw new java.lang.IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.".toString());
            }

            public f0.h.b.a c(f0.h.a aVar) {
                m3.k.e(aVar, "callback");
                this.f4190c = aVar;
                return this;
            }

            public f0.h.b.a d(java.lang.String str) {
                this.f4189b = str;
                return this;
            }

            public f0.h.b.a e(boolean z4) {
                this.f4191d = z4;
                return this;
            }
        }

        /* JADX INFO: renamed from: f0.h$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: SupportSQLiteOpenHelper.kt */
        @kotlin.Metadata
        public static final class C0050b {
            public C0050b() {
            }

            public /* synthetic */ C0050b(m3.g gVar) {
                this();
            }

            public final f0.h.b.a a(android.content.Context context) {
                m3.k.e(context, "context");
                return new f0.h.b.a(context);
            }
        }

        public b(android.content.Context context, java.lang.String str, f0.h.a aVar, boolean z4, boolean z5) {
            m3.k.e(context, "context");
            m3.k.e(aVar, "callback");
            this.f4183a = context;
            this.f4184b = str;
            this.f4185c = aVar;
            this.f4186d = z4;
            this.f4187e = z5;
        }

        public static final f0.h.b.a a(android.content.Context context) {
            return f4182f.a(context);
        }
    }

    /* JADX INFO: compiled from: SupportSQLiteOpenHelper.kt */
    @kotlin.Metadata
    public interface c {
        f0.h a(f0.h.b bVar);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    java.lang.String getDatabaseName();

    f0.g l0();

    void setWriteAheadLoggingEnabled(boolean z4);
}
