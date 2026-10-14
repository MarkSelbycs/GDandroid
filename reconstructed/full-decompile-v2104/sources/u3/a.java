package u3;

/* JADX INFO: compiled from: HandlerDispatcher.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a implements y3.v {
    @Override // y3.v
    public int a() {
        return 1073741823;
    }

    @Override // y3.v
    public java.lang.String b() {
        return "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used";
    }

    @Override // y3.v
    public t3.r1 c(java.util.List<? extends y3.v> list) {
        android.os.Looper mainLooper = android.os.Looper.getMainLooper();
        if (mainLooper != null) {
            return new u3.c(u3.e.a(mainLooper, true), null, 2, null);
        }
        throw new java.lang.IllegalStateException("The main looper is not available");
    }
}
