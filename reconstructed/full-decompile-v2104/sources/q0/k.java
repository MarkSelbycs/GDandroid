package q0;

/* JADX INFO: compiled from: InputMergerFactory.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class k {
    public abstract q0.j a(java.lang.String str);

    public final q0.j b(java.lang.String str) {
        m3.k.e(str, "className");
        q0.j jVarA = a(str);
        return jVarA == null ? q0.l.a(str) : jVarA;
    }
}
