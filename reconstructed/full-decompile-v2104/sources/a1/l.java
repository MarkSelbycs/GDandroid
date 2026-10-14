package a1;

/* JADX INFO: compiled from: PackageManagerHelper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.String f29a = q0.n.i("PackageManagerHelper");

    public static int a(android.content.Context context, java.lang.String str) {
        return context.getPackageManager().getComponentEnabledSetting(new android.content.ComponentName(context, str));
    }

    public static boolean b(int i5, boolean z4) {
        if (i5 == 0) {
            return z4;
        }
        return i5 == 1;
    }

    public static void c(android.content.Context context, java.lang.Class<?> cls, boolean z4) {
        try {
            if (z4 == b(a(context, cls.getName()), false)) {
                q0.n.e().a(f29a, "Skipping component enablement for " + cls.getName());
                return;
            }
            context.getPackageManager().setComponentEnabledSetting(new android.content.ComponentName(context, cls.getName()), z4 ? 1 : 2, 1);
            q0.n nVarE = q0.n.e();
            java.lang.String str = f29a;
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append(cls.getName());
            sb.append(" ");
            sb.append(z4 ? "enabled" : "disabled");
            nVarE.a(str, sb.toString());
        } catch (java.lang.Exception e5) {
            q0.n nVarE2 = q0.n.e();
            java.lang.String str2 = f29a;
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
            sb2.append(cls.getName());
            sb2.append("could not be ");
            sb2.append(z4 ? "enabled" : "disabled");
            nVarE2.b(str2, sb2.toString(), e5);
        }
    }
}
