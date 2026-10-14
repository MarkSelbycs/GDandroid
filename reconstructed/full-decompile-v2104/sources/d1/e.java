package d1;

/* JADX INFO: compiled from: DiagnosticsWorker.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.String f3946a;

    static {
        java.lang.String strI = q0.n.i("DiagnosticsWrkr");
        m3.k.d(strI, "tagWithPrefix(\"DiagnosticsWrkr\")");
        f3946a = strI;
    }

    public static final java.lang.String c(z0.u uVar, java.lang.String str, java.lang.Integer num, java.lang.String str2) {
        return '\n' + uVar.f7032a + "\t " + uVar.f7034c + "\t " + num + "\t " + uVar.f7033b.name() + "\t " + str + "\t " + str2 + '\t';
    }

    public static final java.lang.String d(z0.o oVar, z0.z zVar, z0.j jVar, java.util.List<z0.u> list) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("\n Id \t Class Name\t Job Id\t State\t Unique Name\t Tags\t");
        for (z0.u uVar : list) {
            z0.i iVarI = jVar.i(z0.x.a(uVar));
            sb.append(c(uVar, b3.w.t(oVar.b(uVar.f7032a), ",", null, null, 0, null, null, 62, null), iVarI != null ? java.lang.Integer.valueOf(iVarI.f7004c) : null, b3.w.t(zVar.e(uVar.f7032a), ",", null, null, 0, null, null, 62, null)));
        }
        java.lang.String string = sb.toString();
        m3.k.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
