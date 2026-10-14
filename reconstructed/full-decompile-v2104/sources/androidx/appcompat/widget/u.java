package androidx.appcompat.widget;

/* JADX INFO: compiled from: ResourcesWrapper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class u extends android.content.res.Resources {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.content.res.Resources f1041a;

    public u(android.content.res.Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f1041a = resources;
    }

    @Override // android.content.res.Resources
    public android.content.res.XmlResourceParser getAnimation(int i5) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getAnimation(i5);
    }

    @Override // android.content.res.Resources
    public boolean getBoolean(int i5) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getBoolean(i5);
    }

    @Override // android.content.res.Resources
    public int getColor(int i5) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getColor(i5);
    }

    @Override // android.content.res.Resources
    public android.content.res.ColorStateList getColorStateList(int i5) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getColorStateList(i5);
    }

    @Override // android.content.res.Resources
    public android.content.res.Configuration getConfiguration() {
        return this.f1041a.getConfiguration();
    }

    @Override // android.content.res.Resources
    public float getDimension(int i5) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getDimension(i5);
    }

    @Override // android.content.res.Resources
    public int getDimensionPixelOffset(int i5) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getDimensionPixelOffset(i5);
    }

    @Override // android.content.res.Resources
    public int getDimensionPixelSize(int i5) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getDimensionPixelSize(i5);
    }

    @Override // android.content.res.Resources
    public android.util.DisplayMetrics getDisplayMetrics() {
        return this.f1041a.getDisplayMetrics();
    }

    @Override // android.content.res.Resources
    public android.graphics.drawable.Drawable getDrawable(int i5) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getDrawable(i5);
    }

    @Override // android.content.res.Resources
    public android.graphics.drawable.Drawable getDrawableForDensity(int i5, int i6) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getDrawableForDensity(i5, i6);
    }

    @Override // android.content.res.Resources
    public float getFraction(int i5, int i6, int i7) {
        return this.f1041a.getFraction(i5, i6, i7);
    }

    @Override // android.content.res.Resources
    public int getIdentifier(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        return this.f1041a.getIdentifier(str, str2, str3);
    }

    @Override // android.content.res.Resources
    public int[] getIntArray(int i5) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getIntArray(i5);
    }

    @Override // android.content.res.Resources
    public int getInteger(int i5) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getInteger(i5);
    }

    @Override // android.content.res.Resources
    public android.content.res.XmlResourceParser getLayout(int i5) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getLayout(i5);
    }

    @Override // android.content.res.Resources
    public android.graphics.Movie getMovie(int i5) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getMovie(i5);
    }

    @Override // android.content.res.Resources
    public java.lang.String getQuantityString(int i5, int i6, java.lang.Object... objArr) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getQuantityString(i5, i6, objArr);
    }

    @Override // android.content.res.Resources
    public java.lang.CharSequence getQuantityText(int i5, int i6) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getQuantityText(i5, i6);
    }

    @Override // android.content.res.Resources
    public java.lang.String getResourceEntryName(int i5) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getResourceEntryName(i5);
    }

    @Override // android.content.res.Resources
    public java.lang.String getResourceName(int i5) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getResourceName(i5);
    }

    @Override // android.content.res.Resources
    public java.lang.String getResourcePackageName(int i5) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getResourcePackageName(i5);
    }

    @Override // android.content.res.Resources
    public java.lang.String getResourceTypeName(int i5) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getResourceTypeName(i5);
    }

    @Override // android.content.res.Resources
    public java.lang.String getString(int i5) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getString(i5);
    }

    @Override // android.content.res.Resources
    public java.lang.String[] getStringArray(int i5) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getStringArray(i5);
    }

    @Override // android.content.res.Resources
    public java.lang.CharSequence getText(int i5) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getText(i5);
    }

    @Override // android.content.res.Resources
    public java.lang.CharSequence[] getTextArray(int i5) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getTextArray(i5);
    }

    @Override // android.content.res.Resources
    public void getValue(int i5, android.util.TypedValue typedValue, boolean z4) throws android.content.res.Resources.NotFoundException {
        this.f1041a.getValue(i5, typedValue, z4);
    }

    @Override // android.content.res.Resources
    public void getValueForDensity(int i5, int i6, android.util.TypedValue typedValue, boolean z4) throws android.content.res.Resources.NotFoundException {
        this.f1041a.getValueForDensity(i5, i6, typedValue, z4);
    }

    @Override // android.content.res.Resources
    public android.content.res.XmlResourceParser getXml(int i5) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getXml(i5);
    }

    @Override // android.content.res.Resources
    public android.content.res.TypedArray obtainAttributes(android.util.AttributeSet attributeSet, int[] iArr) {
        return this.f1041a.obtainAttributes(attributeSet, iArr);
    }

    @Override // android.content.res.Resources
    public android.content.res.TypedArray obtainTypedArray(int i5) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.obtainTypedArray(i5);
    }

    @Override // android.content.res.Resources
    public java.io.InputStream openRawResource(int i5) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.openRawResource(i5);
    }

    @Override // android.content.res.Resources
    public android.content.res.AssetFileDescriptor openRawResourceFd(int i5) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.openRawResourceFd(i5);
    }

    @Override // android.content.res.Resources
    public void parseBundleExtra(java.lang.String str, android.util.AttributeSet attributeSet, android.os.Bundle bundle) throws org.xmlpull.v1.XmlPullParserException {
        this.f1041a.parseBundleExtra(str, attributeSet, bundle);
    }

    @Override // android.content.res.Resources
    public void parseBundleExtras(android.content.res.XmlResourceParser xmlResourceParser, android.os.Bundle bundle) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        this.f1041a.parseBundleExtras(xmlResourceParser, bundle);
    }

    @Override // android.content.res.Resources
    public void updateConfiguration(android.content.res.Configuration configuration, android.util.DisplayMetrics displayMetrics) {
        super.updateConfiguration(configuration, displayMetrics);
        android.content.res.Resources resources = this.f1041a;
        if (resources != null) {
            resources.updateConfiguration(configuration, displayMetrics);
        }
    }

    @Override // android.content.res.Resources
    public android.graphics.drawable.Drawable getDrawable(int i5, android.content.res.Resources.Theme theme) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getDrawable(i5, theme);
    }

    @Override // android.content.res.Resources
    public android.graphics.drawable.Drawable getDrawableForDensity(int i5, int i6, android.content.res.Resources.Theme theme) {
        return this.f1041a.getDrawableForDensity(i5, i6, theme);
    }

    @Override // android.content.res.Resources
    public java.lang.String getQuantityString(int i5, int i6) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getQuantityString(i5, i6);
    }

    @Override // android.content.res.Resources
    public java.lang.String getString(int i5, java.lang.Object... objArr) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.getString(i5, objArr);
    }

    @Override // android.content.res.Resources
    public java.lang.CharSequence getText(int i5, java.lang.CharSequence charSequence) {
        return this.f1041a.getText(i5, charSequence);
    }

    @Override // android.content.res.Resources
    public void getValue(java.lang.String str, android.util.TypedValue typedValue, boolean z4) throws android.content.res.Resources.NotFoundException {
        this.f1041a.getValue(str, typedValue, z4);
    }

    @Override // android.content.res.Resources
    public java.io.InputStream openRawResource(int i5, android.util.TypedValue typedValue) throws android.content.res.Resources.NotFoundException {
        return this.f1041a.openRawResource(i5, typedValue);
    }
}
