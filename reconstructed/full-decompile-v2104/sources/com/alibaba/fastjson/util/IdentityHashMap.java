package com.alibaba.fastjson.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class IdentityHashMap<K, V> {
    public static final int DEFAULT_SIZE = 8192;
    private final com.alibaba.fastjson.util.IdentityHashMap.Entry<K, V>[] buckets;
    private final int indexMask;

    public static final class Entry<K, V> {
        public final int hashCode;
        public final K key;
        public final com.alibaba.fastjson.util.IdentityHashMap.Entry<K, V> next;
        public V value;

        public Entry(K k5, V v4, int i5, com.alibaba.fastjson.util.IdentityHashMap.Entry<K, V> entry) {
            this.key = k5;
            this.value = v4;
            this.next = entry;
            this.hashCode = i5;
        }
    }

    public IdentityHashMap() {
        this(8192);
    }

    public void clear() {
        java.util.Arrays.fill(this.buckets, (java.lang.Object) null);
    }

    public java.lang.Class findClass(java.lang.String str) {
        int i5 = 0;
        while (true) {
            com.alibaba.fastjson.util.IdentityHashMap.Entry<K, V>[] entryArr = this.buckets;
            if (i5 >= entryArr.length) {
                return null;
            }
            com.alibaba.fastjson.util.IdentityHashMap.Entry<K, V> entry = entryArr[i5];
            if (entry != null) {
                for (com.alibaba.fastjson.util.IdentityHashMap.Entry<K, V> entry2 = entry; entry2 != null; entry2 = entry2.next) {
                    K k5 = entry.key;
                    if (k5 instanceof java.lang.Class) {
                        java.lang.Class cls = (java.lang.Class) k5;
                        if (cls.getName().equals(str)) {
                            return cls;
                        }
                    }
                }
            }
            i5++;
        }
    }

    public final V get(K k5) {
        for (com.alibaba.fastjson.util.IdentityHashMap.Entry<K, V> entry = this.buckets[java.lang.System.identityHashCode(k5) & this.indexMask]; entry != null; entry = entry.next) {
            if (k5 == entry.key) {
                return entry.value;
            }
        }
        return null;
    }

    public boolean put(K k5, V v4) {
        int iIdentityHashCode = java.lang.System.identityHashCode(k5);
        int i5 = this.indexMask & iIdentityHashCode;
        for (com.alibaba.fastjson.util.IdentityHashMap.Entry<K, V> entry = this.buckets[i5]; entry != null; entry = entry.next) {
            if (k5 == entry.key) {
                entry.value = v4;
                return true;
            }
        }
        this.buckets[i5] = new com.alibaba.fastjson.util.IdentityHashMap.Entry<>(k5, v4, iIdentityHashCode, this.buckets[i5]);
        return false;
    }

    public int size() {
        int i5 = 0;
        for (com.alibaba.fastjson.util.IdentityHashMap.Entry<K, V> entry : this.buckets) {
            for (; entry != null; entry = entry.next) {
                i5++;
            }
        }
        return i5;
    }

    public IdentityHashMap(int i5) {
        this.indexMask = i5 - 1;
        this.buckets = new com.alibaba.fastjson.util.IdentityHashMap.Entry[i5];
    }
}
