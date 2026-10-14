package b2;

/* JADX INFO: compiled from: StrSplitter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h {
    public static /* synthetic */ java.lang.String b(boolean z4, java.lang.String str) {
        return z4 ? b2.c.W(str) : str;
    }

    public static java.util.List<java.lang.String> c(java.lang.CharSequence charSequence, char c5, int i5, boolean z4, boolean z5) {
        return e(charSequence, c5, i5, z4, z5, false);
    }

    public static <R> java.util.List<R> d(java.lang.CharSequence charSequence, char c5, int i5, boolean z4, boolean z5, java.util.function.Function<java.lang.String, R> function) {
        return charSequence == null ? new java.util.ArrayList(0) : new d2.a(charSequence, new c2.a(c5, z5), i5, z4).e(function);
    }

    public static java.util.List<java.lang.String> e(java.lang.CharSequence charSequence, char c5, int i5, boolean z4, boolean z5, boolean z6) {
        return d(charSequence, c5, i5, z5, z6, h(z4));
    }

    public static java.lang.String[] f(java.lang.CharSequence charSequence, char c5, int i5, boolean z4, boolean z5) {
        return g(c(charSequence, c5, i5, z4, z5));
    }

    public static java.lang.String[] g(java.util.List<java.lang.String> list) {
        return (java.lang.String[]) list.toArray(new java.lang.String[0]);
    }

    public static java.util.function.Function<java.lang.String, java.lang.String> h(final boolean z4) {
        return new java.util.function.Function() { // from class: b2.g
            @Override // java.util.function.Function
            public final java.lang.Object apply(java.lang.Object obj) {
                return b2.h.b(z4, (java.lang.String) obj);
            }
        };
    }
}
