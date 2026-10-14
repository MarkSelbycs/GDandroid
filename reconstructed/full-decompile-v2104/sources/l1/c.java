package l1;

/* JADX INFO: compiled from: CollUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c {

    /* JADX INFO: compiled from: CollUtil.java */
    @java.lang.FunctionalInterface
    public interface a<T> extends java.io.Serializable {
        void J(T t5, int i5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> java.util.Collection<T> b(java.util.Collection<T> collection, java.lang.Object obj, java.lang.reflect.Type type) {
        java.util.Iterator<java.lang.String> it;
        java.util.Iterator<java.lang.String> aVar;
        if (collection != 0 && obj != null) {
            if (e2.d0.r(type)) {
                type = java.lang.Object.class;
            }
            if (obj instanceof java.util.Iterator) {
                it = (java.util.Iterator) obj;
            } else if (obj instanceof java.lang.Iterable) {
                it = ((java.lang.Iterable) obj).iterator();
            } else {
                if (obj instanceof java.util.Enumeration) {
                    aVar = new l1.e<>((java.util.Enumeration) obj);
                } else if (e2.c.s(obj)) {
                    aVar = new l1.a<>(obj);
                } else {
                    it = obj instanceof java.lang.CharSequence ? b2.c.F(b2.c.Z((java.lang.CharSequence) obj, '[', ']'), ',').iterator() : j(obj).iterator();
                }
                it = aVar;
            }
            n1.g gVarY = n1.g.y();
            while (it.hasNext()) {
                collection.add(gVarY.c(type, it.next()));
            }
        }
        return collection;
    }

    public static <T> java.util.Collection<T> c(java.lang.Class<?> cls) {
        return d(cls, null);
    }

    public static <T> java.util.Collection<T> d(java.lang.Class<?> cls, java.lang.Class<T> cls2) {
        if (cls.isAssignableFrom(java.util.AbstractCollection.class)) {
            return new java.util.ArrayList();
        }
        if (cls.isAssignableFrom(java.util.HashSet.class)) {
            return new java.util.HashSet();
        }
        if (cls.isAssignableFrom(java.util.LinkedHashSet.class)) {
            return new java.util.LinkedHashSet();
        }
        if (cls.isAssignableFrom(java.util.TreeSet.class)) {
            return new java.util.TreeSet(new java.util.Comparator() { // from class: l1.b
                @Override // java.util.Comparator
                public final int compare(java.lang.Object obj, java.lang.Object obj2) {
                    return l1.c.i(obj, obj2);
                }
            });
        }
        if (cls.isAssignableFrom(java.util.EnumSet.class)) {
            return java.util.EnumSet.noneOf((java.lang.Class) v1.e.p(cls2));
        }
        if (cls.isAssignableFrom(java.util.ArrayList.class)) {
            return new java.util.ArrayList();
        }
        if (cls.isAssignableFrom(java.util.LinkedList.class)) {
            return new java.util.LinkedList();
        }
        try {
            return (java.util.Collection) e2.x.D(cls, new java.lang.Object[0]);
        } catch (java.lang.Exception e5) {
            java.lang.Class<? super java.lang.Object> superclass = cls.getSuperclass();
            if (superclass == null || cls == superclass) {
                throw new r1.c(e5);
            }
            return c(superclass);
        }
    }

    public static <T> void e(java.lang.Iterable<T> iterable, l1.c.a<T> aVar) {
        if (iterable == null) {
            return;
        }
        f(iterable.iterator(), aVar);
    }

    public static <T> void f(java.util.Iterator<T> it, l1.c.a<T> aVar) {
        if (it == null) {
            return;
        }
        int i5 = 0;
        while (it.hasNext()) {
            aVar.J(it.next(), i5);
            i5++;
        }
    }

    public static boolean g(java.util.Collection<?> collection) {
        return collection == null || collection.isEmpty();
    }

    public static boolean h(java.util.Collection<?> collection) {
        return !g(collection);
    }

    public static /* synthetic */ int i(java.lang.Object obj, java.lang.Object obj2) {
        return obj instanceof java.lang.Comparable ? ((java.lang.Comparable) obj).compareTo(obj2) : m1.a.a(obj.toString(), obj2.toString());
    }

    @java.lang.SafeVarargs
    public static <T> java.util.ArrayList<T> j(T... tArr) {
        return l1.h.e(tArr);
    }

    @java.lang.SafeVarargs
    public static <T> java.util.HashSet<T> k(T... tArr) {
        return l(false, tArr);
    }

    @java.lang.SafeVarargs
    public static <T> java.util.HashSet<T> l(boolean z4, T... tArr) {
        if (tArr == null) {
            return z4 ? new java.util.LinkedHashSet() : new java.util.HashSet<>();
        }
        int iMax = java.lang.Math.max(((int) (tArr.length / 0.75f)) + 1, 16);
        java.util.HashSet<T> linkedHashSet = z4 ? new java.util.LinkedHashSet<>(iMax) : new java.util.HashSet<>(iMax);
        java.util.Collections.addAll(linkedHashSet, tArr);
        return linkedHashSet;
    }

    public static <F, T> java.util.Collection<T> m(java.util.Collection<F> collection, java.util.function.Function<? super F, ? extends T> function) {
        return new l1.l(collection, function);
    }
}
