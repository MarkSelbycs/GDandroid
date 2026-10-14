package x;

/* JADX INFO: compiled from: AccessibilityClickableSpanCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a extends android.text.style.ClickableSpan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6738a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x.c f6739b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6740c;

    public a(int i5, x.c cVar, int i6) {
        this.f6738a = i5;
        this.f6739b = cVar;
        this.f6740c = i6;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(android.view.View view) {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f6738a);
        this.f6739b.H(this.f6740c, bundle);
    }
}
