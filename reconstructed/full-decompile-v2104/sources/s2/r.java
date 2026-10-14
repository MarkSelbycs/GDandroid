package s2;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: LongSerializationPolicy.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final s2.r f6071a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final s2.r f6072b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ s2.r[] f6073c;

    /* JADX INFO: compiled from: LongSerializationPolicy.java */
    public static enum a extends s2.r {
        public a(java.lang.String str, int i5) {
            super(str, i5, null);
        }
    }

    static {
        s2.r.a aVar = new s2.r.a("DEFAULT", 0);
        f6071a = aVar;
        s2.r rVar = new s2.r("STRING", 1) { // from class: s2.r.b
            {
                s2.r.a aVar2 = null;
            }
        };
        f6072b = rVar;
        f6073c = new s2.r[]{aVar, rVar};
    }

    public r(java.lang.String str, int i5) {
        super(str, i5);
    }

    public static s2.r valueOf(java.lang.String str) {
        return (s2.r) java.lang.Enum.valueOf(s2.r.class, str);
    }

    public static s2.r[] values() {
        return (s2.r[]) f6073c.clone();
    }

    public /* synthetic */ r(java.lang.String str, int i5, s2.r.a aVar) {
        this(str, i5);
    }
}
