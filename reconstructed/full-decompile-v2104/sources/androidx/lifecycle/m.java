package androidx.lifecycle;

/* JADX INFO: compiled from: ReportFragment.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class m extends android.app.Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public androidx.lifecycle.m.a f1791a;

    /* JADX INFO: compiled from: ReportFragment.java */
    public interface a {
        void a();

        void b();

        void onCreate();
    }

    /* JADX INFO: compiled from: ReportFragment.java */
    public static class b implements android.app.Application.ActivityLifecycleCallbacks {
        public static void registerIn(android.app.Activity activity) {
            activity.registerActivityLifecycleCallbacks(new androidx.lifecycle.m.b());
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(android.app.Activity activity, android.os.Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(android.app.Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(android.app.Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostCreated(android.app.Activity activity, android.os.Bundle bundle) {
            androidx.lifecycle.m.a(activity, androidx.lifecycle.d.b.ON_CREATE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(android.app.Activity activity) {
            androidx.lifecycle.m.a(activity, androidx.lifecycle.d.b.ON_RESUME);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(android.app.Activity activity) {
            androidx.lifecycle.m.a(activity, androidx.lifecycle.d.b.ON_START);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreDestroyed(android.app.Activity activity) {
            androidx.lifecycle.m.a(activity, androidx.lifecycle.d.b.ON_DESTROY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPrePaused(android.app.Activity activity) {
            androidx.lifecycle.m.a(activity, androidx.lifecycle.d.b.ON_PAUSE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreStopped(android.app.Activity activity) {
            androidx.lifecycle.m.a(activity, androidx.lifecycle.d.b.ON_STOP);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(android.app.Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(android.app.Activity activity, android.os.Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(android.app.Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(android.app.Activity activity) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(android.app.Activity activity, androidx.lifecycle.d.b bVar) {
        if (activity instanceof androidx.lifecycle.i) {
            ((androidx.lifecycle.i) activity).getLifecycle().f(bVar);
        } else if (activity instanceof androidx.lifecycle.g) {
            androidx.lifecycle.d lifecycle = ((androidx.lifecycle.g) activity).getLifecycle();
            if (lifecycle instanceof androidx.lifecycle.h) {
                ((androidx.lifecycle.h) lifecycle).f(bVar);
            }
        }
    }

    public static void f(android.app.Activity activity) {
        if (android.os.Build.VERSION.SDK_INT >= 29) {
            androidx.lifecycle.m.b.registerIn(activity);
        }
        android.app.FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new androidx.lifecycle.m(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    public final void b(androidx.lifecycle.d.b bVar) {
        if (android.os.Build.VERSION.SDK_INT < 29) {
            a(getActivity(), bVar);
        }
    }

    public final void c(androidx.lifecycle.m.a aVar) {
        if (aVar != null) {
            aVar.onCreate();
        }
    }

    public final void d(androidx.lifecycle.m.a aVar) {
        if (aVar != null) {
            aVar.a();
        }
    }

    public final void e(androidx.lifecycle.m.a aVar) {
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(android.os.Bundle bundle) {
        super.onActivityCreated(bundle);
        c(this.f1791a);
        b(androidx.lifecycle.d.b.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        b(androidx.lifecycle.d.b.ON_DESTROY);
        this.f1791a = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        b(androidx.lifecycle.d.b.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        d(this.f1791a);
        b(androidx.lifecycle.d.b.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        e(this.f1791a);
        b(androidx.lifecycle.d.b.ON_START);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        b(androidx.lifecycle.d.b.ON_STOP);
    }
}
