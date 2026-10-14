package c2;

/* JADX INFO: compiled from: TextFinder.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class d implements c2.b, java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.lang.CharSequence f2985a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2986b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2987c;

    public int e() {
        if (this.f2987c && -1 == this.f2986b) {
            return -1;
        }
        int i5 = this.f2986b;
        return i5 < 0 ? i5 + this.f2985a.length() + 1 : java.lang.Math.min(i5, this.f2985a.length());
    }

    public c2.d f(int i5) {
        this.f2986b = i5;
        return this;
    }

    public c2.d h(java.lang.CharSequence charSequence) {
        this.f2985a = (java.lang.CharSequence) v1.e.q(charSequence, "Text must be not null!", new java.lang.Object[0]);
        return this;
    }
}
