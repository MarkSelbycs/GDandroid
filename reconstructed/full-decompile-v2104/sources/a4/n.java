package a4;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final /* synthetic */ class n {
    public static /* synthetic */ boolean a(java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        while (!atomicReferenceFieldUpdater.compareAndSet(obj, obj2, obj3)) {
            if (atomicReferenceFieldUpdater.get(obj) != obj2) {
                return false;
            }
        }
        return true;
    }
}
