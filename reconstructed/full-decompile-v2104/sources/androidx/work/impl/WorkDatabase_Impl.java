package androidx.work.impl;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class WorkDatabase_Impl extends androidx.work.impl.WorkDatabase {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public volatile z0.v f2649q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public volatile z0.b f2650r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public volatile z0.z f2651s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public volatile z0.j f2652t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public volatile z0.o f2653u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public volatile z0.r f2654v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public volatile z0.e f2655w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public volatile z0.g f2656x;

    public class a extends androidx.room.k0.b {
        public a(int i5) {
            super(i5);
        }

        @Override // androidx.room.k0.b
        public void a(f0.g gVar) {
            gVar.D("CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            gVar.D("CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
            gVar.D("CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
            gVar.D("CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT NOT NULL, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL DEFAULT -1, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807, `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0, `stop_reason` INTEGER NOT NULL DEFAULT -256, `required_network_type` INTEGER NOT NULL, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))");
            gVar.D("CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
            gVar.D("CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)");
            gVar.D("CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            gVar.D("CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
            gVar.D("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            gVar.D("CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            gVar.D("CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
            gVar.D("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            gVar.D("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
            gVar.D("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            gVar.D("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '7d73d21f1bd82c9e5268b6dcf9fde2cb')");
        }

        @Override // androidx.room.k0.b
        public void b(f0.g gVar) {
            gVar.D("DROP TABLE IF EXISTS `Dependency`");
            gVar.D("DROP TABLE IF EXISTS `WorkSpec`");
            gVar.D("DROP TABLE IF EXISTS `WorkTag`");
            gVar.D("DROP TABLE IF EXISTS `SystemIdInfo`");
            gVar.D("DROP TABLE IF EXISTS `WorkName`");
            gVar.D("DROP TABLE IF EXISTS `WorkProgress`");
            gVar.D("DROP TABLE IF EXISTS `Preference`");
            if (androidx.work.impl.WorkDatabase_Impl.this.f2295h != null) {
                int size = androidx.work.impl.WorkDatabase_Impl.this.f2295h.size();
                for (int i5 = 0; i5 < size; i5++) {
                    ((androidx.room.i0.b) androidx.work.impl.WorkDatabase_Impl.this.f2295h.get(i5)).b(gVar);
                }
            }
        }

        @Override // androidx.room.k0.b
        public void c(f0.g gVar) {
            if (androidx.work.impl.WorkDatabase_Impl.this.f2295h != null) {
                int size = androidx.work.impl.WorkDatabase_Impl.this.f2295h.size();
                for (int i5 = 0; i5 < size; i5++) {
                    ((androidx.room.i0.b) androidx.work.impl.WorkDatabase_Impl.this.f2295h.get(i5)).a(gVar);
                }
            }
        }

        @Override // androidx.room.k0.b
        public void d(f0.g gVar) {
            androidx.work.impl.WorkDatabase_Impl.this.f2288a = gVar;
            gVar.D("PRAGMA foreign_keys = ON");
            androidx.work.impl.WorkDatabase_Impl.this.u(gVar);
            if (androidx.work.impl.WorkDatabase_Impl.this.f2295h != null) {
                int size = androidx.work.impl.WorkDatabase_Impl.this.f2295h.size();
                for (int i5 = 0; i5 < size; i5++) {
                    ((androidx.room.i0.b) androidx.work.impl.WorkDatabase_Impl.this.f2295h.get(i5)).c(gVar);
                }
            }
        }

        @Override // androidx.room.k0.b
        public void e(f0.g gVar) {
        }

        @Override // androidx.room.k0.b
        public void f(f0.g gVar) throws java.lang.IllegalAccessException, java.io.IOException, java.lang.reflect.InvocationTargetException {
            e0.b.a(gVar);
        }

        @Override // androidx.room.k0.b
        public androidx.room.k0.c g(f0.g gVar) {
            java.util.HashMap map = new java.util.HashMap(2);
            map.put("work_spec_id", new e0.e.a("work_spec_id", "TEXT", true, 1, null, 1));
            map.put("prerequisite_id", new e0.e.a("prerequisite_id", "TEXT", true, 2, null, 1));
            java.util.HashSet hashSet = new java.util.HashSet(2);
            hashSet.add(new e0.e.c("WorkSpec", "CASCADE", "CASCADE", java.util.Arrays.asList("work_spec_id"), java.util.Arrays.asList("id")));
            hashSet.add(new e0.e.c("WorkSpec", "CASCADE", "CASCADE", java.util.Arrays.asList("prerequisite_id"), java.util.Arrays.asList("id")));
            java.util.HashSet hashSet2 = new java.util.HashSet(2);
            hashSet2.add(new e0.e.C0044e("index_Dependency_work_spec_id", false, java.util.Arrays.asList("work_spec_id"), java.util.Arrays.asList("ASC")));
            hashSet2.add(new e0.e.C0044e("index_Dependency_prerequisite_id", false, java.util.Arrays.asList("prerequisite_id"), java.util.Arrays.asList("ASC")));
            e0.e eVar = new e0.e("Dependency", map, hashSet, hashSet2);
            e0.e eVarA = e0.e.a(gVar, "Dependency");
            if (!eVar.equals(eVarA)) {
                return new androidx.room.k0.c(false, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + eVar + "\n Found:\n" + eVarA);
            }
            java.util.HashMap map2 = new java.util.HashMap(30);
            map2.put("id", new e0.e.a("id", "TEXT", true, 1, null, 1));
            map2.put("state", new e0.e.a("state", "INTEGER", true, 0, null, 1));
            map2.put("worker_class_name", new e0.e.a("worker_class_name", "TEXT", true, 0, null, 1));
            map2.put("input_merger_class_name", new e0.e.a("input_merger_class_name", "TEXT", true, 0, null, 1));
            map2.put("input", new e0.e.a("input", "BLOB", true, 0, null, 1));
            map2.put("output", new e0.e.a("output", "BLOB", true, 0, null, 1));
            map2.put("initial_delay", new e0.e.a("initial_delay", "INTEGER", true, 0, null, 1));
            map2.put("interval_duration", new e0.e.a("interval_duration", "INTEGER", true, 0, null, 1));
            map2.put("flex_duration", new e0.e.a("flex_duration", "INTEGER", true, 0, null, 1));
            map2.put("run_attempt_count", new e0.e.a("run_attempt_count", "INTEGER", true, 0, null, 1));
            map2.put("backoff_policy", new e0.e.a("backoff_policy", "INTEGER", true, 0, null, 1));
            map2.put("backoff_delay_duration", new e0.e.a("backoff_delay_duration", "INTEGER", true, 0, null, 1));
            map2.put("last_enqueue_time", new e0.e.a("last_enqueue_time", "INTEGER", true, 0, "-1", 1));
            map2.put("minimum_retention_duration", new e0.e.a("minimum_retention_duration", "INTEGER", true, 0, null, 1));
            map2.put("schedule_requested_at", new e0.e.a("schedule_requested_at", "INTEGER", true, 0, null, 1));
            map2.put("run_in_foreground", new e0.e.a("run_in_foreground", "INTEGER", true, 0, null, 1));
            map2.put("out_of_quota_policy", new e0.e.a("out_of_quota_policy", "INTEGER", true, 0, null, 1));
            map2.put("period_count", new e0.e.a("period_count", "INTEGER", true, 0, com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS, 1));
            map2.put("generation", new e0.e.a("generation", "INTEGER", true, 0, com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS, 1));
            map2.put("next_schedule_time_override", new e0.e.a("next_schedule_time_override", "INTEGER", true, 0, "9223372036854775807", 1));
            map2.put("next_schedule_time_override_generation", new e0.e.a("next_schedule_time_override_generation", "INTEGER", true, 0, com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS, 1));
            map2.put("stop_reason", new e0.e.a("stop_reason", "INTEGER", true, 0, "-256", 1));
            map2.put("required_network_type", new e0.e.a("required_network_type", "INTEGER", true, 0, null, 1));
            map2.put("requires_charging", new e0.e.a("requires_charging", "INTEGER", true, 0, null, 1));
            map2.put("requires_device_idle", new e0.e.a("requires_device_idle", "INTEGER", true, 0, null, 1));
            map2.put("requires_battery_not_low", new e0.e.a("requires_battery_not_low", "INTEGER", true, 0, null, 1));
            map2.put("requires_storage_not_low", new e0.e.a("requires_storage_not_low", "INTEGER", true, 0, null, 1));
            map2.put("trigger_content_update_delay", new e0.e.a("trigger_content_update_delay", "INTEGER", true, 0, null, 1));
            map2.put("trigger_max_content_delay", new e0.e.a("trigger_max_content_delay", "INTEGER", true, 0, null, 1));
            map2.put("content_uri_triggers", new e0.e.a("content_uri_triggers", "BLOB", true, 0, null, 1));
            java.util.HashSet hashSet3 = new java.util.HashSet(0);
            java.util.HashSet hashSet4 = new java.util.HashSet(2);
            hashSet4.add(new e0.e.C0044e("index_WorkSpec_schedule_requested_at", false, java.util.Arrays.asList("schedule_requested_at"), java.util.Arrays.asList("ASC")));
            hashSet4.add(new e0.e.C0044e("index_WorkSpec_last_enqueue_time", false, java.util.Arrays.asList("last_enqueue_time"), java.util.Arrays.asList("ASC")));
            e0.e eVar2 = new e0.e("WorkSpec", map2, hashSet3, hashSet4);
            e0.e eVarA2 = e0.e.a(gVar, "WorkSpec");
            if (!eVar2.equals(eVarA2)) {
                return new androidx.room.k0.c(false, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + eVar2 + "\n Found:\n" + eVarA2);
            }
            java.util.HashMap map3 = new java.util.HashMap(2);
            map3.put("tag", new e0.e.a("tag", "TEXT", true, 1, null, 1));
            map3.put("work_spec_id", new e0.e.a("work_spec_id", "TEXT", true, 2, null, 1));
            java.util.HashSet hashSet5 = new java.util.HashSet(1);
            hashSet5.add(new e0.e.c("WorkSpec", "CASCADE", "CASCADE", java.util.Arrays.asList("work_spec_id"), java.util.Arrays.asList("id")));
            java.util.HashSet hashSet6 = new java.util.HashSet(1);
            hashSet6.add(new e0.e.C0044e("index_WorkTag_work_spec_id", false, java.util.Arrays.asList("work_spec_id"), java.util.Arrays.asList("ASC")));
            e0.e eVar3 = new e0.e("WorkTag", map3, hashSet5, hashSet6);
            e0.e eVarA3 = e0.e.a(gVar, "WorkTag");
            if (!eVar3.equals(eVarA3)) {
                return new androidx.room.k0.c(false, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + eVar3 + "\n Found:\n" + eVarA3);
            }
            java.util.HashMap map4 = new java.util.HashMap(3);
            map4.put("work_spec_id", new e0.e.a("work_spec_id", "TEXT", true, 1, null, 1));
            map4.put("generation", new e0.e.a("generation", "INTEGER", true, 2, com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS, 1));
            map4.put("system_id", new e0.e.a("system_id", "INTEGER", true, 0, null, 1));
            java.util.HashSet hashSet7 = new java.util.HashSet(1);
            hashSet7.add(new e0.e.c("WorkSpec", "CASCADE", "CASCADE", java.util.Arrays.asList("work_spec_id"), java.util.Arrays.asList("id")));
            e0.e eVar4 = new e0.e("SystemIdInfo", map4, hashSet7, new java.util.HashSet(0));
            e0.e eVarA4 = e0.e.a(gVar, "SystemIdInfo");
            if (!eVar4.equals(eVarA4)) {
                return new androidx.room.k0.c(false, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + eVar4 + "\n Found:\n" + eVarA4);
            }
            java.util.HashMap map5 = new java.util.HashMap(2);
            map5.put("name", new e0.e.a("name", "TEXT", true, 1, null, 1));
            map5.put("work_spec_id", new e0.e.a("work_spec_id", "TEXT", true, 2, null, 1));
            java.util.HashSet hashSet8 = new java.util.HashSet(1);
            hashSet8.add(new e0.e.c("WorkSpec", "CASCADE", "CASCADE", java.util.Arrays.asList("work_spec_id"), java.util.Arrays.asList("id")));
            java.util.HashSet hashSet9 = new java.util.HashSet(1);
            hashSet9.add(new e0.e.C0044e("index_WorkName_work_spec_id", false, java.util.Arrays.asList("work_spec_id"), java.util.Arrays.asList("ASC")));
            e0.e eVar5 = new e0.e("WorkName", map5, hashSet8, hashSet9);
            e0.e eVarA5 = e0.e.a(gVar, "WorkName");
            if (!eVar5.equals(eVarA5)) {
                return new androidx.room.k0.c(false, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + eVar5 + "\n Found:\n" + eVarA5);
            }
            java.util.HashMap map6 = new java.util.HashMap(2);
            map6.put("work_spec_id", new e0.e.a("work_spec_id", "TEXT", true, 1, null, 1));
            map6.put("progress", new e0.e.a("progress", "BLOB", true, 0, null, 1));
            java.util.HashSet hashSet10 = new java.util.HashSet(1);
            hashSet10.add(new e0.e.c("WorkSpec", "CASCADE", "CASCADE", java.util.Arrays.asList("work_spec_id"), java.util.Arrays.asList("id")));
            e0.e eVar6 = new e0.e("WorkProgress", map6, hashSet10, new java.util.HashSet(0));
            e0.e eVarA6 = e0.e.a(gVar, "WorkProgress");
            if (!eVar6.equals(eVarA6)) {
                return new androidx.room.k0.c(false, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + eVar6 + "\n Found:\n" + eVarA6);
            }
            java.util.HashMap map7 = new java.util.HashMap(2);
            map7.put("key", new e0.e.a("key", "TEXT", true, 1, null, 1));
            map7.put("long_value", new e0.e.a("long_value", "INTEGER", false, 0, null, 1));
            e0.e eVar7 = new e0.e("Preference", map7, new java.util.HashSet(0), new java.util.HashSet(0));
            e0.e eVarA7 = e0.e.a(gVar, "Preference");
            if (eVar7.equals(eVarA7)) {
                return new androidx.room.k0.c(true, null);
            }
            return new androidx.room.k0.c(false, "Preference(androidx.work.impl.model.Preference).\n Expected:\n" + eVar7 + "\n Found:\n" + eVarA7);
        }
    }

    @Override // androidx.work.impl.WorkDatabase
    public z0.b D() {
        z0.b bVar;
        if (this.f2650r != null) {
            return this.f2650r;
        }
        synchronized (this) {
            if (this.f2650r == null) {
                this.f2650r = new z0.c(this);
            }
            bVar = this.f2650r;
        }
        return bVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public z0.e E() {
        z0.e eVar;
        if (this.f2655w != null) {
            return this.f2655w;
        }
        synchronized (this) {
            if (this.f2655w == null) {
                this.f2655w = new z0.f(this);
            }
            eVar = this.f2655w;
        }
        return eVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public z0.g F() {
        z0.g gVar;
        if (this.f2656x != null) {
            return this.f2656x;
        }
        synchronized (this) {
            if (this.f2656x == null) {
                this.f2656x = new z0.h(this);
            }
            gVar = this.f2656x;
        }
        return gVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public z0.j G() {
        z0.j jVar;
        if (this.f2652t != null) {
            return this.f2652t;
        }
        synchronized (this) {
            if (this.f2652t == null) {
                this.f2652t = new z0.k(this);
            }
            jVar = this.f2652t;
        }
        return jVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public z0.o H() {
        z0.o oVar;
        if (this.f2653u != null) {
            return this.f2653u;
        }
        synchronized (this) {
            if (this.f2653u == null) {
                this.f2653u = new z0.p(this);
            }
            oVar = this.f2653u;
        }
        return oVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public z0.r I() {
        z0.r rVar;
        if (this.f2654v != null) {
            return this.f2654v;
        }
        synchronized (this) {
            if (this.f2654v == null) {
                this.f2654v = new z0.s(this);
            }
            rVar = this.f2654v;
        }
        return rVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public z0.v J() {
        z0.v vVar;
        if (this.f2649q != null) {
            return this.f2649q;
        }
        synchronized (this) {
            if (this.f2649q == null) {
                this.f2649q = new z0.w(this);
            }
            vVar = this.f2649q;
        }
        return vVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public z0.z K() {
        z0.z zVar;
        if (this.f2651s != null) {
            return this.f2651s;
        }
        synchronized (this) {
            if (this.f2651s == null) {
                this.f2651s = new z0.a0(this);
            }
            zVar = this.f2651s;
        }
        return zVar;
    }

    @Override // androidx.room.i0
    public androidx.room.m g() {
        return new androidx.room.m(this, new java.util.HashMap(0), new java.util.HashMap(0), "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override // androidx.room.i0
    public f0.h h(androidx.room.f fVar) {
        return fVar.f2263c.a(f0.h.b.a(fVar.f2261a).d(fVar.f2262b).c(new androidx.room.k0(fVar, new androidx.work.impl.WorkDatabase_Impl.a(20), "7d73d21f1bd82c9e5268b6dcf9fde2cb", "3071c8717539de5d5353f4c8cd59a032")).b());
    }

    @Override // androidx.room.i0
    public java.util.List<d0.b> j(java.util.Map<java.lang.Class<? extends d0.a>, d0.a> map) {
        return java.util.Arrays.asList(new r0.h0(), new r0.i0(), new r0.j0(), new r0.k0(), new r0.l0(), new r0.m0());
    }

    @Override // androidx.room.i0
    public java.util.Set<java.lang.Class<? extends d0.a>> o() {
        return new java.util.HashSet();
    }

    @Override // androidx.room.i0
    public java.util.Map<java.lang.Class<?>, java.util.List<java.lang.Class<?>>> p() {
        java.util.HashMap map = new java.util.HashMap();
        map.put(z0.v.class, z0.w.D());
        map.put(z0.b.class, z0.c.e());
        map.put(z0.z.class, z0.a0.f());
        map.put(z0.j.class, z0.k.j());
        map.put(z0.o.class, z0.p.c());
        map.put(z0.r.class, z0.s.d());
        map.put(z0.e.class, z0.f.c());
        map.put(z0.g.class, z0.h.d());
        return map;
    }
}
