package s;

/* JADX INFO: compiled from: UserManagerCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d {

    /* JADX INFO: compiled from: UserManagerCompat.java */
    public static class a {
        public static boolean a(android.content.Context context) {
            return ((android.os.UserManager) context.getSystemService(android.os.UserManager.class)).isUserUnlocked();
        }
    }

    public static boolean a(android.content.Context context) {
        return s.d.a.a(context);
    }
}
