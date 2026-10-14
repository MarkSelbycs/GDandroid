package androidx.core.app;

/* JADX INFO: compiled from: TaskStackBuilder.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class l implements java.lang.Iterable<android.content.Intent> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.ArrayList<android.content.Intent> f1362a = new java.util.ArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.content.Context f1363b;

    /* JADX INFO: compiled from: TaskStackBuilder.java */
    public interface a {
        android.content.Intent getSupportParentActivityIntent();
    }

    public l(android.content.Context context) {
        this.f1363b = context;
    }

    public static androidx.core.app.l d(android.content.Context context) {
        return new androidx.core.app.l(context);
    }

    public androidx.core.app.l a(android.content.Intent intent) {
        this.f1362a.add(intent);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public androidx.core.app.l b(android.app.Activity activity) {
        android.content.Intent supportParentActivityIntent = activity instanceof androidx.core.app.l.a ? ((androidx.core.app.l.a) activity).getSupportParentActivityIntent() : null;
        if (supportParentActivityIntent == null) {
            supportParentActivityIntent = androidx.core.app.c.a(activity);
        }
        if (supportParentActivityIntent != null) {
            android.content.ComponentName component = supportParentActivityIntent.getComponent();
            if (component == null) {
                component = supportParentActivityIntent.resolveActivity(this.f1363b.getPackageManager());
            }
            c(component);
            a(supportParentActivityIntent);
        }
        return this;
    }

    public androidx.core.app.l c(android.content.ComponentName componentName) {
        int size = this.f1362a.size();
        try {
            android.content.Intent intentB = androidx.core.app.c.b(this.f1363b, componentName);
            while (intentB != null) {
                this.f1362a.add(size, intentB);
                intentB = androidx.core.app.c.b(this.f1363b, intentB.getComponent());
            }
            return this;
        } catch (android.content.pm.PackageManager.NameNotFoundException e5) {
            android.util.Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new java.lang.IllegalArgumentException(e5);
        }
    }

    public void e() {
        f(null);
    }

    public void f(android.os.Bundle bundle) {
        if (this.f1362a.isEmpty()) {
            throw new java.lang.IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        android.content.Intent[] intentArr = (android.content.Intent[]) this.f1362a.toArray(new android.content.Intent[0]);
        intentArr[0] = new android.content.Intent(intentArr[0]).addFlags(268484608);
        if (androidx.core.content.a.f(this.f1363b, intentArr, bundle)) {
            return;
        }
        android.content.Intent intent = new android.content.Intent(intentArr[intentArr.length - 1]);
        intent.addFlags(com.alibaba.fastjson.asm.Label.FORWARD_REFERENCE_TYPE_SHORT);
        this.f1363b.startActivity(intent);
    }

    @Override // java.lang.Iterable
    @java.lang.Deprecated
    public java.util.Iterator<android.content.Intent> iterator() {
        return this.f1362a.iterator();
    }
}
