package a1;

/* JADX INFO: compiled from: RawQueries.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class o {
    public static final void a(java.lang.StringBuilder sb, int i5) {
        if (i5 <= 0) {
            return;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(i5);
        for (int i6 = 0; i6 < i5; i6++) {
            arrayList.add("?");
        }
        sb.append(b3.w.t(arrayList, ",", null, null, 0, null, null, 62, null));
    }

    public static final f0.j b(q0.a0 a0Var) {
        m3.k.e(a0Var, "<this>");
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.lang.StringBuilder sb = new java.lang.StringBuilder("SELECT * FROM workspec");
        java.util.List<q0.y.c> listB = a0Var.b();
        m3.k.d(listB, "states");
        java.lang.String str = " AND";
        java.lang.String str2 = " WHERE";
        if (!listB.isEmpty()) {
            java.util.List<q0.y.c> listB2 = a0Var.b();
            m3.k.d(listB2, "states");
            java.util.ArrayList arrayList2 = new java.util.ArrayList(b3.p.l(listB2, 10));
            for (q0.y.c cVar : listB2) {
                m3.k.b(cVar);
                arrayList2.add(java.lang.Integer.valueOf(z0.b0.j(cVar)));
            }
            sb.append(" WHERE state IN (");
            a(sb, arrayList2.size());
            sb.append(")");
            arrayList.addAll(arrayList2);
            str2 = " AND";
        }
        java.util.List<java.util.UUID> listA = a0Var.a();
        m3.k.d(listA, "ids");
        if (!listA.isEmpty()) {
            java.util.List<java.util.UUID> listA2 = a0Var.a();
            m3.k.d(listA2, "ids");
            java.util.ArrayList arrayList3 = new java.util.ArrayList(b3.p.l(listA2, 10));
            java.util.Iterator<T> it = listA2.iterator();
            while (it.hasNext()) {
                arrayList3.add(((java.util.UUID) it.next()).toString());
            }
            sb.append(str2 + " id IN (");
            a(sb, a0Var.a().size());
            sb.append(")");
            arrayList.addAll(arrayList3);
            str2 = " AND";
        }
        java.util.List<java.lang.String> listC = a0Var.c();
        m3.k.d(listC, "tags");
        if (!listC.isEmpty()) {
            sb.append(str2 + " id IN (SELECT work_spec_id FROM worktag WHERE tag IN (");
            a(sb, a0Var.c().size());
            sb.append("))");
            java.util.List<java.lang.String> listC2 = a0Var.c();
            m3.k.d(listC2, "tags");
            arrayList.addAll(listC2);
        } else {
            str = str2;
        }
        java.util.List<java.lang.String> listD = a0Var.d();
        m3.k.d(listD, "uniqueWorkNames");
        if (!listD.isEmpty()) {
            sb.append(str + " id IN (SELECT work_spec_id FROM workname WHERE name IN (");
            a(sb, a0Var.d().size());
            sb.append("))");
            java.util.List<java.lang.String> listD2 = a0Var.d();
            m3.k.d(listD2, "uniqueWorkNames");
            arrayList.addAll(listD2);
        }
        sb.append(";");
        java.lang.String string = sb.toString();
        m3.k.d(string, "builder.toString()");
        return new f0.a(string, arrayList.toArray(new java.lang.Object[0]));
    }
}
