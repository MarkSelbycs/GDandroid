package p1;

/* JADX INFO: compiled from: Week.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public enum j {
    SUNDAY(1),
    MONDAY(2),
    TUESDAY(3),
    WEDNESDAY(4),
    THURSDAY(5),
    FRIDAY(6),
    SATURDAY(7);


    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final java.lang.String[] f5483i = {"sun", "mon", "tue", "wed", "thu", "fri", "sat"};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final p1.j[] f5484o = values();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5486a;

    j(int i5) {
        this.f5486a = i5;
    }

    public static p1.j e(int i5) {
        p1.j[] jVarArr = f5484o;
        if (i5 > jVarArr.length || i5 < 1) {
            return null;
        }
        return jVarArr[i5 - 1];
    }

    public int b() {
        return this.f5486a;
    }
}
