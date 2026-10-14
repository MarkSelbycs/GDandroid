package f2;

/* JADX INFO: compiled from: JSONParser.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f2.o f4210a;

    public m(f2.o oVar) {
        this.f4210a = oVar;
    }

    public static f2.m a(f2.o oVar) {
        return new f2.m(oVar);
    }

    public void b(f2.e eVar, v1.i<y1.a<java.lang.Object>> iVar) {
        f2.o oVar = this.f4210a;
        if (oVar.g() != '[') {
            throw oVar.j("A JSONArray text must start with '['");
        }
        if (oVar.g() == ']') {
            return;
        }
        oVar.a();
        while (true) {
            if (oVar.g() == ',') {
                oVar.a();
                eVar.u(f2.j.f4206a, iVar);
            } else {
                oVar.a();
                eVar.u(oVar.i(), iVar);
            }
            char cG = oVar.g();
            if (cG != ',') {
                if (cG != ']') {
                    throw oVar.j("Expected a ',' or ']'");
                }
                return;
            } else if (oVar.g() == ']') {
                return;
            } else {
                oVar.a();
            }
        }
    }

    public void c(f2.l lVar, v1.i<y1.d<java.lang.String, java.lang.Object>> iVar) {
        f2.o oVar = this.f4210a;
        if (oVar.g() != '{') {
            throw oVar.j("A JSONObject text must begin with '{'");
        }
        while (true) {
            char c5 = oVar.c();
            char cG = oVar.g();
            if (cG == 0) {
                throw oVar.j("A JSONObject text must end with '}'");
            }
            if (cG == '[' || cG == '{') {
                if (c5 == '{') {
                    throw oVar.j("A JSONObject can not directly nest another JSONObject or JSONArray.");
                }
            } else if (cG == '}') {
                return;
            }
            oVar.a();
            java.lang.String string = oVar.i().toString();
            if (oVar.g() != ':') {
                throw oVar.j("Expected a ':' after a key");
            }
            lVar.T(string, oVar.i(), iVar, lVar.h().f());
            char cG2 = oVar.g();
            if (cG2 != ',' && cG2 != ';') {
                if (cG2 != '}') {
                    throw oVar.j("Expected a ',' or '}'");
                }
                return;
            } else if (oVar.g() == '}') {
                return;
            } else {
                oVar.a();
            }
        }
    }
}
