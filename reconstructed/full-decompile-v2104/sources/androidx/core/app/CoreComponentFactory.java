package androidx.core.app;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class CoreComponentFactory extends android.app.AppComponentFactory {

    public interface a {
        java.lang.Object a();
    }

    public static <T> T a(T t5) {
        T t6;
        return (!(t5 instanceof androidx.core.app.CoreComponentFactory.a) || (t6 = (T) ((androidx.core.app.CoreComponentFactory.a) t5).a()) == null) ? t5 : t6;
    }

    @Override // android.app.AppComponentFactory
    public android.app.Activity instantiateActivity(java.lang.ClassLoader classLoader, java.lang.String str, android.content.Intent intent) throws java.lang.IllegalAccessException, java.lang.InstantiationException, java.lang.ClassNotFoundException {
        return (android.app.Activity) a(super.instantiateActivity(classLoader, str, intent));
    }

    @Override // android.app.AppComponentFactory
    public android.app.Application instantiateApplication(java.lang.ClassLoader classLoader, java.lang.String str) throws java.lang.IllegalAccessException, java.lang.InstantiationException, java.lang.ClassNotFoundException {
        return (android.app.Application) a(super.instantiateApplication(classLoader, str));
    }

    @Override // android.app.AppComponentFactory
    public android.content.ContentProvider instantiateProvider(java.lang.ClassLoader classLoader, java.lang.String str) throws java.lang.IllegalAccessException, java.lang.InstantiationException, java.lang.ClassNotFoundException {
        return (android.content.ContentProvider) a(super.instantiateProvider(classLoader, str));
    }

    @Override // android.app.AppComponentFactory
    public android.content.BroadcastReceiver instantiateReceiver(java.lang.ClassLoader classLoader, java.lang.String str, android.content.Intent intent) throws java.lang.IllegalAccessException, java.lang.InstantiationException, java.lang.ClassNotFoundException {
        return (android.content.BroadcastReceiver) a(super.instantiateReceiver(classLoader, str, intent));
    }

    @Override // android.app.AppComponentFactory
    public android.app.Service instantiateService(java.lang.ClassLoader classLoader, java.lang.String str, android.content.Intent intent) throws java.lang.IllegalAccessException, java.lang.InstantiationException, java.lang.ClassNotFoundException {
        return (android.app.Service) a(super.instantiateService(classLoader, str, intent));
    }
}
