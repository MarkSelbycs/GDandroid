package com.cndatacom.topology;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class SnmpManager {
    private k4.s<?> mTransportMapping = new s4.b();
    private k4.p mSnmp = new k4.p(this.mTransportMapping);

    public SnmpManager() throws java.lang.Exception {
        this.mTransportMapping.a();
    }

    public void release() {
        k4.s<?> sVar = this.mTransportMapping;
        if (sVar != null) {
            try {
                sVar.close();
            } catch (java.io.IOException e5) {
                e5.printStackTrace();
            }
        }
        k4.p pVar = this.mSnmp;
        if (pVar != null) {
            try {
                pVar.p();
            } catch (java.io.IOException e6) {
                e6.printStackTrace();
            }
        }
    }

    public java.util.Vector<? extends r4.v> sendMsg(java.lang.String str, int i5, int i6, int i7, java.util.List<r4.v> list, java.lang.String[] strArr) throws java.lang.Exception {
        if (this.mSnmp == null) {
            return null;
        }
        k4.k kVar = new k4.k();
        for (int i8 = 0; i8 < list.size(); i8++) {
            kVar.h(list.get(i8));
        }
        kVar.g0(-96);
        r4.b bVarH = r4.f.H("udp:" + str + "/" + i5);
        k4.e eVar = new k4.e();
        eVar.C(1);
        for (java.lang.String str2 : strArr) {
            eVar.D(new r4.k(str2));
        }
        eVar.z(bVarH);
        eVar.l(i6);
        eVar.R(i7);
        m4.e eVarY = this.mSnmp.y(kVar, eVar);
        if (eVarY == null || eVarY.b() == null) {
            return null;
        }
        return eVarY.b().U();
    }
}
