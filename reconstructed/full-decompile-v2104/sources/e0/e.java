package e0;

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
/* JADX INFO: compiled from: TableInfo.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final e0.e.b f4039e = new e0.e.b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f4040a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.Map<java.lang.String, e0.e.a> f4041b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.util.Set<e0.e.c> f4042c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.util.Set<e0.e.C0044e> f4043d;

    /* JADX INFO: compiled from: TableInfo.kt */
    @kotlin.Metadata
    public static final class a {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final e0.e.a.C0043a f4044h = new e0.e.a.C0043a(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.String f4045a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.lang.String f4046b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f4047c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f4048d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final java.lang.String f4049e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f4050f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f4051g;

        /* JADX INFO: renamed from: e0.e$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: TableInfo.kt */
        @kotlin.Metadata
        public static final class C0043a {
            public C0043a() {
            }

            public /* synthetic */ C0043a(m3.g gVar) {
                this();
            }

            public final boolean a(java.lang.String str) {
                if (str.length() == 0) {
                    return false;
                }
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                while (i5 < str.length()) {
                    char cCharAt = str.charAt(i5);
                    int i8 = i7 + 1;
                    if (i7 == 0 && cCharAt != '(') {
                        return false;
                    }
                    if (cCharAt == '(') {
                        i6++;
                    } else if (cCharAt == ')' && (i6 = i6 - 1) == 0 && i7 != str.length() - 1) {
                        return false;
                    }
                    i5++;
                    i7 = i8;
                }
                return i6 == 0;
            }

            @android.annotation.SuppressLint({"SyntheticAccessor"})
            public final boolean b(java.lang.String str, java.lang.String str2) {
                m3.k.e(str, "current");
                if (m3.k.a(str, str2)) {
                    return true;
                }
                if (!a(str)) {
                    return false;
                }
                java.lang.String strSubstring = str.substring(1, str.length() - 1);
                m3.k.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                return m3.k.a(s3.m.Z(strSubstring).toString(), str2);
            }
        }

        public a(java.lang.String str, java.lang.String str2, boolean z4, int i5, java.lang.String str3, int i6) {
            m3.k.e(str, "name");
            m3.k.e(str2, "type");
            this.f4045a = str;
            this.f4046b = str2;
            this.f4047c = z4;
            this.f4048d = i5;
            this.f4049e = str3;
            this.f4050f = i6;
            this.f4051g = a(str2);
        }

        public final int a(java.lang.String str) {
            if (str == null) {
                return 5;
            }
            java.util.Locale locale = java.util.Locale.US;
            m3.k.d(locale, "US");
            java.lang.String upperCase = str.toUpperCase(locale);
            m3.k.d(upperCase, "this as java.lang.String).toUpperCase(locale)");
            if (s3.m.q(upperCase, "INT", false, 2, null)) {
                return 3;
            }
            if (s3.m.q(upperCase, "CHAR", false, 2, null) || s3.m.q(upperCase, "CLOB", false, 2, null) || s3.m.q(upperCase, "TEXT", false, 2, null)) {
                return 2;
            }
            if (s3.m.q(upperCase, "BLOB", false, 2, null)) {
                return 5;
            }
            return (s3.m.q(upperCase, "REAL", false, 2, null) || s3.m.q(upperCase, "FLOA", false, 2, null) || s3.m.q(upperCase, "DOUB", false, 2, null)) ? 4 : 1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:46:0x0072, code lost:
        
            r1 = true;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean equals(java.lang.Object obj) {
            java.lang.String str;
            java.lang.String str2;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e0.e.a) || this.f4048d != ((e0.e.a) obj).f4048d) {
                return false;
            }
            e0.e.a aVar = (e0.e.a) obj;
            if (!m3.k.a(this.f4045a, aVar.f4045a) || this.f4047c != aVar.f4047c) {
                return false;
            }
            if (this.f4050f == 1 && aVar.f4050f == 2 && (str2 = this.f4049e) != null && !f4044h.b(str2, aVar.f4049e)) {
                return false;
            }
            if (this.f4050f == 2 && aVar.f4050f == 1 && (str = aVar.f4049e) != null && !f4044h.b(str, this.f4049e)) {
                return false;
            }
            int i5 = this.f4050f;
            if (i5 != 0 && i5 == aVar.f4050f) {
                boolean z4 = (r1 = this.f4049e) != null ? false : false;
                if (z4) {
                    return false;
                }
            }
            return this.f4051g == aVar.f4051g;
        }

        public int hashCode() {
            return (((((this.f4045a.hashCode() * 31) + this.f4051g) * 31) + (this.f4047c ? 1231 : 1237)) * 31) + this.f4048d;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("Column{name='");
            sb.append(this.f4045a);
            sb.append("', type='");
            sb.append(this.f4046b);
            sb.append("', affinity='");
            sb.append(this.f4051g);
            sb.append("', notNull=");
            sb.append(this.f4047c);
            sb.append(", primaryKeyPosition=");
            sb.append(this.f4048d);
            sb.append(", defaultValue='");
            java.lang.String str = this.f4049e;
            if (str == null) {
                str = "undefined";
            }
            sb.append(str);
            sb.append("'}");
            return sb.toString();
        }
    }

    /* JADX INFO: compiled from: TableInfo.kt */
    @kotlin.Metadata
    public static final class b {
        public b() {
        }

        public /* synthetic */ b(m3.g gVar) {
            this();
        }

        public final e0.e a(f0.g gVar, java.lang.String str) {
            m3.k.e(gVar, "database");
            m3.k.e(str, "tableName");
            return e0.f.f(gVar, str);
        }
    }

    /* JADX INFO: compiled from: TableInfo.kt */
    @kotlin.Metadata
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.String f4052a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.lang.String f4053b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final java.lang.String f4054c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final java.util.List<java.lang.String> f4055d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final java.util.List<java.lang.String> f4056e;

        public c(java.lang.String str, java.lang.String str2, java.lang.String str3, java.util.List<java.lang.String> list, java.util.List<java.lang.String> list2) {
            m3.k.e(str, "referenceTable");
            m3.k.e(str2, "onDelete");
            m3.k.e(str3, "onUpdate");
            m3.k.e(list, "columnNames");
            m3.k.e(list2, "referenceColumnNames");
            this.f4052a = str;
            this.f4053b = str2;
            this.f4054c = str3;
            this.f4055d = list;
            this.f4056e = list2;
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e0.e.c)) {
                return false;
            }
            e0.e.c cVar = (e0.e.c) obj;
            if (m3.k.a(this.f4052a, cVar.f4052a) && m3.k.a(this.f4053b, cVar.f4053b) && m3.k.a(this.f4054c, cVar.f4054c) && m3.k.a(this.f4055d, cVar.f4055d)) {
                return m3.k.a(this.f4056e, cVar.f4056e);
            }
            return false;
        }

        public int hashCode() {
            return (((((((this.f4052a.hashCode() * 31) + this.f4053b.hashCode()) * 31) + this.f4054c.hashCode()) * 31) + this.f4055d.hashCode()) * 31) + this.f4056e.hashCode();
        }

        public java.lang.String toString() {
            return "ForeignKey{referenceTable='" + this.f4052a + "', onDelete='" + this.f4053b + " +', onUpdate='" + this.f4054c + "', columnNames=" + this.f4055d + ", referenceColumnNames=" + this.f4056e + '}';
        }
    }

    /* JADX INFO: compiled from: TableInfo.kt */
    @kotlin.Metadata
    public static final class d implements java.lang.Comparable<e0.e.d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f4057a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f4058b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final java.lang.String f4059c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final java.lang.String f4060d;

        public d(int i5, int i6, java.lang.String str, java.lang.String str2) {
            m3.k.e(str, "from");
            m3.k.e(str2, "to");
            this.f4057a = i5;
            this.f4058b = i6;
            this.f4059c = str;
            this.f4060d = str2;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(e0.e.d dVar) {
            m3.k.e(dVar, "other");
            int i5 = this.f4057a - dVar.f4057a;
            return i5 == 0 ? this.f4058b - dVar.f4058b : i5;
        }

        public final java.lang.String b() {
            return this.f4059c;
        }

        public final int d() {
            return this.f4057a;
        }

        public final java.lang.String e() {
            return this.f4060d;
        }
    }

    /* JADX INFO: renamed from: e0.e$e, reason: collision with other inner class name */
    /* JADX INFO: compiled from: TableInfo.kt */
    @kotlin.Metadata
    public static final class C0044e {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final e0.e.C0044e.a f4061e = new e0.e.C0044e.a(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.String f4062a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f4063b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final java.util.List<java.lang.String> f4064c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public java.util.List<java.lang.String> f4065d;

        /* JADX INFO: renamed from: e0.e$e$a */
        /* JADX INFO: compiled from: TableInfo.kt */
        @kotlin.Metadata
        public static final class a {
            public a() {
            }

            public /* synthetic */ a(m3.g gVar) {
                this();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.Object, java.util.Collection, java.util.List<java.lang.String>] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.util.List<java.lang.String>] */
        /* JADX WARN: Type inference failed for: r5v2, types: [java.util.ArrayList] */
        public C0044e(java.lang.String str, boolean z4, java.util.List<java.lang.String> list, java.util.List<java.lang.String> list2) {
            m3.k.e(str, "name");
            m3.k.e(list, "columns");
            m3.k.e(list2, "orders");
            this.f4062a = str;
            this.f4063b = z4;
            this.f4064c = list;
            this.f4065d = list2;
            if (list2.isEmpty()) {
                int size = list.size();
                list2 = new java.util.ArrayList<>(size);
                for (int i5 = 0; i5 < size; i5++) {
                    list2.add(androidx.room.j.ASC.name());
                }
            }
            this.f4065d = list2;
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e0.e.C0044e)) {
                return false;
            }
            e0.e.C0044e c0044e = (e0.e.C0044e) obj;
            if (this.f4063b == c0044e.f4063b && m3.k.a(this.f4064c, c0044e.f4064c) && m3.k.a(this.f4065d, c0044e.f4065d)) {
                return s3.l.n(this.f4062a, "index_", false, 2, null) ? s3.l.n(c0044e.f4062a, "index_", false, 2, null) : m3.k.a(this.f4062a, c0044e.f4062a);
            }
            return false;
        }

        public int hashCode() {
            return ((((((s3.l.n(this.f4062a, "index_", false, 2, null) ? -1184239155 : this.f4062a.hashCode()) * 31) + (this.f4063b ? 1 : 0)) * 31) + this.f4064c.hashCode()) * 31) + this.f4065d.hashCode();
        }

        public java.lang.String toString() {
            return "Index{name='" + this.f4062a + "', unique=" + this.f4063b + ", columns=" + this.f4064c + ", orders=" + this.f4065d + "'}";
        }
    }

    public e(java.lang.String str, java.util.Map<java.lang.String, e0.e.a> map, java.util.Set<e0.e.c> set, java.util.Set<e0.e.C0044e> set2) {
        m3.k.e(str, "name");
        m3.k.e(map, "columns");
        m3.k.e(set, "foreignKeys");
        this.f4040a = str;
        this.f4041b = map;
        this.f4042c = set;
        this.f4043d = set2;
    }

    public static final e0.e a(f0.g gVar, java.lang.String str) {
        return f4039e.a(gVar, str);
    }

    public boolean equals(java.lang.Object obj) {
        java.util.Set<e0.e.C0044e> set;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e0.e)) {
            return false;
        }
        e0.e eVar = (e0.e) obj;
        if (!m3.k.a(this.f4040a, eVar.f4040a) || !m3.k.a(this.f4041b, eVar.f4041b) || !m3.k.a(this.f4042c, eVar.f4042c)) {
            return false;
        }
        java.util.Set<e0.e.C0044e> set2 = this.f4043d;
        if (set2 == null || (set = eVar.f4043d) == null) {
            return true;
        }
        return m3.k.a(set2, set);
    }

    public int hashCode() {
        return (((this.f4040a.hashCode() * 31) + this.f4041b.hashCode()) * 31) + this.f4042c.hashCode();
    }

    public java.lang.String toString() {
        return "TableInfo{name='" + this.f4040a + "', columns=" + this.f4041b + ", foreignKeys=" + this.f4042c + ", indices=" + this.f4043d + '}';
    }
}
