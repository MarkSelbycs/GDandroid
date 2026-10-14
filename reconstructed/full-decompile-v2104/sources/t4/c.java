package t4;

/* JADX INFO: compiled from: DefaultTimerFactory.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c implements t4.i {

    /* JADX INFO: compiled from: DefaultTimerFactory.java */
    public class a implements t4.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.util.Timer f6269a = new java.util.Timer(true);

        public a() {
        }

        @Override // t4.a
        public void a(java.util.TimerTask timerTask, long j5) {
            this.f6269a.schedule(timerTask, j5);
        }

        @Override // t4.a
        public void cancel() {
            this.f6269a.cancel();
        }
    }

    @Override // t4.i
    public t4.a a() {
        return new t4.c.a();
    }
}
