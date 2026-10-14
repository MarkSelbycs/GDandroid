package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class AppCompatRatingBar extends android.widget.RatingBar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.appcompat.widget.i f704a;

    public AppCompatRatingBar(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R.attr.ratingBarStyle);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public synchronized void onMeasure(int i5, int i6) {
        super.onMeasure(i5, i6);
        android.graphics.Bitmap bitmapB = this.f704a.b();
        if (bitmapB != null) {
            setMeasuredDimension(android.view.View.resolveSizeAndState(bitmapB.getWidth() * getNumStars(), i5, 0), getMeasuredHeight());
        }
    }

    public AppCompatRatingBar(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        androidx.appcompat.widget.i iVar = new androidx.appcompat.widget.i(this);
        this.f704a = iVar;
        iVar.c(attributeSet, i5);
    }
}
