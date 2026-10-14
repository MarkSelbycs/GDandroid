package g0;

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
/* JADX INFO: compiled from: FrameworkSQLiteDatabase.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class c implements f0.g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final g0.c.a f4292c = new g0.c.a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final java.lang.String[] f4293d = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.lang.String[] f4294e = new java.lang.String[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.database.sqlite.SQLiteDatabase f4295a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.List<android.util.Pair<java.lang.String, java.lang.String>> f4296b;

    /* JADX INFO: compiled from: FrameworkSQLiteDatabase.kt */
    @kotlin.Metadata
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(m3.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: FrameworkSQLiteDatabase.kt */
    @kotlin.Metadata
    public static final class b extends m3.l implements l3.r<android.database.sqlite.SQLiteDatabase, android.database.sqlite.SQLiteCursorDriver, java.lang.String, android.database.sqlite.SQLiteQuery, android.database.sqlite.SQLiteCursor> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ f0.j f4297b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(f0.j jVar) {
            super(4);
            this.f4297b = jVar;
        }

        @Override // l3.r
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final android.database.sqlite.SQLiteCursor j(android.database.sqlite.SQLiteDatabase sQLiteDatabase, android.database.sqlite.SQLiteCursorDriver sQLiteCursorDriver, java.lang.String str, android.database.sqlite.SQLiteQuery sQLiteQuery) {
            f0.j jVar = this.f4297b;
            m3.k.b(sQLiteQuery);
            jVar.c(new g0.g(sQLiteQuery));
            return new android.database.sqlite.SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
        }
    }

    public c(android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
        m3.k.e(sQLiteDatabase, "delegate");
        this.f4295a = sQLiteDatabase;
        this.f4296b = sQLiteDatabase.getAttachedDbs();
    }

    public static final android.database.Cursor h(l3.r rVar, android.database.sqlite.SQLiteDatabase sQLiteDatabase, android.database.sqlite.SQLiteCursorDriver sQLiteCursorDriver, java.lang.String str, android.database.sqlite.SQLiteQuery sQLiteQuery) {
        m3.k.e(rVar, "$tmp0");
        return (android.database.Cursor) rVar.j(sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
    }

    public static final android.database.Cursor i(f0.j jVar, android.database.sqlite.SQLiteDatabase sQLiteDatabase, android.database.sqlite.SQLiteCursorDriver sQLiteCursorDriver, java.lang.String str, android.database.sqlite.SQLiteQuery sQLiteQuery) {
        m3.k.e(jVar, "$query");
        m3.k.b(sQLiteQuery);
        jVar.c(new g0.g(sQLiteQuery));
        return new android.database.sqlite.SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
    }

    @Override // f0.g
    public boolean B() {
        return f0.b.b(this.f4295a);
    }

    @Override // f0.g
    public void D(java.lang.String str) throws android.database.SQLException {
        m3.k.e(str, "sql");
        this.f4295a.execSQL(str);
    }

    @Override // f0.g
    public android.database.Cursor F(final f0.j jVar, android.os.CancellationSignal cancellationSignal) {
        m3.k.e(jVar, "query");
        android.database.sqlite.SQLiteDatabase sQLiteDatabase = this.f4295a;
        java.lang.String strE = jVar.e();
        java.lang.String[] strArr = f4294e;
        m3.k.b(cancellationSignal);
        return f0.b.c(sQLiteDatabase, strE, strArr, null, cancellationSignal, new android.database.sqlite.SQLiteDatabase.CursorFactory() { // from class: g0.a
            @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
            public final android.database.Cursor newCursor(android.database.sqlite.SQLiteDatabase sQLiteDatabase2, android.database.sqlite.SQLiteCursorDriver sQLiteCursorDriver, java.lang.String str, android.database.sqlite.SQLiteQuery sQLiteQuery) {
                return g0.c.i(jVar, sQLiteDatabase2, sQLiteCursorDriver, str, sQLiteQuery);
            }
        });
    }

    @Override // f0.g
    public void J() {
        this.f4295a.setTransactionSuccessful();
    }

    @Override // f0.g
    public void O(java.lang.String str, java.lang.Object[] objArr) throws android.database.SQLException {
        m3.k.e(str, "sql");
        m3.k.e(objArr, "bindArgs");
        this.f4295a.execSQL(str, objArr);
    }

    @Override // f0.g
    public f0.k S(java.lang.String str) {
        m3.k.e(str, "sql");
        android.database.sqlite.SQLiteStatement sQLiteStatementCompileStatement = this.f4295a.compileStatement(str);
        m3.k.d(sQLiteStatementCompileStatement, "delegate.compileStatement(sql)");
        return new g0.h(sQLiteStatementCompileStatement);
    }

    @Override // f0.g
    public void T() {
        this.f4295a.beginTransactionNonExclusive();
    }

    @Override // f0.g
    public int U(java.lang.String str, int i5, android.content.ContentValues contentValues, java.lang.String str2, java.lang.Object[] objArr) {
        m3.k.e(str, "table");
        m3.k.e(contentValues, "values");
        int i6 = 0;
        if (!(contentValues.size() != 0)) {
            throw new java.lang.IllegalArgumentException("Empty values".toString());
        }
        int size = contentValues.size();
        int length = objArr == null ? size : objArr.length + size;
        java.lang.Object[] objArr2 = new java.lang.Object[length];
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("UPDATE ");
        sb.append(f4293d[i5]);
        sb.append(str);
        sb.append(" SET ");
        for (java.lang.String str3 : contentValues.keySet()) {
            sb.append(i6 > 0 ? "," : "");
            sb.append(str3);
            objArr2[i6] = contentValues.get(str3);
            sb.append("=?");
            i6++;
        }
        if (objArr != null) {
            for (int i7 = size; i7 < length; i7++) {
                objArr2[i7] = objArr[i7 - size];
            }
        }
        if (!android.text.TextUtils.isEmpty(str2)) {
            sb.append(" WHERE ");
            sb.append(str2);
        }
        java.lang.String string = sb.toString();
        m3.k.d(string, "StringBuilder().apply(builderAction).toString()");
        f0.k kVarS = S(string);
        f0.a.f4172c.b(kVarS, objArr2);
        return kVarS.Q();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.io.IOException {
        this.f4295a.close();
    }

    public final boolean f(android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
        m3.k.e(sQLiteDatabase, "sqLiteDatabase");
        return m3.k.a(this.f4295a, sQLiteDatabase);
    }

    @Override // f0.g
    public void k() {
        this.f4295a.endTransaction();
    }

    @Override // f0.g
    public void m() {
        this.f4295a.beginTransaction();
    }

    @Override // f0.g
    public android.database.Cursor o0(java.lang.String str) {
        m3.k.e(str, "query");
        return t(new f0.a(str));
    }

    @Override // f0.g
    public java.lang.String q0() {
        return this.f4295a.getPath();
    }

    @Override // f0.g
    public boolean s0() {
        return this.f4295a.inTransaction();
    }

    @Override // f0.g
    public android.database.Cursor t(f0.j jVar) {
        m3.k.e(jVar, "query");
        final g0.c.b bVar = new g0.c.b(jVar);
        android.database.Cursor cursorRawQueryWithFactory = this.f4295a.rawQueryWithFactory(new android.database.sqlite.SQLiteDatabase.CursorFactory() { // from class: g0.b
            @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
            public final android.database.Cursor newCursor(android.database.sqlite.SQLiteDatabase sQLiteDatabase, android.database.sqlite.SQLiteCursorDriver sQLiteCursorDriver, java.lang.String str, android.database.sqlite.SQLiteQuery sQLiteQuery) {
                return g0.c.h(bVar, sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
            }
        }, jVar.e(), f4294e, null);
        m3.k.d(cursorRawQueryWithFactory, "delegate.rawQueryWithFac…EMPTY_STRING_ARRAY, null)");
        return cursorRawQueryWithFactory;
    }

    @Override // f0.g
    public boolean v() {
        return this.f4295a.isOpen();
    }

    @Override // f0.g
    public java.util.List<android.util.Pair<java.lang.String, java.lang.String>> w() {
        return this.f4296b;
    }
}
