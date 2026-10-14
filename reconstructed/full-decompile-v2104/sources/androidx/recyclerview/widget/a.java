package androidx.recyclerview.widget;

/* JADX INFO: compiled from: AdapterHelper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a implements androidx.recyclerview.widget.g.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public v.e<androidx.recyclerview.widget.a.b> f2039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.ArrayList<androidx.recyclerview.widget.a.b> f2040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.util.ArrayList<androidx.recyclerview.widget.a.b> f2041c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final androidx.recyclerview.widget.a.InterfaceC0013a f2042d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public java.lang.Runnable f2043e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f2044f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final androidx.recyclerview.widget.g f2045g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2046h;

    /* JADX INFO: renamed from: androidx.recyclerview.widget.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdapterHelper.java */
    public interface InterfaceC0013a {
        void a(int i5, int i6);

        void b(androidx.recyclerview.widget.a.b bVar);

        androidx.recyclerview.widget.RecyclerView.b0 c(int i5);

        void d(int i5, int i6);

        void e(int i5, int i6);

        void f(androidx.recyclerview.widget.a.b bVar);

        void g(int i5, int i6);

        void h(int i5, int i6, java.lang.Object obj);
    }

    /* JADX INFO: compiled from: AdapterHelper.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2047a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2048b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public java.lang.Object f2049c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2050d;

        public b(int i5, int i6, int i7, java.lang.Object obj) {
            this.f2047a = i5;
            this.f2048b = i6;
            this.f2050d = i7;
            this.f2049c = obj;
        }

        public java.lang.String a() {
            int i5 = this.f2047a;
            if (i5 == 1) {
                return "add";
            }
            if (i5 == 2) {
                return "rm";
            }
            if (i5 != 4) {
                return i5 != 8 ? "??" : "mv";
            }
            return "up";
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof androidx.recyclerview.widget.a.b)) {
                return false;
            }
            androidx.recyclerview.widget.a.b bVar = (androidx.recyclerview.widget.a.b) obj;
            int i5 = this.f2047a;
            if (i5 != bVar.f2047a) {
                return false;
            }
            if (i5 == 8 && java.lang.Math.abs(this.f2050d - this.f2048b) == 1 && this.f2050d == bVar.f2048b && this.f2048b == bVar.f2050d) {
                return true;
            }
            if (this.f2050d != bVar.f2050d || this.f2048b != bVar.f2048b) {
                return false;
            }
            java.lang.Object obj2 = this.f2049c;
            if (obj2 != null) {
                if (!obj2.equals(bVar.f2049c)) {
                    return false;
                }
            } else if (bVar.f2049c != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.f2047a * 31) + this.f2048b) * 31) + this.f2050d;
        }

        public java.lang.String toString() {
            return java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)) + "[" + a() + ",s:" + this.f2048b + "c:" + this.f2050d + ",p:" + this.f2049c + "]";
        }
    }

    public a(androidx.recyclerview.widget.a.InterfaceC0013a interfaceC0013a) {
        this(interfaceC0013a, false);
    }

    @Override // androidx.recyclerview.widget.g.a
    public void a(androidx.recyclerview.widget.a.b bVar) {
        if (this.f2044f) {
            return;
        }
        bVar.f2049c = null;
        this.f2039a.a(bVar);
    }

    @Override // androidx.recyclerview.widget.g.a
    public androidx.recyclerview.widget.a.b b(int i5, int i6, int i7, java.lang.Object obj) {
        androidx.recyclerview.widget.a.b bVarB = this.f2039a.b();
        if (bVarB == null) {
            return new androidx.recyclerview.widget.a.b(i5, i6, i7, obj);
        }
        bVarB.f2047a = i5;
        bVarB.f2048b = i6;
        bVarB.f2050d = i7;
        bVarB.f2049c = obj;
        return bVarB;
    }

    public final void c(androidx.recyclerview.widget.a.b bVar) {
        v(bVar);
    }

    public final void d(androidx.recyclerview.widget.a.b bVar) {
        v(bVar);
    }

    public int e(int i5) {
        int size = this.f2040b.size();
        for (int i6 = 0; i6 < size; i6++) {
            androidx.recyclerview.widget.a.b bVar = this.f2040b.get(i6);
            int i7 = bVar.f2047a;
            if (i7 != 1) {
                if (i7 == 2) {
                    int i8 = bVar.f2048b;
                    if (i8 <= i5) {
                        int i9 = bVar.f2050d;
                        if (i8 + i9 > i5) {
                            return -1;
                        }
                        i5 -= i9;
                    } else {
                        continue;
                    }
                } else if (i7 == 8) {
                    int i10 = bVar.f2048b;
                    if (i10 == i5) {
                        i5 = bVar.f2050d;
                    } else {
                        if (i10 < i5) {
                            i5--;
                        }
                        if (bVar.f2050d <= i5) {
                            i5++;
                        }
                    }
                }
            } else if (bVar.f2048b <= i5) {
                i5 += bVar.f2050d;
            }
        }
        return i5;
    }

    public final void f(androidx.recyclerview.widget.a.b bVar) {
        boolean z4;
        byte b5;
        int i5 = bVar.f2048b;
        int i6 = bVar.f2050d + i5;
        byte b6 = -1;
        int i7 = i5;
        int i8 = 0;
        while (i7 < i6) {
            if (this.f2042d.c(i7) != null || h(i7)) {
                if (b6 == 0) {
                    k(b(2, i5, i8, null));
                    z4 = true;
                } else {
                    z4 = false;
                }
                b5 = 1;
            } else {
                if (b6 == 1) {
                    v(b(2, i5, i8, null));
                    z4 = true;
                } else {
                    z4 = false;
                }
                b5 = 0;
            }
            if (z4) {
                i7 -= i8;
                i6 -= i8;
                i8 = 1;
            } else {
                i8++;
            }
            i7++;
            b6 = b5;
        }
        if (i8 != bVar.f2050d) {
            a(bVar);
            bVar = b(2, i5, i8, null);
        }
        if (b6 == 0) {
            k(bVar);
        } else {
            v(bVar);
        }
    }

    public final void g(androidx.recyclerview.widget.a.b bVar) {
        int i5 = bVar.f2048b;
        int i6 = bVar.f2050d + i5;
        int i7 = 0;
        byte b5 = -1;
        int i8 = i5;
        while (i5 < i6) {
            if (this.f2042d.c(i5) != null || h(i5)) {
                if (b5 == 0) {
                    k(b(4, i8, i7, bVar.f2049c));
                    i8 = i5;
                    i7 = 0;
                }
                b5 = 1;
            } else {
                if (b5 == 1) {
                    v(b(4, i8, i7, bVar.f2049c));
                    i8 = i5;
                    i7 = 0;
                }
                b5 = 0;
            }
            i7++;
            i5++;
        }
        if (i7 != bVar.f2050d) {
            java.lang.Object obj = bVar.f2049c;
            a(bVar);
            bVar = b(4, i8, i7, obj);
        }
        if (b5 == 0) {
            k(bVar);
        } else {
            v(bVar);
        }
    }

    public final boolean h(int i5) {
        int size = this.f2041c.size();
        for (int i6 = 0; i6 < size; i6++) {
            androidx.recyclerview.widget.a.b bVar = this.f2041c.get(i6);
            int i7 = bVar.f2047a;
            if (i7 == 8) {
                if (n(bVar.f2050d, i6 + 1) == i5) {
                    return true;
                }
            } else if (i7 == 1) {
                int i8 = bVar.f2048b;
                int i9 = bVar.f2050d + i8;
                while (i8 < i9) {
                    if (n(i8, i6 + 1) == i5) {
                        return true;
                    }
                    i8++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public void i() {
        int size = this.f2041c.size();
        for (int i5 = 0; i5 < size; i5++) {
            this.f2042d.b(this.f2041c.get(i5));
        }
        x(this.f2041c);
        this.f2046h = 0;
    }

    public void j() {
        i();
        int size = this.f2040b.size();
        for (int i5 = 0; i5 < size; i5++) {
            androidx.recyclerview.widget.a.b bVar = this.f2040b.get(i5);
            int i6 = bVar.f2047a;
            if (i6 == 1) {
                this.f2042d.b(bVar);
                this.f2042d.g(bVar.f2048b, bVar.f2050d);
            } else if (i6 == 2) {
                this.f2042d.b(bVar);
                this.f2042d.d(bVar.f2048b, bVar.f2050d);
            } else if (i6 == 4) {
                this.f2042d.b(bVar);
                this.f2042d.h(bVar.f2048b, bVar.f2050d, bVar.f2049c);
            } else if (i6 == 8) {
                this.f2042d.b(bVar);
                this.f2042d.a(bVar.f2048b, bVar.f2050d);
            }
            java.lang.Runnable runnable = this.f2043e;
            if (runnable != null) {
                runnable.run();
            }
        }
        x(this.f2040b);
        this.f2046h = 0;
    }

    public final void k(androidx.recyclerview.widget.a.b bVar) {
        int i5;
        int i6 = bVar.f2047a;
        if (i6 == 1 || i6 == 8) {
            throw new java.lang.IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iZ = z(bVar.f2048b, i6);
        int i7 = bVar.f2048b;
        int i8 = bVar.f2047a;
        if (i8 == 2) {
            i5 = 0;
        } else {
            if (i8 != 4) {
                throw new java.lang.IllegalArgumentException("op should be remove or update." + bVar);
            }
            i5 = 1;
        }
        int i9 = 1;
        for (int i10 = 1; i10 < bVar.f2050d; i10++) {
            int iZ2 = z(bVar.f2048b + (i5 * i10), bVar.f2047a);
            int i11 = bVar.f2047a;
            if (i11 == 2 ? iZ2 == iZ : i11 == 4 && iZ2 == iZ + 1) {
                i9++;
            } else {
                androidx.recyclerview.widget.a.b bVarB = b(i11, iZ, i9, bVar.f2049c);
                l(bVarB, i7);
                a(bVarB);
                if (bVar.f2047a == 4) {
                    i7 += i9;
                }
                i9 = 1;
                iZ = iZ2;
            }
        }
        java.lang.Object obj = bVar.f2049c;
        a(bVar);
        if (i9 > 0) {
            androidx.recyclerview.widget.a.b bVarB2 = b(bVar.f2047a, iZ, i9, obj);
            l(bVarB2, i7);
            a(bVarB2);
        }
    }

    public void l(androidx.recyclerview.widget.a.b bVar, int i5) {
        this.f2042d.f(bVar);
        int i6 = bVar.f2047a;
        if (i6 == 2) {
            this.f2042d.d(i5, bVar.f2050d);
        } else {
            if (i6 != 4) {
                throw new java.lang.IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            this.f2042d.h(i5, bVar.f2050d, bVar.f2049c);
        }
    }

    public int m(int i5) {
        return n(i5, 0);
    }

    public int n(int i5, int i6) {
        int size = this.f2041c.size();
        while (i6 < size) {
            androidx.recyclerview.widget.a.b bVar = this.f2041c.get(i6);
            int i7 = bVar.f2047a;
            if (i7 == 8) {
                int i8 = bVar.f2048b;
                if (i8 == i5) {
                    i5 = bVar.f2050d;
                } else {
                    if (i8 < i5) {
                        i5--;
                    }
                    if (bVar.f2050d <= i5) {
                        i5++;
                    }
                }
            } else {
                int i9 = bVar.f2048b;
                if (i9 > i5) {
                    continue;
                } else if (i7 == 2) {
                    int i10 = bVar.f2050d;
                    if (i5 < i9 + i10) {
                        return -1;
                    }
                    i5 -= i10;
                } else if (i7 == 1) {
                    i5 += bVar.f2050d;
                }
            }
            i6++;
        }
        return i5;
    }

    public boolean o(int i5) {
        return (i5 & this.f2046h) != 0;
    }

    public boolean p() {
        return this.f2040b.size() > 0;
    }

    public boolean q() {
        return (this.f2041c.isEmpty() || this.f2040b.isEmpty()) ? false : true;
    }

    public boolean r(int i5, int i6, java.lang.Object obj) {
        if (i6 < 1) {
            return false;
        }
        this.f2040b.add(b(4, i5, i6, obj));
        this.f2046h |= 4;
        return this.f2040b.size() == 1;
    }

    public boolean s(int i5, int i6) {
        if (i6 < 1) {
            return false;
        }
        this.f2040b.add(b(1, i5, i6, null));
        this.f2046h |= 1;
        return this.f2040b.size() == 1;
    }

    public boolean t(int i5, int i6, int i7) {
        if (i5 == i6) {
            return false;
        }
        if (i7 != 1) {
            throw new java.lang.IllegalArgumentException("Moving more than 1 item is not supported yet");
        }
        this.f2040b.add(b(8, i5, i6, null));
        this.f2046h |= 8;
        return this.f2040b.size() == 1;
    }

    public boolean u(int i5, int i6) {
        if (i6 < 1) {
            return false;
        }
        this.f2040b.add(b(2, i5, i6, null));
        this.f2046h |= 2;
        return this.f2040b.size() == 1;
    }

    public final void v(androidx.recyclerview.widget.a.b bVar) {
        this.f2041c.add(bVar);
        int i5 = bVar.f2047a;
        if (i5 == 1) {
            this.f2042d.g(bVar.f2048b, bVar.f2050d);
            return;
        }
        if (i5 == 2) {
            this.f2042d.e(bVar.f2048b, bVar.f2050d);
            return;
        }
        if (i5 == 4) {
            this.f2042d.h(bVar.f2048b, bVar.f2050d, bVar.f2049c);
        } else {
            if (i5 == 8) {
                this.f2042d.a(bVar.f2048b, bVar.f2050d);
                return;
            }
            throw new java.lang.IllegalArgumentException("Unknown update op type for " + bVar);
        }
    }

    public void w() {
        this.f2045g.b(this.f2040b);
        int size = this.f2040b.size();
        for (int i5 = 0; i5 < size; i5++) {
            androidx.recyclerview.widget.a.b bVar = this.f2040b.get(i5);
            int i6 = bVar.f2047a;
            if (i6 == 1) {
                c(bVar);
            } else if (i6 == 2) {
                f(bVar);
            } else if (i6 == 4) {
                g(bVar);
            } else if (i6 == 8) {
                d(bVar);
            }
            java.lang.Runnable runnable = this.f2043e;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.f2040b.clear();
    }

    public void x(java.util.List<androidx.recyclerview.widget.a.b> list) {
        int size = list.size();
        for (int i5 = 0; i5 < size; i5++) {
            a(list.get(i5));
        }
        list.clear();
    }

    public void y() {
        x(this.f2040b);
        x(this.f2041c);
        this.f2046h = 0;
    }

    public final int z(int i5, int i6) {
        int i7;
        int i8;
        for (int size = this.f2041c.size() - 1; size >= 0; size--) {
            androidx.recyclerview.widget.a.b bVar = this.f2041c.get(size);
            int i9 = bVar.f2047a;
            if (i9 == 8) {
                int i10 = bVar.f2048b;
                int i11 = bVar.f2050d;
                if (i10 < i11) {
                    i8 = i10;
                    i7 = i11;
                } else {
                    i7 = i10;
                    i8 = i11;
                }
                if (i5 < i8 || i5 > i7) {
                    if (i5 < i10) {
                        if (i6 == 1) {
                            bVar.f2048b = i10 + 1;
                            bVar.f2050d = i11 + 1;
                        } else if (i6 == 2) {
                            bVar.f2048b = i10 - 1;
                            bVar.f2050d = i11 - 1;
                        }
                    }
                } else if (i8 == i10) {
                    if (i6 == 1) {
                        bVar.f2050d = i11 + 1;
                    } else if (i6 == 2) {
                        bVar.f2050d = i11 - 1;
                    }
                    i5++;
                } else {
                    if (i6 == 1) {
                        bVar.f2048b = i10 + 1;
                    } else if (i6 == 2) {
                        bVar.f2048b = i10 - 1;
                    }
                    i5--;
                }
            } else {
                int i12 = bVar.f2048b;
                if (i12 <= i5) {
                    if (i9 == 1) {
                        i5 -= bVar.f2050d;
                    } else if (i9 == 2) {
                        i5 += bVar.f2050d;
                    }
                } else if (i6 == 1) {
                    bVar.f2048b = i12 + 1;
                } else if (i6 == 2) {
                    bVar.f2048b = i12 - 1;
                }
            }
        }
        for (int size2 = this.f2041c.size() - 1; size2 >= 0; size2--) {
            androidx.recyclerview.widget.a.b bVar2 = this.f2041c.get(size2);
            if (bVar2.f2047a == 8) {
                int i13 = bVar2.f2050d;
                if (i13 == bVar2.f2048b || i13 < 0) {
                    this.f2041c.remove(size2);
                    a(bVar2);
                }
            } else if (bVar2.f2050d <= 0) {
                this.f2041c.remove(size2);
                a(bVar2);
            }
        }
        return i5;
    }

    public a(androidx.recyclerview.widget.a.InterfaceC0013a interfaceC0013a, boolean z4) {
        this.f2039a = new v.f(30);
        this.f2040b = new java.util.ArrayList<>();
        this.f2041c = new java.util.ArrayList<>();
        this.f2046h = 0;
        this.f2042d = interfaceC0013a;
        this.f2044f = z4;
        this.f2045g = new androidx.recyclerview.widget.g(this);
    }
}
