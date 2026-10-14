package q1;

/* JADX INFO: compiled from: GlobalCustomFormat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.util.Map<java.lang.CharSequence, java.util.function.Function<java.util.Date, java.lang.String>> f5828a = new a2.u();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.util.Map<java.lang.CharSequence, java.util.function.Function<java.lang.CharSequence, java.util.Date>> f5829b = new a2.u();

    static {
        m("#sss", new java.util.function.Function() { // from class: q1.l
            @Override // java.util.function.Function
            public final java.lang.Object apply(java.lang.Object obj) {
                return q1.m.h((java.util.Date) obj);
            }
        });
        n("#sss", new java.util.function.Function() { // from class: q1.i
            @Override // java.util.function.Function
            public final java.lang.Object apply(java.lang.Object obj) {
                return q1.m.i((java.lang.CharSequence) obj);
            }
        });
        m("#SSS", new java.util.function.Function() { // from class: q1.k
            @Override // java.util.function.Function
            public final java.lang.Object apply(java.lang.Object obj) {
                return q1.m.j((java.util.Date) obj);
            }
        });
        n("#SSS", new java.util.function.Function() { // from class: q1.j
            @Override // java.util.function.Function
            public final java.lang.Object apply(java.lang.Object obj) {
                return q1.m.k((java.lang.CharSequence) obj);
            }
        });
    }

    public static java.lang.String e(java.time.temporal.TemporalAccessor temporalAccessor, java.lang.CharSequence charSequence) {
        return f(p1.f.f(temporalAccessor), charSequence);
    }

    public static java.lang.String f(java.util.Date date, java.lang.CharSequence charSequence) {
        java.util.function.Function<java.util.Date, java.lang.String> function;
        java.util.Map<java.lang.CharSequence, java.util.function.Function<java.util.Date, java.lang.String>> map = f5828a;
        if (map == null || (function = map.get(charSequence)) == null) {
            return null;
        }
        return function.apply(date);
    }

    public static boolean g(java.lang.String str) {
        return f5828a.containsKey(str);
    }

    public static /* synthetic */ java.lang.String h(java.util.Date date) {
        return java.lang.String.valueOf(java.lang.Math.floorDiv(date.getTime(), 1000L));
    }

    public static /* synthetic */ java.util.Date i(java.lang.CharSequence charSequence) {
        return p1.f.e(java.lang.Math.multiplyExact(java.lang.Long.parseLong(charSequence.toString()), 1000L));
    }

    public static /* synthetic */ java.lang.String j(java.util.Date date) {
        return java.lang.String.valueOf(date.getTime());
    }

    public static /* synthetic */ java.util.Date k(java.lang.CharSequence charSequence) {
        return p1.f.e(java.lang.Long.parseLong(charSequence.toString()));
    }

    public static java.util.Date l(java.lang.CharSequence charSequence, java.lang.String str) {
        java.util.function.Function<java.lang.CharSequence, java.util.Date> function;
        java.util.Map<java.lang.CharSequence, java.util.function.Function<java.lang.CharSequence, java.util.Date>> map = f5829b;
        if (map == null || (function = map.get(str)) == null) {
            return null;
        }
        return function.apply(charSequence);
    }

    public static void m(java.lang.String str, java.util.function.Function<java.util.Date, java.lang.String> function) {
        v1.e.q(str, "Format must be not null !", new java.lang.Object[0]);
        v1.e.q(function, "Function must be not null !", new java.lang.Object[0]);
        f5828a.put(str, function);
    }

    public static void n(java.lang.String str, java.util.function.Function<java.lang.CharSequence, java.util.Date> function) {
        v1.e.q(str, "Format must be not null !", new java.lang.Object[0]);
        v1.e.q(function, "Function must be not null !", new java.lang.Object[0]);
        f5829b.put(str, function);
    }
}
