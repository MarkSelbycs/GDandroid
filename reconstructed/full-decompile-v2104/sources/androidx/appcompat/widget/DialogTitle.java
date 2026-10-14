package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class DialogTitle extends android.widget.TextView {
    public DialogTitle(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i5, int i6) {
        int lineCount;
        super.onMeasure(i5, i6);
        android.text.Layout layout = getLayout();
        if (layout == null || (lineCount = layout.getLineCount()) <= 0 || layout.getEllipsisCount(lineCount - 1) <= 0) {
            return;
        }
        setSingleLine(false);
        setMaxLines(2);
        android.content.res.TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, androidx.appcompat.R.styleable.TextAppearance, android.R.attr.textAppearanceMedium, android.R.style.TextAppearance.Medium);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.TextAppearance_android_textSize, 0);
        if (dimensionPixelSize != 0) {
            setTextSize(0, dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
        super.onMeasure(i5, i6);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(android.view.ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.k.k(this, callback));
    }

    public DialogTitle(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
