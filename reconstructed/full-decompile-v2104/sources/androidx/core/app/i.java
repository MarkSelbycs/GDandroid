package androidx.core.app;

/* JADX INFO: compiled from: Person.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.lang.CharSequence f1350a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public androidx.core.graphics.drawable.IconCompat f1351b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public java.lang.String f1352c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public java.lang.String f1353d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1354e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1355f;

    /* JADX INFO: compiled from: Person.java */
    public static class a {
        public static androidx.core.app.i a(android.app.Person person) {
            return new androidx.core.app.i.b().f(person.getName()).c(person.getIcon() != null ? androidx.core.graphics.drawable.IconCompat.a(person.getIcon()) : null).g(person.getUri()).e(person.getKey()).b(person.isBot()).d(person.isImportant()).a();
        }

        public static android.app.Person b(androidx.core.app.i iVar) {
            return new android.app.Person.Builder().setName(iVar.c()).setIcon(iVar.a() != null ? iVar.a().m() : null).setUri(iVar.d()).setKey(iVar.b()).setBot(iVar.e()).setImportant(iVar.f()).build();
        }
    }

    /* JADX INFO: compiled from: Person.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.lang.CharSequence f1356a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public androidx.core.graphics.drawable.IconCompat f1357b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public java.lang.String f1358c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public java.lang.String f1359d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f1360e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f1361f;

        public androidx.core.app.i a() {
            return new androidx.core.app.i(this);
        }

        public androidx.core.app.i.b b(boolean z4) {
            this.f1360e = z4;
            return this;
        }

        public androidx.core.app.i.b c(androidx.core.graphics.drawable.IconCompat iconCompat) {
            this.f1357b = iconCompat;
            return this;
        }

        public androidx.core.app.i.b d(boolean z4) {
            this.f1361f = z4;
            return this;
        }

        public androidx.core.app.i.b e(java.lang.String str) {
            this.f1359d = str;
            return this;
        }

        public androidx.core.app.i.b f(java.lang.CharSequence charSequence) {
            this.f1356a = charSequence;
            return this;
        }

        public androidx.core.app.i.b g(java.lang.String str) {
            this.f1358c = str;
            return this;
        }
    }

    public i(androidx.core.app.i.b bVar) {
        this.f1350a = bVar.f1356a;
        this.f1351b = bVar.f1357b;
        this.f1352c = bVar.f1358c;
        this.f1353d = bVar.f1359d;
        this.f1354e = bVar.f1360e;
        this.f1355f = bVar.f1361f;
    }

    public androidx.core.graphics.drawable.IconCompat a() {
        return this.f1351b;
    }

    public java.lang.String b() {
        return this.f1353d;
    }

    public java.lang.CharSequence c() {
        return this.f1350a;
    }

    public java.lang.String d() {
        return this.f1352c;
    }

    public boolean e() {
        return this.f1354e;
    }

    public boolean f() {
        return this.f1355f;
    }

    public android.app.Person g() {
        return androidx.core.app.i.a.b(this);
    }
}
