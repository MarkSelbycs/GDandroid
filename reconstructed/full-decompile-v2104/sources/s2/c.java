package s2;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: FieldNamingPolicy.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class c implements s2.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final s2.c f6042a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final s2.c f6043b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final s2.c f6044c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final s2.c f6045d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final s2.c f6046e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ s2.c[] f6047f;

    /* JADX INFO: compiled from: FieldNamingPolicy.java */
    public static enum a extends s2.c {
        public a(java.lang.String str, int i5) {
            super(str, i5, null);
        }

        @Override // s2.d
        public java.lang.String b(java.lang.reflect.Field field) {
            return field.getName();
        }
    }

    static {
        s2.c.a aVar = new s2.c.a("IDENTITY", 0);
        f6042a = aVar;
        s2.c cVar = new s2.c("UPPER_CAMEL_CASE", 1) { // from class: s2.c.b
            {
                s2.c.a aVar2 = null;
            }

            @Override // s2.d
            public java.lang.String b(java.lang.reflect.Field field) {
                return s2.c.h(field.getName());
            }
        };
        f6043b = cVar;
        s2.c cVar2 = new s2.c("UPPER_CAMEL_CASE_WITH_SPACES", 2) { // from class: s2.c.c
            {
                s2.c.a aVar2 = null;
            }

            @Override // s2.d
            public java.lang.String b(java.lang.reflect.Field field) {
                return s2.c.h(s2.c.f(field.getName(), " "));
            }
        };
        f6044c = cVar2;
        s2.c cVar3 = new s2.c("LOWER_CASE_WITH_UNDERSCORES", 3) { // from class: s2.c.d
            {
                s2.c.a aVar2 = null;
            }

            @Override // s2.d
            public java.lang.String b(java.lang.reflect.Field field) {
                return s2.c.f(field.getName(), "_").toLowerCase(java.util.Locale.ENGLISH);
            }
        };
        f6045d = cVar3;
        s2.c cVar4 = new s2.c("LOWER_CASE_WITH_DASHES", 4) { // from class: s2.c.e
            {
                s2.c.a aVar2 = null;
            }

            @Override // s2.d
            public java.lang.String b(java.lang.reflect.Field field) {
                return s2.c.f(field.getName(), "-").toLowerCase(java.util.Locale.ENGLISH);
            }
        };
        f6046e = cVar4;
        f6047f = new s2.c[]{aVar, cVar, cVar2, cVar3, cVar4};
    }

    public c(java.lang.String str, int i5) {
        super(str, i5);
    }

    public static java.lang.String e(char c5, java.lang.String str, int i5) {
        if (i5 >= str.length()) {
            return java.lang.String.valueOf(c5);
        }
        return c5 + str.substring(i5);
    }

    public static java.lang.String f(java.lang.String str, java.lang.String str2) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        for (int i5 = 0; i5 < str.length(); i5++) {
            char cCharAt = str.charAt(i5);
            if (java.lang.Character.isUpperCase(cCharAt) && sb.length() != 0) {
                sb.append(str2);
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    public static java.lang.String h(java.lang.String str) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        int i5 = 0;
        char cCharAt = str.charAt(0);
        while (i5 < str.length() - 1 && !java.lang.Character.isLetter(cCharAt)) {
            sb.append(cCharAt);
            i5++;
            cCharAt = str.charAt(i5);
        }
        if (i5 == str.length()) {
            return sb.toString();
        }
        if (java.lang.Character.isUpperCase(cCharAt)) {
            return str;
        }
        sb.append(e(java.lang.Character.toUpperCase(cCharAt), str, i5 + 1));
        return sb.toString();
    }

    public static s2.c valueOf(java.lang.String str) {
        return (s2.c) java.lang.Enum.valueOf(s2.c.class, str);
    }

    public static s2.c[] values() {
        return (s2.c[]) f6047f.clone();
    }

    public /* synthetic */ c(java.lang.String str, int i5, s2.c.a aVar) {
        this(str, i5);
    }
}
