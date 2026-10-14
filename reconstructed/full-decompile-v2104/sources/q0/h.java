package q0;

/* JADX INFO: compiled from: ForegroundInfo.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5695a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5696b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final android.app.Notification f5697c;

    public h(int i5, android.app.Notification notification) {
        this(i5, notification, 0);
    }

    public int a() {
        return this.f5696b;
    }

    public android.app.Notification b() {
        return this.f5697c;
    }

    public int c() {
        return this.f5695a;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || q0.h.class != obj.getClass()) {
            return false;
        }
        q0.h hVar = (q0.h) obj;
        if (this.f5695a == hVar.f5695a && this.f5696b == hVar.f5696b) {
            return this.f5697c.equals(hVar.f5697c);
        }
        return false;
    }

    public int hashCode() {
        return (((this.f5695a * 31) + this.f5696b) * 31) + this.f5697c.hashCode();
    }

    public java.lang.String toString() {
        return "ForegroundInfo{mNotificationId=" + this.f5695a + ", mForegroundServiceType=" + this.f5696b + ", mNotification=" + this.f5697c + '}';
    }

    public h(int i5, android.app.Notification notification, int i6) {
        this.f5695a = i5;
        this.f5697c = notification;
        this.f5696b = i6;
    }
}
