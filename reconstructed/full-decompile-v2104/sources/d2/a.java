package d2;

/* JADX INFO: compiled from: SplitIter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a extends l1.d<java.lang.String> implements java.io.Serializable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.String f3947c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final c2.d f3948d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3949e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f3950f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3951g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3952h;

    public a(java.lang.CharSequence charSequence, c2.d dVar, int i5, boolean z4) {
        v1.e.q(charSequence, "Text must be not null!", new java.lang.Object[0]);
        this.f3947c = charSequence.toString();
        this.f3948d = dVar.h(charSequence);
        this.f3949e = i5 <= 0 ? Integer.MAX_VALUE : i5;
        this.f3950f = z4;
    }

    @Override // l1.d
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public java.lang.String b() {
        if (this.f3952h >= this.f3949e || this.f3951g > this.f3947c.length()) {
            return null;
        }
        if (this.f3952h == this.f3949e - 1) {
            if (this.f3950f && this.f3951g == this.f3947c.length()) {
                return null;
            }
            this.f3952h++;
            return this.f3947c.substring(this.f3951g);
        }
        int iC = this.f3948d.c(this.f3951g);
        if (iC < 0) {
            if (this.f3951g <= this.f3947c.length()) {
                java.lang.String strSubstring = this.f3947c.substring(this.f3951g);
                if (!this.f3950f || !strSubstring.isEmpty()) {
                    this.f3951g = Integer.MAX_VALUE;
                    return strSubstring;
                }
            }
            return null;
        }
        java.lang.String strSubstring2 = this.f3947c.substring(this.f3951g, iC);
        this.f3951g = this.f3948d.b(iC);
        if (this.f3950f && strSubstring2.isEmpty()) {
            return b();
        }
        this.f3952h++;
        return strSubstring2;
    }

    public <T> java.util.List<T> e(java.util.function.Function<java.lang.String, T> function) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        while (hasNext()) {
            T tApply = function.apply(next());
            if (!this.f3950f || !e2.b0.e0(tApply)) {
                arrayList.add(tApply);
            }
        }
        return arrayList.isEmpty() ? new java.util.ArrayList(0) : arrayList;
    }
}
