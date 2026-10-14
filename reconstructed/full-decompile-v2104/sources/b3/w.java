package b3;

/* JADX INFO: compiled from: _Collections.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class w extends b3.v {
    public static final int[] A(java.util.Collection<java.lang.Integer> collection) {
        m3.k.e(collection, "<this>");
        int[] iArr = new int[collection.size()];
        java.util.Iterator<java.lang.Integer> it = collection.iterator();
        int i5 = 0;
        while (it.hasNext()) {
            iArr[i5] = it.next().intValue();
            i5++;
        }
        return iArr;
    }

    public static final <T> java.util.List<T> B(java.lang.Iterable<? extends T> iterable) {
        m3.k.e(iterable, "<this>");
        if (!(iterable instanceof java.util.Collection)) {
            return b3.o.i(C(iterable));
        }
        java.util.Collection collection = (java.util.Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return b3.o.e();
        }
        if (size != 1) {
            return D(collection);
        }
        return b3.n.d(iterable instanceof java.util.List ? ((java.util.List) iterable).get(0) : iterable.iterator().next());
    }

    public static final <T> java.util.List<T> C(java.lang.Iterable<? extends T> iterable) {
        m3.k.e(iterable, "<this>");
        return iterable instanceof java.util.Collection ? D((java.util.Collection) iterable) : (java.util.List) z(iterable, new java.util.ArrayList());
    }

    public static final <T> java.util.List<T> D(java.util.Collection<? extends T> collection) {
        m3.k.e(collection, "<this>");
        return new java.util.ArrayList(collection);
    }

    public static final <T> java.util.Set<T> E(java.lang.Iterable<? extends T> iterable) {
        m3.k.e(iterable, "<this>");
        if (!(iterable instanceof java.util.Collection)) {
            return b3.j0.f((java.util.Set) z(iterable, new java.util.LinkedHashSet()));
        }
        java.util.Collection collection = (java.util.Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return b3.j0.d();
        }
        if (size != 1) {
            return (java.util.Set) z(iterable, new java.util.LinkedHashSet(b3.g0.d(collection.size())));
        }
        return b3.i0.c(iterable instanceof java.util.List ? ((java.util.List) iterable).get(0) : iterable.iterator().next());
    }

    public static final <T> T p(java.util.List<? extends T> list) {
        m3.k.e(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static final <T, A extends java.lang.Appendable> A q(java.lang.Iterable<? extends T> iterable, A a5, java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2, java.lang.CharSequence charSequence3, int i5, java.lang.CharSequence charSequence4, l3.l<? super T, ? extends java.lang.CharSequence> lVar) throws java.io.IOException {
        m3.k.e(iterable, "<this>");
        m3.k.e(a5, "buffer");
        m3.k.e(charSequence, "separator");
        m3.k.e(charSequence2, "prefix");
        m3.k.e(charSequence3, "postfix");
        m3.k.e(charSequence4, "truncated");
        a5.append(charSequence2);
        int i6 = 0;
        for (T t5 : iterable) {
            i6++;
            if (i6 > 1) {
                a5.append(charSequence);
            }
            if (i5 >= 0 && i6 > i5) {
                break;
            }
            s3.d.a(a5, t5, lVar);
        }
        if (i5 >= 0 && i6 > i5) {
            a5.append(charSequence4);
        }
        a5.append(charSequence3);
        return a5;
    }

    public static final <T> java.lang.String s(java.lang.Iterable<? extends T> iterable, java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2, java.lang.CharSequence charSequence3, int i5, java.lang.CharSequence charSequence4, l3.l<? super T, ? extends java.lang.CharSequence> lVar) {
        m3.k.e(iterable, "<this>");
        m3.k.e(charSequence, "separator");
        m3.k.e(charSequence2, "prefix");
        m3.k.e(charSequence3, "postfix");
        m3.k.e(charSequence4, "truncated");
        java.lang.String string = ((java.lang.StringBuilder) q(iterable, new java.lang.StringBuilder(), charSequence, charSequence2, charSequence3, i5, charSequence4, lVar)).toString();
        m3.k.d(string, "joinTo(StringBuilder(), …ed, transform).toString()");
        return string;
    }

    public static /* synthetic */ java.lang.String t(java.lang.Iterable iterable, java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2, java.lang.CharSequence charSequence3, int i5, java.lang.CharSequence charSequence4, l3.l lVar, int i6, java.lang.Object obj) {
        if ((i6 & 1) != 0) {
            charSequence = ", ";
        }
        java.lang.CharSequence charSequence5 = (i6 & 2) != 0 ? "" : charSequence2;
        java.lang.CharSequence charSequence6 = (i6 & 4) == 0 ? charSequence3 : "";
        if ((i6 & 8) != 0) {
            i5 = -1;
        }
        int i7 = i5;
        if ((i6 & 16) != 0) {
            charSequence4 = "...";
        }
        java.lang.CharSequence charSequence7 = charSequence4;
        if ((i6 & 32) != 0) {
            lVar = null;
        }
        return s(iterable, charSequence, charSequence5, charSequence6, i7, charSequence7, lVar);
    }

    public static final <T extends java.lang.Comparable<? super T>> T u(java.lang.Iterable<? extends T> iterable) {
        m3.k.e(iterable, "<this>");
        java.util.Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (next.compareTo(next2) > 0) {
                next = next2;
            }
        }
        return next;
    }

    public static final <T> java.util.List<T> v(java.util.Collection<? extends T> collection, T t5) {
        m3.k.e(collection, "<this>");
        java.util.ArrayList arrayList = new java.util.ArrayList(collection.size() + 1);
        arrayList.addAll(collection);
        arrayList.add(t5);
        return arrayList;
    }

    public static final <T> T w(java.lang.Iterable<? extends T> iterable) {
        m3.k.e(iterable, "<this>");
        if (iterable instanceof java.util.List) {
            return (T) x((java.util.List) iterable);
        }
        java.util.Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new java.util.NoSuchElementException("Collection is empty.");
        }
        T next = it.next();
        if (it.hasNext()) {
            throw new java.lang.IllegalArgumentException("Collection has more than one element.");
        }
        return next;
    }

    public static final <T> T x(java.util.List<? extends T> list) {
        m3.k.e(list, "<this>");
        int size = list.size();
        if (size == 0) {
            throw new java.util.NoSuchElementException("List is empty.");
        }
        if (size == 1) {
            return list.get(0);
        }
        throw new java.lang.IllegalArgumentException("List has more than one element.");
    }

    public static final <T extends java.lang.Comparable<? super T>> java.util.List<T> y(java.lang.Iterable<? extends T> iterable) {
        m3.k.e(iterable, "<this>");
        if (!(iterable instanceof java.util.Collection)) {
            java.util.List<T> listC = C(iterable);
            b3.s.m(listC);
            return listC;
        }
        java.util.Collection collection = (java.util.Collection) iterable;
        if (collection.size() <= 1) {
            return B(iterable);
        }
        java.lang.Object[] array = collection.toArray(new java.lang.Comparable[0]);
        b3.j.j((java.lang.Comparable[]) array);
        return b3.j.c(array);
    }

    public static final <T, C extends java.util.Collection<? super T>> C z(java.lang.Iterable<? extends T> iterable, C c5) {
        m3.k.e(iterable, "<this>");
        m3.k.e(c5, "destination");
        java.util.Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            c5.add(it.next());
        }
        return c5;
    }
}
