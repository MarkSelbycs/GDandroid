package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class AppCompatSeekBar extends android.widget.SeekBar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.appcompat.widget.j f705a;

    public AppCompatSeekBar(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R.attr.seekBarStyle);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        this.f705a.h();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        this.f705a.i();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public synchronized void onDraw(android.graphics.Canvas canvas) {
        super.onDraw(canvas);
        this.f705a.g(canvas);
    }

    public AppCompatSeekBar(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        androidx.appcompat.widget.j jVar = new androidx.appcompat.widget.j(this);
        this.f705a = jVar;
        jVar.c(attributeSet, i5);
    }
}
