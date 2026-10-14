package androidx.recyclerview.widget;

/* JADX INFO: compiled from: OpReorderer.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.recyclerview.widget.g.a f2162a;

    /* JADX INFO: compiled from: OpReorderer.java */
    public interface a {
        void a(androidx.recyclerview.widget.a.b bVar);

        androidx.recyclerview.widget.a.b b(int i5, int i6, int i7, java.lang.Object obj);
    }

    public g(androidx.recyclerview.widget.g.a aVar) {
        this.f2162a = aVar;
    }

    public final int a(java.util.List<androidx.recyclerview.widget.a.b> list) {
        boolean z4 = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).f2047a != 8) {
                z4 = true;
            } else if (z4) {
                return size;
            }
        }
        return -1;
    }

    public void b(java.util.List<androidx.recyclerview.widget.a.b> list) {
        while (true) {
            int iA = a(list);
            if (iA == -1) {
                return;
            } else {
                d(list, iA, iA + 1);
            }
        }
    }

    public final void c(java.util.List<androidx.recyclerview.widget.a.b> list, int i5, androidx.recyclerview.widget.a.b bVar, int i6, androidx.recyclerview.widget.a.b bVar2) {
        int i7 = bVar.f2050d;
        int i8 = bVar2.f2048b;
        int i9 = i7 < i8 ? -1 : 0;
        int i10 = bVar.f2048b;
        if (i10 < i8) {
            i9++;
        }
        if (i8 <= i10) {
            bVar.f2048b = i10 + bVar2.f2050d;
        }
        int i11 = bVar2.f2048b;
        if (i11 <= i7) {
            bVar.f2050d = i7 + bVar2.f2050d;
        }
        bVar2.f2048b = i11 + i9;
        list.set(i5, bVar2);
        list.set(i6, bVar);
    }

    public final void d(java.util.List<androidx.recyclerview.widget.a.b> list, int i5, int i6) {
        androidx.recyclerview.widget.a.b bVar = list.get(i5);
        androidx.recyclerview.widget.a.b bVar2 = list.get(i6);
        int i7 = bVar2.f2047a;
        if (i7 == 1) {
            c(list, i5, bVar, i6, bVar2);
        } else if (i7 == 2) {
            e(list, i5, bVar, i6, bVar2);
        } else {
            if (i7 != 4) {
                return;
            }
            f(list, i5, bVar, i6, bVar2);
        }
    }

    public void e(java.util.List<androidx.recyclerview.widget.a.b> list, int i5, androidx.recyclerview.widget.a.b bVar, int i6, androidx.recyclerview.widget.a.b bVar2) {
        boolean z4;
        int i7 = bVar.f2048b;
        int i8 = bVar.f2050d;
        boolean z5 = false;
        if (i7 < i8) {
            if (bVar2.f2048b == i7 && bVar2.f2050d == i8 - i7) {
                z4 = false;
                z5 = true;
            } else {
                z4 = false;
            }
        } else if (bVar2.f2048b == i8 + 1 && bVar2.f2050d == i7 - i8) {
            z4 = true;
            z5 = true;
        } else {
            z4 = true;
        }
        int i9 = bVar2.f2048b;
        if (i8 < i9) {
            bVar2.f2048b = i9 - 1;
        } else {
            int i10 = bVar2.f2050d;
            if (i8 < i9 + i10) {
                bVar2.f2050d = i10 - 1;
                bVar.f2047a = 2;
                bVar.f2050d = 1;
                if (bVar2.f2050d == 0) {
                    list.remove(i6);
                    this.f2162a.a(bVar2);
                    return;
                }
                return;
            }
        }
        int i11 = bVar.f2048b;
        int i12 = bVar2.f2048b;
        androidx.recyclerview.widget.a.b bVarB = null;
        if (i11 <= i12) {
            bVar2.f2048b = i12 + 1;
        } else {
            int i13 = bVar2.f2050d;
            if (i11 < i12 + i13) {
                bVarB = this.f2162a.b(2, i11 + 1, (i12 + i13) - i11, null);
                bVar2.f2050d = bVar.f2048b - bVar2.f2048b;
            }
        }
        if (z5) {
            list.set(i5, bVar2);
            list.remove(i6);
            this.f2162a.a(bVar);
            return;
        }
        if (z4) {
            if (bVarB != null) {
                int i14 = bVar.f2048b;
                if (i14 > bVarB.f2048b) {
                    bVar.f2048b = i14 - bVarB.f2050d;
                }
                int i15 = bVar.f2050d;
                if (i15 > bVarB.f2048b) {
                    bVar.f2050d = i15 - bVarB.f2050d;
                }
            }
            int i16 = bVar.f2048b;
            if (i16 > bVar2.f2048b) {
                bVar.f2048b = i16 - bVar2.f2050d;
            }
            int i17 = bVar.f2050d;
            if (i17 > bVar2.f2048b) {
                bVar.f2050d = i17 - bVar2.f2050d;
            }
        } else {
            if (bVarB != null) {
                int i18 = bVar.f2048b;
                if (i18 >= bVarB.f2048b) {
                    bVar.f2048b = i18 - bVarB.f2050d;
                }
                int i19 = bVar.f2050d;
                if (i19 >= bVarB.f2048b) {
                    bVar.f2050d = i19 - bVarB.f2050d;
                }
            }
            int i20 = bVar.f2048b;
            if (i20 >= bVar2.f2048b) {
                bVar.f2048b = i20 - bVar2.f2050d;
            }
            int i21 = bVar.f2050d;
            if (i21 >= bVar2.f2048b) {
                bVar.f2050d = i21 - bVar2.f2050d;
            }
        }
        list.set(i5, bVar2);
        if (bVar.f2048b != bVar.f2050d) {
            list.set(i6, bVar);
        } else {
            list.remove(i6);
        }
        if (bVarB != null) {
            list.add(i5, bVarB);
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    /* JADX WARN: Code duplicated, block: B:12:0x002b  */
    /* JADX WARN: Code duplicated, block: B:14:0x0031  */
    /* JADX WARN: Code duplicated, block: B:17:0x0048  */
    /* JADX WARN: Code duplicated, block: B:18:0x004c  */
    /* JADX WARN: Code duplicated, block: B:20:0x0056  */
    /* JADX WARN: Code duplicated, block: B:22:0x005b  */
    /* JADX WARN: Code duplicated, block: B:24:? A[RETURN, SYNTHETIC] */
    public void f(java.util.List<androidx.recyclerview.widget.a.b> list, int i5, androidx.recyclerview.widget.a.b bVar, int i6, androidx.recyclerview.widget.a.b bVar2) {
        androidx.recyclerview.widget.a.b bVarB;
        int i7;
        int i8;
        int i9;
        int i10 = bVar.f2050d;
        int i11 = bVar2.f2048b;
        androidx.recyclerview.widget.a.b bVarB2 = null;
        if (i10 >= i11) {
            int i12 = bVar2.f2050d;
            if (i10 < i11 + i12) {
                bVar2.f2050d = i12 - 1;
                bVarB = this.f2162a.b(4, bVar.f2048b, 1, bVar2.f2049c);
            }
            i7 = bVar.f2048b;
            i8 = bVar2.f2048b;
            if (i7 <= i8) {
                bVar2.f2048b = i8 + 1;
            } else {
                i9 = bVar2.f2050d;
                if (i7 < i8 + i9) {
                    int i13 = (i8 + i9) - i7;
                    bVarB2 = this.f2162a.b(4, i7 + 1, i13, bVar2.f2049c);
                    bVar2.f2050d -= i13;
                }
            }
            list.set(i6, bVar);
            if (bVar2.f2050d > 0) {
                list.set(i5, bVar2);
            } else {
                list.remove(i5);
                this.f2162a.a(bVar2);
            }
            if (bVarB != null) {
                list.add(i5, bVarB);
            }
            if (bVarB2 != null) {
                list.add(i5, bVarB2);
            }
        }
        bVar2.f2048b = i11 - 1;
        bVarB = null;
        i7 = bVar.f2048b;
        i8 = bVar2.f2048b;
        if (i7 <= i8) {
            bVar2.f2048b = i8 + 1;
        } else {
            i9 = bVar2.f2050d;
            if (i7 < i8 + i9) {
                int i14 = (i8 + i9) - i7;
                bVarB2 = this.f2162a.b(4, i7 + 1, i14, bVar2.f2049c);
                bVar2.f2050d -= i14;
            }
        }
        list.set(i6, bVar);
        if (bVar2.f2050d > 0) {
            list.set(i5, bVar2);
        } else {
            list.remove(i5);
            this.f2162a.a(bVar2);
        }
        if (bVarB != null) {
            list.add(i5, bVarB);
        }
        if (bVarB2 != null) {
            list.add(i5, bVarB2);
        }
    }
}
