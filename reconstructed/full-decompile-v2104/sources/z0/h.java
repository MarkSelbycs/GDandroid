package z0;

/* JADX INFO: compiled from: RawWorkInfoDao_Impl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class h implements z0.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.room.i0 f7001a;

    public h(androidx.room.i0 i0Var) {
        this.f7001a = i0Var;
    }

    public static java.util.List<java.lang.Class<?>> d() {
        return java.util.Collections.emptyList();
    }

    @Override // z0.g
    public java.util.List<z0.u.c> a(f0.j jVar) {
        q0.y.c cVarF;
        androidx.work.b bVarM;
        q0.a aVarC;
        q0.o oVarD;
        boolean z4;
        boolean z5;
        boolean z6;
        java.util.Set<q0.d.c> setB;
        this.f7001a.d();
        android.database.Cursor cursorB = e0.b.b(this.f7001a, jVar, true, null);
        try {
            int iC = e0.a.c(cursorB, "id");
            int iC2 = e0.a.c(cursorB, "state");
            int iC3 = e0.a.c(cursorB, "output");
            int iC4 = e0.a.c(cursorB, "initial_delay");
            int iC5 = e0.a.c(cursorB, "interval_duration");
            int iC6 = e0.a.c(cursorB, "flex_duration");
            int iC7 = e0.a.c(cursorB, "run_attempt_count");
            int iC8 = e0.a.c(cursorB, "backoff_policy");
            int iC9 = e0.a.c(cursorB, "backoff_delay_duration");
            int iC10 = e0.a.c(cursorB, "last_enqueue_time");
            int iC11 = e0.a.c(cursorB, "period_count");
            int iC12 = e0.a.c(cursorB, "generation");
            int iC13 = e0.a.c(cursorB, "next_schedule_time_override");
            int iC14 = e0.a.c(cursorB, "stop_reason");
            int iC15 = e0.a.c(cursorB, "required_network_type");
            int iC16 = e0.a.c(cursorB, "requires_charging");
            int iC17 = e0.a.c(cursorB, "requires_device_idle");
            int iC18 = e0.a.c(cursorB, "requires_battery_not_low");
            int iC19 = e0.a.c(cursorB, "requires_storage_not_low");
            int iC20 = e0.a.c(cursorB, "trigger_content_update_delay");
            int iC21 = e0.a.c(cursorB, "trigger_max_content_delay");
            int iC22 = e0.a.c(cursorB, "content_uri_triggers");
            java.util.HashMap<java.lang.String, java.util.ArrayList<java.lang.String>> map = new java.util.HashMap<>();
            int i5 = iC13;
            java.util.HashMap<java.lang.String, java.util.ArrayList<androidx.work.b>> map2 = new java.util.HashMap<>();
            while (cursorB.moveToNext()) {
                int i6 = iC12;
                java.lang.String string = cursorB.getString(iC);
                if (map.get(string) == null) {
                    map.put(string, new java.util.ArrayList<>());
                }
                java.lang.String string2 = cursorB.getString(iC);
                if (map2.get(string2) == null) {
                    map2.put(string2, new java.util.ArrayList<>());
                }
                iC12 = i6;
                iC11 = iC11;
            }
            int i7 = iC11;
            int i8 = iC12;
            cursorB.moveToPosition(-1);
            c(map);
            b(map2);
            java.util.ArrayList arrayList = new java.util.ArrayList(cursorB.getCount());
            while (cursorB.moveToNext()) {
                java.lang.String string3 = (iC == -1 || cursorB.isNull(iC)) ? null : cursorB.getString(iC);
                if (iC2 == -1) {
                    cVarF = null;
                } else {
                    int i9 = cursorB.getInt(iC2);
                    z0.b0 b0Var = z0.b0.f6988a;
                    cVarF = z0.b0.f(i9);
                }
                if (iC3 == -1) {
                    bVarM = null;
                } else {
                    bVarM = androidx.work.b.m(cursorB.isNull(iC3) ? null : cursorB.getBlob(iC3));
                }
                long j5 = iC4 == -1 ? 0L : cursorB.getLong(iC4);
                long j6 = iC5 == -1 ? 0L : cursorB.getLong(iC5);
                long j7 = iC6 == -1 ? 0L : cursorB.getLong(iC6);
                boolean z7 = false;
                int i10 = iC7 == -1 ? 0 : cursorB.getInt(iC7);
                if (iC8 == -1) {
                    aVarC = null;
                } else {
                    int i11 = cursorB.getInt(iC8);
                    z0.b0 b0Var2 = z0.b0.f6988a;
                    aVarC = z0.b0.c(i11);
                }
                long j8 = iC9 == -1 ? 0L : cursorB.getLong(iC9);
                long j9 = iC10 == -1 ? 0L : cursorB.getLong(iC10);
                int i12 = i7 == -1 ? 0 : cursorB.getInt(i7);
                int i13 = i8;
                int i14 = i7;
                int i15 = i13 == -1 ? 0 : cursorB.getInt(i13);
                int i16 = i5;
                long j10 = i16 == -1 ? 0L : cursorB.getLong(i16);
                int i17 = iC14;
                int i18 = i17 == -1 ? 0 : cursorB.getInt(i17);
                int i19 = iC15;
                if (i19 == -1) {
                    oVarD = null;
                } else {
                    int i20 = cursorB.getInt(i19);
                    z0.b0 b0Var3 = z0.b0.f6988a;
                    oVarD = z0.b0.d(i20);
                }
                int i21 = iC16;
                if (i21 == -1) {
                    z4 = false;
                } else {
                    z4 = cursorB.getInt(i21) != 0;
                }
                int i22 = iC17;
                if (i22 == -1) {
                    z5 = false;
                } else {
                    z5 = cursorB.getInt(i22) != 0;
                }
                int i23 = iC18;
                if (i23 == -1) {
                    z6 = false;
                } else {
                    z6 = cursorB.getInt(i23) != 0;
                }
                int i24 = iC19;
                if (i24 != -1 && cursorB.getInt(i24) != 0) {
                    z7 = true;
                }
                boolean z8 = z7;
                int i25 = iC20;
                long j11 = i25 == -1 ? 0L : cursorB.getLong(i25);
                int i26 = iC21;
                long j12 = i26 != -1 ? cursorB.getLong(i26) : 0L;
                int i27 = iC22;
                if (i27 == -1) {
                    setB = null;
                } else {
                    byte[] blob = cursorB.isNull(i27) ? null : cursorB.getBlob(i27);
                    z0.b0 b0Var4 = z0.b0.f6988a;
                    setB = z0.b0.b(blob);
                }
                q0.d dVar = new q0.d(oVarD, z4, z5, z6, z8, j11, j12, setB);
                java.util.ArrayList<java.lang.String> arrayList2 = map.get(cursorB.getString(iC));
                if (arrayList2 == null) {
                    arrayList2 = new java.util.ArrayList<>();
                }
                java.util.ArrayList<java.lang.String> arrayList3 = arrayList2;
                java.util.ArrayList<androidx.work.b> arrayList4 = map2.get(cursorB.getString(iC));
                if (arrayList4 == null) {
                    arrayList4 = new java.util.ArrayList<>();
                }
                arrayList.add(new z0.u.c(string3, cVarF, bVarM, j5, j6, j7, dVar, i10, aVarC, j8, j9, i12, i15, j10, i18, arrayList3, arrayList4));
                i7 = i14;
                i8 = i13;
                i5 = i16;
                iC14 = i17;
                iC15 = i19;
                iC16 = i21;
                iC17 = i22;
                iC18 = i23;
                iC19 = i24;
                iC20 = i25;
                iC21 = i26;
                iC22 = i27;
            }
            return arrayList;
        } finally {
            cursorB.close();
        }
    }

    public final void b(java.util.HashMap<java.lang.String, java.util.ArrayList<androidx.work.b>> map) {
        int i5;
        java.util.Set<java.lang.String> setKeySet = map.keySet();
        if (setKeySet.isEmpty()) {
            return;
        }
        if (map.size() > 999) {
            java.util.HashMap<java.lang.String, java.util.ArrayList<androidx.work.b>> map2 = new java.util.HashMap<>(999);
            java.util.Iterator<java.lang.String> it = setKeySet.iterator();
            loop0: while (true) {
                i5 = 0;
                do {
                    if (!it.hasNext()) {
                        break loop0;
                    }
                    java.lang.String next = it.next();
                    map2.put(next, map.get(next));
                    i5++;
                } while (i5 != 999);
                b(map2);
                map2 = new java.util.HashMap<>(999);
            }
            if (i5 > 0) {
                b(map2);
                return;
            }
            return;
        }
        java.lang.StringBuilder sbB = e0.d.b();
        sbB.append("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
        int size = setKeySet.size();
        e0.d.a(sbB, size);
        sbB.append(")");
        androidx.room.l0 l0VarF = androidx.room.l0.f(sbB.toString(), size + 0);
        int i6 = 1;
        for (java.lang.String str : setKeySet) {
            if (str == null) {
                l0VarF.d0(i6);
            } else {
                l0VarF.E(i6, str);
            }
            i6++;
        }
        android.database.Cursor cursorB = e0.b.b(this.f7001a, l0VarF, false, null);
        try {
            int iC = e0.a.c(cursorB, "work_spec_id");
            if (iC == -1) {
                return;
            }
            while (cursorB.moveToNext()) {
                java.util.ArrayList<androidx.work.b> arrayList = map.get(cursorB.getString(iC));
                if (arrayList != null) {
                    arrayList.add(androidx.work.b.m(cursorB.isNull(0) ? null : cursorB.getBlob(0)));
                }
            }
        } finally {
            cursorB.close();
        }
    }

    public final void c(java.util.HashMap<java.lang.String, java.util.ArrayList<java.lang.String>> map) {
        int i5;
        java.util.Set<java.lang.String> setKeySet = map.keySet();
        if (setKeySet.isEmpty()) {
            return;
        }
        if (map.size() > 999) {
            java.util.HashMap<java.lang.String, java.util.ArrayList<java.lang.String>> map2 = new java.util.HashMap<>(999);
            java.util.Iterator<java.lang.String> it = setKeySet.iterator();
            loop0: while (true) {
                i5 = 0;
                do {
                    if (!it.hasNext()) {
                        break loop0;
                    }
                    java.lang.String next = it.next();
                    map2.put(next, map.get(next));
                    i5++;
                } while (i5 != 999);
                c(map2);
                map2 = new java.util.HashMap<>(999);
            }
            if (i5 > 0) {
                c(map2);
                return;
            }
            return;
        }
        java.lang.StringBuilder sbB = e0.d.b();
        sbB.append("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
        int size = setKeySet.size();
        e0.d.a(sbB, size);
        sbB.append(")");
        androidx.room.l0 l0VarF = androidx.room.l0.f(sbB.toString(), size + 0);
        int i6 = 1;
        for (java.lang.String str : setKeySet) {
            if (str == null) {
                l0VarF.d0(i6);
            } else {
                l0VarF.E(i6, str);
            }
            i6++;
        }
        android.database.Cursor cursorB = e0.b.b(this.f7001a, l0VarF, false, null);
        try {
            int iC = e0.a.c(cursorB, "work_spec_id");
            if (iC == -1) {
                return;
            }
            while (cursorB.moveToNext()) {
                java.util.ArrayList<java.lang.String> arrayList = map.get(cursorB.getString(iC));
                if (arrayList != null) {
                    arrayList.add(cursorB.isNull(0) ? null : cursorB.getString(0));
                }
            }
        } finally {
            cursorB.close();
        }
    }
}
