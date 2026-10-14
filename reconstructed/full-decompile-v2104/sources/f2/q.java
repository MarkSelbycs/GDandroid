package f2;

/* JADX INFO: compiled from: ObjectMapper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Object f4219a;

    public q(java.lang.Object obj) {
        this.f4219a = obj;
    }

    public static void c(java.lang.Object obj, f2.l lVar) {
        h1.h.c(obj, lVar, f2.a.f(lVar.h()));
    }

    public static void d(java.util.ResourceBundle resourceBundle, f2.l lVar, v1.i<y1.d<java.lang.String, java.lang.Object>> iVar) {
        java.util.Enumeration<java.lang.String> keys = resourceBundle.getKeys();
        while (keys.hasMoreElements()) {
            java.lang.String strNextElement = keys.nextElement();
            if (strNextElement != null) {
                f2.a.c(lVar, strNextElement, resourceBundle.getString(strNextElement), iVar);
            }
        }
    }

    public static void f(java.lang.CharSequence charSequence, f2.l lVar, v1.i<y1.d<java.lang.String, java.lang.Object>> iVar) {
        java.lang.String strW = b2.c.W(charSequence);
        if (b2.c.H(strW, '<')) {
            f2.r.a(lVar, strW, false);
        } else {
            h(new f2.o(b2.c.W(charSequence), lVar.h()), lVar, iVar);
        }
    }

    public static void g(f2.o oVar, f2.e eVar, v1.i<y1.a<java.lang.Object>> iVar) {
        f2.m.a(oVar).b(eVar, iVar);
    }

    public static void h(f2.o oVar, f2.l lVar, v1.i<y1.d<java.lang.String, java.lang.Object>> iVar) {
        f2.m.a(oVar).c(lVar, iVar);
    }

    public static f2.q i(java.lang.Object obj) {
        return new f2.q(obj);
    }

    public void a(f2.e eVar, v1.i<y1.a<java.lang.Object>> iVar) throws f2.h {
        java.util.Iterator it;
        java.lang.Object obj = this.f4219a;
        if (obj == null) {
            return;
        }
        g2.c<? extends f2.b, ?> cVarA = g2.a.a(obj.getClass());
        if (cVarA != null && f2.e.class.equals(e2.d0.n(cVarA.getClass()))) {
            cVarA.a(eVar, obj);
            return;
        }
        if (obj instanceof java.lang.CharSequence) {
            e((java.lang.CharSequence) obj, eVar, iVar);
            return;
        }
        if (obj instanceof java.io.Reader) {
            g(new f2.o((java.io.Reader) obj, eVar.h()), eVar, iVar);
            return;
        }
        if (obj instanceof java.io.InputStream) {
            g(new f2.o((java.io.InputStream) obj, eVar.h()), eVar, iVar);
            return;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (bArr.length > 1 && 91 == bArr[0] && 93 == bArr[bArr.length - 1]) {
                g(new f2.o(t1.d.q(bArr), eVar.h()), eVar, iVar);
                return;
            }
            for (byte b5 : bArr) {
                eVar.add(java.lang.Byte.valueOf(b5));
            }
            return;
        }
        if (obj instanceof f2.o) {
            g((f2.o) obj, eVar, iVar);
            return;
        }
        if (e2.c.s(obj)) {
            it = new l1.a(obj);
        } else if (obj instanceof java.util.Iterator) {
            it = (java.util.Iterator) obj;
        } else {
            if (!(obj instanceof java.lang.Iterable)) {
                if (!eVar.h().j()) {
                    throw new f2.h("JSONArray initial value should be a string or collection or array.");
                }
                return;
            }
            it = ((java.lang.Iterable) obj).iterator();
        }
        f2.f fVarH = eVar.h();
        while (it.hasNext()) {
            java.lang.Object next = it.next();
            if (next != obj) {
                eVar.u(f2.p.n(next, fVarH), iVar);
            }
        }
    }

    public void b(f2.l lVar, v1.i<y1.d<java.lang.String, java.lang.Object>> iVar) {
        java.lang.Object obj = this.f4219a;
        if (obj == null) {
            return;
        }
        g2.c<? extends f2.b, ?> cVarA = g2.a.a(obj.getClass());
        if (cVarA instanceof g2.b) {
            cVarA.a(lVar, obj);
            return;
        }
        if (obj instanceof f2.e) {
            throw new f2.h("Unsupported type [{}] to JSONObject!", obj.getClass());
        }
        if (obj instanceof java.util.Map) {
            for (java.util.Map.Entry entry : ((java.util.Map) obj).entrySet()) {
                lVar.T(n1.c.k(entry.getKey()), entry.getValue(), iVar, lVar.h().f());
            }
            return;
        }
        if (obj instanceof java.util.Map.Entry) {
            java.util.Map.Entry entry2 = (java.util.Map.Entry) obj;
            lVar.T(n1.c.k(entry2.getKey()), entry2.getValue(), iVar, lVar.h().f());
            return;
        }
        if (obj instanceof java.lang.CharSequence) {
            f((java.lang.CharSequence) obj, lVar, iVar);
            return;
        }
        if (obj instanceof java.io.Reader) {
            h(new f2.o((java.io.Reader) obj, lVar.h()), lVar, iVar);
            return;
        }
        if (obj instanceof java.io.InputStream) {
            h(new f2.o((java.io.InputStream) obj, lVar.h()), lVar, iVar);
            return;
        }
        if (obj instanceof byte[]) {
            h(new f2.o(t1.d.q((byte[]) obj), lVar.h()), lVar, iVar);
            return;
        }
        if (obj instanceof f2.o) {
            h((f2.o) obj, lVar, iVar);
            return;
        }
        if (obj instanceof java.util.ResourceBundle) {
            d((java.util.ResourceBundle) obj, lVar, iVar);
        } else if (h1.h.k(obj.getClass())) {
            c(obj, lVar);
        } else if (!lVar.h().j()) {
            throw new f2.h("Unsupported type [{}] to JSONObject!", obj.getClass());
        }
    }

    public final void e(java.lang.CharSequence charSequence, f2.e eVar, v1.i<y1.a<java.lang.Object>> iVar) {
        if (charSequence != null) {
            g(new f2.o(b2.c.W(charSequence), eVar.h()), eVar, iVar);
        }
    }
}
