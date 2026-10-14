package h2;

/* JADX INFO: compiled from: JSONXMLParser.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a {
    public static boolean a(f2.s sVar, f2.l lVar, java.lang.String str, boolean z4) throws f2.h {
        java.lang.String str2;
        java.lang.Object objO = sVar.o();
        int i5 = 1;
        if (objO == f2.r.f4222c) {
            char cE = sVar.e();
            if (cE == '-') {
                if (sVar.e() == '-') {
                    sVar.p("-->");
                    return false;
                }
                sVar.a();
            } else if (cE == '[') {
                if (!"CDATA".equals(sVar.o()) || sVar.e() != '[') {
                    throw sVar.j("Expected 'CDATA['");
                }
                java.lang.String strK = sVar.k();
                if (strK.length() > 0) {
                    lVar.D("content", strK);
                }
                return false;
            }
            do {
                java.lang.Object objN = sVar.n();
                if (objN == null) {
                    throw sVar.j("Missing '>' after '<!'.");
                }
                if (objN == f2.r.f4225f) {
                    i5++;
                } else if (objN == f2.r.f4224e) {
                    i5--;
                }
            } while (i5 > 0);
            return false;
        }
        if (objO == f2.r.f4226g) {
            sVar.p("?>");
            return false;
        }
        if (objO == f2.r.f4228i) {
            java.lang.Object objO2 = sVar.o();
            if (str == null) {
                throw sVar.j("Mismatched close tag " + objO2);
            }
            if (objO2.equals(str)) {
                if (sVar.o() == f2.r.f4224e) {
                    return true;
                }
                throw sVar.j("Misshaped close tag");
            }
            throw sVar.j("Mismatched " + str + " and " + objO2);
        }
        if (objO instanceof java.lang.Character) {
            throw sVar.j("Misshaped tag");
        }
        java.lang.String str3 = (java.lang.String) objO;
        f2.l lVar2 = new f2.l();
        while (true) {
            java.lang.Object objO3 = null;
            while (true) {
                if (objO3 == null) {
                    objO3 = sVar.o();
                }
                if (objO3 instanceof java.lang.String) {
                    str2 = (java.lang.String) objO3;
                    java.lang.Object objO4 = sVar.o();
                    if (objO4 == f2.r.f4223d) {
                        break;
                    }
                    lVar2.D(str2, "");
                    objO3 = objO4;
                } else {
                    if (objO3 == f2.r.f4228i) {
                        if (sVar.o() != f2.r.f4224e) {
                            throw sVar.j("Misshaped tag");
                        }
                        if (lVar2.size() > 0) {
                            lVar.D(str3, lVar2);
                        } else {
                            lVar.D(str3, "");
                        }
                        return false;
                    }
                    if (objO3 != f2.r.f4224e) {
                        throw sVar.j("Misshaped tag");
                    }
                    while (true) {
                        java.lang.Object objL = sVar.l();
                        if (objL == null) {
                            if (str3 == null) {
                                return false;
                            }
                            throw sVar.j("Unclosed tag " + str3);
                        }
                        if (objL instanceof java.lang.String) {
                            java.lang.String str4 = (java.lang.String) objL;
                            if (str4.length() > 0) {
                                if (!z4) {
                                    objL = f2.a.d(str4);
                                }
                                lVar2.D("content", objL);
                            }
                        } else if (objL == f2.r.f4225f && a(sVar, lVar2, str3, z4)) {
                            if (lVar2.size() == 0) {
                                lVar.D(str3, "");
                            } else if (lVar2.size() != 1 || lVar2.get("content") == null) {
                                lVar.D(str3, lVar2);
                            } else {
                                lVar.D(str3, lVar2.get("content"));
                            }
                            return false;
                        }
                    }
                }
            }
            java.lang.Object objO5 = sVar.o();
            if (!(objO5 instanceof java.lang.String)) {
                throw sVar.j("Missing value");
            }
            if (!z4) {
                objO5 = f2.a.d((java.lang.String) objO5);
            }
            lVar2.D(str2, objO5);
        }
    }

    public static void b(f2.l lVar, java.lang.String str, boolean z4) throws f2.h {
        f2.s sVar = new f2.s(str, lVar.h());
        while (sVar.d() && sVar.p("<")) {
            a(sVar, lVar, null, z4);
        }
    }
}
