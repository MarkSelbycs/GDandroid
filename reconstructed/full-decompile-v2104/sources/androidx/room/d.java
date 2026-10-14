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
/* JADX INFO: compiled from: AutoClosingRoomOpenHelper.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class d implements f0.h, androidx.room.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f0.h f2231a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.room.c f2232b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final androidx.room.d.a f2233c;

    /* JADX INFO: compiled from: AutoClosingRoomOpenHelper.kt */
    @kotlin.Metadata
    public static final class a implements f0.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.room.c f2234a;

        /* JADX INFO: renamed from: androidx.room.d$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AutoClosingRoomOpenHelper.kt */
        @kotlin.Metadata
        public static final class C0017a extends m3.l implements l3.l<f0.g, java.util.List<? extends android.util.Pair<java.lang.String, java.lang.String>>> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static final androidx.room.d.a.C0017a f2235b = new androidx.room.d.a.C0017a();

            public C0017a() {
                super(1);
            }

            @Override // l3.l
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final java.util.List<android.util.Pair<java.lang.String, java.lang.String>> x(f0.g gVar) {
                m3.k.e(gVar, "obj");
                return gVar.w();
            }
        }

        /* JADX INFO: compiled from: AutoClosingRoomOpenHelper.kt */
        @kotlin.Metadata
        public static final class b extends m3.l implements l3.l<f0.g, java.lang.Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ java.lang.String f2236b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(java.lang.String str) {
                super(1);
                this.f2236b = str;
            }

            @Override // l3.l
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final java.lang.Object x(f0.g gVar) {
                m3.k.e(gVar, "db");
                gVar.D(this.f2236b);
                return null;
            }
        }

        /* JADX INFO: compiled from: AutoClosingRoomOpenHelper.kt */
        @kotlin.Metadata
        public static final class c extends m3.l implements l3.l<f0.g, java.lang.Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ java.lang.String f2237b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ java.lang.Object[] f2238c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(java.lang.String str, java.lang.Object[] objArr) {
                super(1);
                this.f2237b = str;
                this.f2238c = objArr;
            }

            @Override // l3.l
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final java.lang.Object x(f0.g gVar) {
                m3.k.e(gVar, "db");
                gVar.O(this.f2237b, this.f2238c);
                return null;
            }
        }

        /* JADX INFO: renamed from: androidx.room.d$a$d, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AutoClosingRoomOpenHelper.kt */
        @a3.f
        public /* synthetic */ class C0018d extends m3.j implements l3.l<f0.g, java.lang.Boolean> {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            public static final androidx.room.d.a.C0018d f2239o = new androidx.room.d.a.C0018d();

            public C0018d() {
                super(1, f0.g.class, "inTransaction", "inTransaction()Z", 0);
            }

            @Override // l3.l
            /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
            public final java.lang.Boolean x(f0.g gVar) {
                m3.k.e(gVar, "p0");
                return java.lang.Boolean.valueOf(gVar.s0());
            }
        }

        /* JADX INFO: compiled from: AutoClosingRoomOpenHelper.kt */
        @kotlin.Metadata
        public static final class e extends m3.l implements l3.l<f0.g, java.lang.Boolean> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static final androidx.room.d.a.e f2240b = new androidx.room.d.a.e();

            public e() {
                super(1);
            }

            @Override // l3.l
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final java.lang.Boolean x(f0.g gVar) {
                m3.k.e(gVar, "db");
                return java.lang.Boolean.valueOf(gVar.B());
            }
        }

        /* JADX INFO: compiled from: AutoClosingRoomOpenHelper.kt */
        @kotlin.Metadata
        public static final class f extends m3.l implements l3.l<f0.g, java.lang.String> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static final androidx.room.d.a.f f2241b = new androidx.room.d.a.f();

            public f() {
                super(1);
            }

            @Override // l3.l
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final java.lang.String x(f0.g gVar) {
                m3.k.e(gVar, "obj");
                return gVar.q0();
            }
        }

        /* JADX INFO: compiled from: AutoClosingRoomOpenHelper.kt */
        @kotlin.Metadata
        public static final class g extends m3.l implements l3.l<f0.g, java.lang.Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static final androidx.room.d.a.g f2242b = new androidx.room.d.a.g();

            public g() {
                super(1);
            }

            @Override // l3.l
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final java.lang.Object x(f0.g gVar) {
                m3.k.e(gVar, "it");
                return null;
            }
        }

        /* JADX INFO: compiled from: AutoClosingRoomOpenHelper.kt */
        @kotlin.Metadata
        public static final class h extends m3.l implements l3.l<f0.g, java.lang.Integer> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ java.lang.String f2243b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ int f2244c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public final /* synthetic */ android.content.ContentValues f2245d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final /* synthetic */ java.lang.String f2246e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final /* synthetic */ java.lang.Object[] f2247f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public h(java.lang.String str, int i5, android.content.ContentValues contentValues, java.lang.String str2, java.lang.Object[] objArr) {
                super(1);
                this.f2243b = str;
                this.f2244c = i5;
                this.f2245d = contentValues;
                this.f2246e = str2;
                this.f2247f = objArr;
            }

            @Override // l3.l
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final java.lang.Integer x(f0.g gVar) {
                m3.k.e(gVar, "db");
                return java.lang.Integer.valueOf(gVar.U(this.f2243b, this.f2244c, this.f2245d, this.f2246e, this.f2247f));
            }
        }

        public a(androidx.room.c cVar) {
            m3.k.e(cVar, "autoCloser");
            this.f2234a = cVar;
        }

        @Override // f0.g
        public boolean B() {
            return ((java.lang.Boolean) this.f2234a.g(androidx.room.d.a.e.f2240b)).booleanValue();
        }

        @Override // f0.g
        public void D(java.lang.String str) throws android.database.SQLException {
            m3.k.e(str, "sql");
            this.f2234a.g(new androidx.room.d.a.b(str));
        }

        @Override // f0.g
        public android.database.Cursor F(f0.j jVar, android.os.CancellationSignal cancellationSignal) {
            m3.k.e(jVar, "query");
            try {
                return new androidx.room.d.c(this.f2234a.j().F(jVar, cancellationSignal), this.f2234a);
            } catch (java.lang.Throwable th) {
                this.f2234a.e();
                throw th;
            }
        }

        @Override // f0.g
        public void J() {
            a3.o oVar;
            f0.g gVarH = this.f2234a.h();
            if (gVarH != null) {
                gVarH.J();
                oVar = a3.o.f122a;
            } else {
                oVar = null;
            }
            if (oVar == null) {
                throw new java.lang.IllegalStateException("setTransactionSuccessful called but delegateDb is null".toString());
            }
        }

        @Override // f0.g
        public void O(java.lang.String str, java.lang.Object[] objArr) throws android.database.SQLException {
            m3.k.e(str, "sql");
            m3.k.e(objArr, "bindArgs");
            this.f2234a.g(new androidx.room.d.a.c(str, objArr));
        }

        @Override // f0.g
        public f0.k S(java.lang.String str) {
            m3.k.e(str, "sql");
            return new androidx.room.d.b(str, this.f2234a);
        }

        @Override // f0.g
        public void T() {
            try {
                this.f2234a.j().T();
            } catch (java.lang.Throwable th) {
                this.f2234a.e();
                throw th;
            }
        }

        @Override // f0.g
        public int U(java.lang.String str, int i5, android.content.ContentValues contentValues, java.lang.String str2, java.lang.Object[] objArr) {
            m3.k.e(str, "table");
            m3.k.e(contentValues, "values");
            return ((java.lang.Number) this.f2234a.g(new androidx.room.d.a.h(str, i5, contentValues, str2, objArr))).intValue();
        }

        public final void c() {
            this.f2234a.g(androidx.room.d.a.g.f2242b);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws java.io.IOException {
            this.f2234a.d();
        }

        @Override // f0.g
        public void k() {
            if (this.f2234a.h() == null) {
                throw new java.lang.IllegalStateException("End transaction called but delegateDb is null".toString());
            }
            try {
                f0.g gVarH = this.f2234a.h();
                m3.k.b(gVarH);
                gVarH.k();
            } finally {
                this.f2234a.e();
            }
        }

        @Override // f0.g
        public void m() {
            try {
                this.f2234a.j().m();
            } catch (java.lang.Throwable th) {
                this.f2234a.e();
                throw th;
            }
        }

        @Override // f0.g
        public android.database.Cursor o0(java.lang.String str) {
            m3.k.e(str, "query");
            try {
                return new androidx.room.d.c(this.f2234a.j().o0(str), this.f2234a);
            } catch (java.lang.Throwable th) {
                this.f2234a.e();
                throw th;
            }
        }

        @Override // f0.g
        public java.lang.String q0() {
            return (java.lang.String) this.f2234a.g(androidx.room.d.a.f.f2241b);
        }

        @Override // f0.g
        public boolean s0() {
            if (this.f2234a.h() == null) {
                return false;
            }
            return ((java.lang.Boolean) this.f2234a.g(androidx.room.d.a.C0018d.f2239o)).booleanValue();
        }

        @Override // f0.g
        public android.database.Cursor t(f0.j jVar) {
            m3.k.e(jVar, "query");
            try {
                return new androidx.room.d.c(this.f2234a.j().t(jVar), this.f2234a);
            } catch (java.lang.Throwable th) {
                this.f2234a.e();
                throw th;
            }
        }

        @Override // f0.g
        public boolean v() {
            f0.g gVarH = this.f2234a.h();
            if (gVarH == null) {
                return false;
            }
            return gVarH.v();
        }

        @Override // f0.g
        public java.util.List<android.util.Pair<java.lang.String, java.lang.String>> w() {
            return (java.util.List) this.f2234a.g(androidx.room.d.a.C0017a.f2235b);
        }
    }

    /* JADX INFO: compiled from: AutoClosingRoomOpenHelper.kt */
    @kotlin.Metadata
    public static final class b implements f0.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.String f2248a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final androidx.room.c f2249b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final java.util.ArrayList<java.lang.Object> f2250c;

        /* JADX INFO: compiled from: AutoClosingRoomOpenHelper.kt */
        @kotlin.Metadata
        public static final class a extends m3.l implements l3.l<f0.k, java.lang.Long> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static final androidx.room.d.b.a f2251b = new androidx.room.d.b.a();

            public a() {
                super(1);
            }

            @Override // l3.l
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final java.lang.Long x(f0.k kVar) {
                m3.k.e(kVar, "obj");
                return java.lang.Long.valueOf(kVar.n0());
            }
        }

        /* JADX INFO: Add missing generic type declarations: [T] */
        /* JADX INFO: renamed from: androidx.room.d$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AutoClosingRoomOpenHelper.kt */
        @kotlin.Metadata
        public static final class C0019b<T> extends m3.l implements l3.l<f0.g, T> {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ l3.l<f0.k, T> f2253c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C0019b(l3.l<? super f0.k, ? extends T> lVar) {
                super(1);
                this.f2253c = lVar;
            }

            @Override // l3.l
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final T x(f0.g gVar) {
                m3.k.e(gVar, "db");
                f0.k kVarS = gVar.S(androidx.room.d.b.this.f2248a);
                androidx.room.d.b.this.f(kVarS);
                return this.f2253c.x(kVarS);
            }
        }

        /* JADX INFO: compiled from: AutoClosingRoomOpenHelper.kt */
        @kotlin.Metadata
        public static final class c extends m3.l implements l3.l<f0.k, java.lang.Integer> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static final androidx.room.d.b.c f2254b = new androidx.room.d.b.c();

            public c() {
                super(1);
            }

            @Override // l3.l
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final java.lang.Integer x(f0.k kVar) {
                m3.k.e(kVar, "obj");
                return java.lang.Integer.valueOf(kVar.Q());
            }
        }

        public b(java.lang.String str, androidx.room.c cVar) {
            m3.k.e(str, "sql");
            m3.k.e(cVar, "autoCloser");
            this.f2248a = str;
            this.f2249b = cVar;
            this.f2250c = new java.util.ArrayList<>();
        }

        @Override // f0.i
        public void E(int i5, java.lang.String str) {
            m3.k.e(str, "value");
            i(i5, str);
        }

        @Override // f0.i
        public void G(int i5, long j5) {
            i(i5, java.lang.Long.valueOf(j5));
        }

        @Override // f0.k
        public int Q() {
            return ((java.lang.Number) h(androidx.room.d.b.c.f2254b)).intValue();
        }

        @Override // f0.i
        public void a0(int i5, byte[] bArr) {
            m3.k.e(bArr, "value");
            i(i5, bArr);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws java.io.IOException {
        }

        @Override // f0.i
        public void d0(int i5) {
            i(i5, null);
        }

        public final void f(f0.k kVar) {
            java.util.Iterator<T> it = this.f2250c.iterator();
            int i5 = 0;
            while (it.hasNext()) {
                it.next();
                int i6 = i5 + 1;
                if (i5 < 0) {
                    b3.o.k();
                }
                java.lang.Object obj = this.f2250c.get(i5);
                if (obj == null) {
                    kVar.d0(i6);
                } else if (obj instanceof java.lang.Long) {
                    kVar.G(i6, ((java.lang.Number) obj).longValue());
                } else if (obj instanceof java.lang.Double) {
                    kVar.g0(i6, ((java.lang.Number) obj).doubleValue());
                } else if (obj instanceof java.lang.String) {
                    kVar.E(i6, (java.lang.String) obj);
                } else if (obj instanceof byte[]) {
                    kVar.a0(i6, (byte[]) obj);
                }
                i5 = i6;
            }
        }

        @Override // f0.i
        public void g0(int i5, double d5) {
            i(i5, java.lang.Double.valueOf(d5));
        }

        public final <T> T h(l3.l<? super f0.k, ? extends T> lVar) {
            return (T) this.f2249b.g(new androidx.room.d.b.C0019b(lVar));
        }

        public final void i(int i5, java.lang.Object obj) {
            int size;
            int i6 = i5 - 1;
            if (i6 >= this.f2250c.size() && (size = this.f2250c.size()) <= i6) {
                while (true) {
                    this.f2250c.add(null);
                    if (size == i6) {
                        break;
                    } else {
                        size++;
                    }
                }
            }
            this.f2250c.set(i6, obj);
        }

        @Override // f0.k
        public long n0() {
            return ((java.lang.Number) h(androidx.room.d.b.a.f2251b)).longValue();
        }
    }

    /* JADX INFO: compiled from: AutoClosingRoomOpenHelper.kt */
    @kotlin.Metadata
    public static final class c implements android.database.Cursor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final android.database.Cursor f2255a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final androidx.room.c f2256b;

        public c(android.database.Cursor cursor, androidx.room.c cVar) {
            m3.k.e(cursor, "delegate");
            m3.k.e(cVar, "autoCloser");
            this.f2255a = cursor;
            this.f2256b = cVar;
        }

        @Override // android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f2255a.close();
            this.f2256b.e();
        }

        @Override // android.database.Cursor
        public void copyStringToBuffer(int i5, android.database.CharArrayBuffer charArrayBuffer) {
            this.f2255a.copyStringToBuffer(i5, charArrayBuffer);
        }

        @Override // android.database.Cursor
        public void deactivate() {
            this.f2255a.deactivate();
        }

        @Override // android.database.Cursor
        public byte[] getBlob(int i5) {
            return this.f2255a.getBlob(i5);
        }

        @Override // android.database.Cursor
        public int getColumnCount() {
            return this.f2255a.getColumnCount();
        }

        @Override // android.database.Cursor
        public int getColumnIndex(java.lang.String str) {
            return this.f2255a.getColumnIndex(str);
        }

        @Override // android.database.Cursor
        public int getColumnIndexOrThrow(java.lang.String str) {
            return this.f2255a.getColumnIndexOrThrow(str);
        }

        @Override // android.database.Cursor
        public java.lang.String getColumnName(int i5) {
            return this.f2255a.getColumnName(i5);
        }

        @Override // android.database.Cursor
        public java.lang.String[] getColumnNames() {
            return this.f2255a.getColumnNames();
        }

        @Override // android.database.Cursor
        public int getCount() {
            return this.f2255a.getCount();
        }

        @Override // android.database.Cursor
        public double getDouble(int i5) {
            return this.f2255a.getDouble(i5);
        }

        @Override // android.database.Cursor
        public android.os.Bundle getExtras() {
            return this.f2255a.getExtras();
        }

        @Override // android.database.Cursor
        public float getFloat(int i5) {
            return this.f2255a.getFloat(i5);
        }

        @Override // android.database.Cursor
        public int getInt(int i5) {
            return this.f2255a.getInt(i5);
        }

        @Override // android.database.Cursor
        public long getLong(int i5) {
            return this.f2255a.getLong(i5);
        }

        @Override // android.database.Cursor
        public android.net.Uri getNotificationUri() {
            return f0.c.a(this.f2255a);
        }

        @Override // android.database.Cursor
        public java.util.List<android.net.Uri> getNotificationUris() {
            return f0.f.a(this.f2255a);
        }

        @Override // android.database.Cursor
        public int getPosition() {
            return this.f2255a.getPosition();
        }

        @Override // android.database.Cursor
        public short getShort(int i5) {
            return this.f2255a.getShort(i5);
        }

        @Override // android.database.Cursor
        public java.lang.String getString(int i5) {
            return this.f2255a.getString(i5);
        }

        @Override // android.database.Cursor
        public int getType(int i5) {
            return this.f2255a.getType(i5);
        }

        @Override // android.database.Cursor
        public boolean getWantsAllOnMoveCalls() {
            return this.f2255a.getWantsAllOnMoveCalls();
        }

        @Override // android.database.Cursor
        public boolean isAfterLast() {
            return this.f2255a.isAfterLast();
        }

        @Override // android.database.Cursor
        public boolean isBeforeFirst() {
            return this.f2255a.isBeforeFirst();
        }

        @Override // android.database.Cursor
        public boolean isClosed() {
            return this.f2255a.isClosed();
        }

        @Override // android.database.Cursor
        public boolean isFirst() {
            return this.f2255a.isFirst();
        }

        @Override // android.database.Cursor
        public boolean isLast() {
            return this.f2255a.isLast();
        }

        @Override // android.database.Cursor
        public boolean isNull(int i5) {
            return this.f2255a.isNull(i5);
        }

        @Override // android.database.Cursor
        public boolean move(int i5) {
            return this.f2255a.move(i5);
        }

        @Override // android.database.Cursor
        public boolean moveToFirst() {
            return this.f2255a.moveToFirst();
        }

        @Override // android.database.Cursor
        public boolean moveToLast() {
            return this.f2255a.moveToLast();
        }

        @Override // android.database.Cursor
        public boolean moveToNext() {
            return this.f2255a.moveToNext();
        }

        @Override // android.database.Cursor
        public boolean moveToPosition(int i5) {
            return this.f2255a.moveToPosition(i5);
        }

        @Override // android.database.Cursor
        public boolean moveToPrevious() {
            return this.f2255a.moveToPrevious();
        }

        @Override // android.database.Cursor
        public void registerContentObserver(android.database.ContentObserver contentObserver) {
            this.f2255a.registerContentObserver(contentObserver);
        }

        @Override // android.database.Cursor
        public void registerDataSetObserver(android.database.DataSetObserver dataSetObserver) {
            this.f2255a.registerDataSetObserver(dataSetObserver);
        }

        @Override // android.database.Cursor
        public boolean requery() {
            return this.f2255a.requery();
        }

        @Override // android.database.Cursor
        public android.os.Bundle respond(android.os.Bundle bundle) {
            return this.f2255a.respond(bundle);
        }

        @Override // android.database.Cursor
        public void setExtras(android.os.Bundle bundle) {
            m3.k.e(bundle, "extras");
            f0.e.a(this.f2255a, bundle);
        }

        @Override // android.database.Cursor
        public void setNotificationUri(android.content.ContentResolver contentResolver, android.net.Uri uri) {
            this.f2255a.setNotificationUri(contentResolver, uri);
        }

        @Override // android.database.Cursor
        public void setNotificationUris(android.content.ContentResolver contentResolver, java.util.List<? extends android.net.Uri> list) {
            m3.k.e(contentResolver, "cr");
            m3.k.e(list, "uris");
            f0.f.b(this.f2255a, contentResolver, list);
        }

        @Override // android.database.Cursor
        public void unregisterContentObserver(android.database.ContentObserver contentObserver) {
            this.f2255a.unregisterContentObserver(contentObserver);
        }

        @Override // android.database.Cursor
        public void unregisterDataSetObserver(android.database.DataSetObserver dataSetObserver) {
            this.f2255a.unregisterDataSetObserver(dataSetObserver);
        }
    }

    public d(f0.h hVar, androidx.room.c cVar) {
        m3.k.e(hVar, "delegate");
        m3.k.e(cVar, "autoCloser");
        this.f2231a = hVar;
        this.f2232b = cVar;
        cVar.k(c());
        this.f2233c = new androidx.room.d.a(cVar);
    }

    @Override // androidx.room.g
    public f0.h c() {
        return this.f2231a;
    }

    @Override // f0.h, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.io.IOException {
        this.f2233c.close();
    }

    @Override // f0.h
    public java.lang.String getDatabaseName() {
        return this.f2231a.getDatabaseName();
    }

    @Override // f0.h
    public f0.g l0() {
        this.f2233c.c();
        return this.f2233c;
    }

    @Override // f0.h
    public void setWriteAheadLoggingEnabled(boolean z4) {
        this.f2231a.setWriteAheadLoggingEnabled(z4);
    }
}
