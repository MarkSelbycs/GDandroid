package b0;

/* JADX INFO: compiled from: LoaderManagerImpl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b extends b0.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f2894c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.lifecycle.g f2895a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b0.b.C0028b f2896b;

    /* JADX INFO: compiled from: LoaderManagerImpl.java */
    public static class a<D> extends androidx.lifecycle.k<D> {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final int f2897l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final android.os.Bundle f2898m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public androidx.lifecycle.g f2899n;

        @Override // androidx.lifecycle.LiveData
        public void e() {
            if (b0.b.f2894c) {
                android.util.Log.v("LoaderManager", "  Starting: " + this);
            }
            throw null;
        }

        @Override // androidx.lifecycle.LiveData
        public void f() {
            if (b0.b.f2894c) {
                android.util.Log.v("LoaderManager", "  Stopping: " + this);
            }
            throw null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        public void h(androidx.lifecycle.l<? super D> lVar) {
            super.h(lVar);
            this.f2899n = null;
        }

        @Override // androidx.lifecycle.k, androidx.lifecycle.LiveData
        public void i(D d5) {
            super.i(d5);
        }

        public c0.a<D> j(boolean z4) {
            if (b0.b.f2894c) {
                android.util.Log.v("LoaderManager", "  Destroying: " + this);
            }
            throw null;
        }

        public void k(java.lang.String str, java.io.FileDescriptor fileDescriptor, java.io.PrintWriter printWriter, java.lang.String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.f2897l);
            printWriter.print(" mArgs=");
            printWriter.println(this.f2898m);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println((java.lang.Object) null);
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append(str);
            sb.append("  ");
            throw null;
        }

        public void l() {
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sb = new java.lang.StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.f2897l);
            sb.append(" : ");
            v.b.a(null, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    /* JADX INFO: renamed from: b0.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: LoaderManagerImpl.java */
    public static class C0028b extends androidx.lifecycle.o {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final androidx.lifecycle.p.a f2900c = new b0.b.C0028b.a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public j.h<b0.b.a> f2901a = new j.h<>();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f2902b = false;

        /* JADX INFO: renamed from: b0.b$b$a */
        /* JADX INFO: compiled from: LoaderManagerImpl.java */
        public static class a implements androidx.lifecycle.p.a {
            @Override // androidx.lifecycle.p.a
            public <T extends androidx.lifecycle.o> T a(java.lang.Class<T> cls) {
                return new b0.b.C0028b();
            }
        }

        public static b0.b.C0028b c(androidx.lifecycle.q qVar) {
            return (b0.b.C0028b) new androidx.lifecycle.p(qVar, f2900c).a(b0.b.C0028b.class);
        }

        @Override // androidx.lifecycle.o
        public void a() {
            super.a();
            int iT = this.f2901a.t();
            for (int i5 = 0; i5 < iT; i5++) {
                this.f2901a.u(i5).j(true);
            }
            this.f2901a.b();
        }

        public void b(java.lang.String str, java.io.FileDescriptor fileDescriptor, java.io.PrintWriter printWriter, java.lang.String[] strArr) {
            if (this.f2901a.t() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                java.lang.String str2 = str + "    ";
                for (int i5 = 0; i5 < this.f2901a.t(); i5++) {
                    b0.b.a aVarU = this.f2901a.u(i5);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(this.f2901a.k(i5));
                    printWriter.print(": ");
                    printWriter.println(aVarU.toString());
                    aVarU.k(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }

        public void d() {
            int iT = this.f2901a.t();
            for (int i5 = 0; i5 < iT; i5++) {
                this.f2901a.u(i5).l();
            }
        }
    }

    public b(androidx.lifecycle.g gVar, androidx.lifecycle.q qVar) {
        this.f2895a = gVar;
        this.f2896b = b0.b.C0028b.c(qVar);
    }

    @Override // b0.a
    @java.lang.Deprecated
    public void a(java.lang.String str, java.io.FileDescriptor fileDescriptor, java.io.PrintWriter printWriter, java.lang.String[] strArr) {
        this.f2896b.b(str, fileDescriptor, printWriter, strArr);
    }

    @Override // b0.a
    public void c() {
        this.f2896b.d();
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(com.alibaba.fastjson.asm.Opcodes.IOR);
        sb.append("LoaderManager{");
        sb.append(java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)));
        sb.append(" in ");
        v.b.a(this.f2895a, sb);
        sb.append("}}");
        return sb.toString();
    }
}
