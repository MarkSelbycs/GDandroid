package com.alibaba.fastjson.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class AntiCollisionHashMap<K, V> extends java.util.AbstractMap<K, V> implements java.lang.Cloneable, java.io.Serializable {
    public static final int DEFAULT_INITIAL_CAPACITY = 16;
    public static final float DEFAULT_LOAD_FACTOR = 0.75f;
    public static final int KEY = 16777619;
    public static final int MAXIMUM_CAPACITY = 1073741824;
    public static final int M_MASK = -2023358765;
    public static final int SEED = -2128831035;
    private static final long serialVersionUID = 362498820763181265L;
    private transient java.util.Set<java.util.Map.Entry<K, V>> entrySet;
    public volatile transient java.util.Set<K> keySet;
    public final float loadFactor;
    public volatile transient int modCount;
    public final int random;
    public transient int size;
    public transient com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V>[] table;
    public int threshold;
    public volatile transient java.util.Collection<V> values;

    /* JADX INFO: renamed from: com.alibaba.fastjson.util.AntiCollisionHashMap$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
    }

    public static class Entry<K, V> implements java.util.Map.Entry<K, V> {
        public final int hash;
        public final K key;
        public com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> next;
        public V value;

        public Entry(int i5, K k5, V v4, com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> entry) {
            this.value = v4;
            this.next = entry;
            this.key = k5;
            this.hash = i5;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(java.lang.Object obj) {
            if (!(obj instanceof java.util.Map.Entry)) {
                return false;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry) obj;
            K key = getKey();
            java.lang.Object key2 = entry.getKey();
            if (key != key2 && (key == null || !key.equals(key2))) {
                return false;
            }
            V value = getValue();
            java.lang.Object value2 = entry.getValue();
            return value == value2 || (value != null && value.equals(value2));
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.key;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.value;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K k5 = this.key;
            int iHashCode = k5 == null ? 0 : k5.hashCode();
            V v4 = this.value;
            return iHashCode ^ (v4 != null ? v4.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v4) {
            V v5 = this.value;
            this.value = v4;
            return v5;
        }

        public final java.lang.String toString() {
            return getKey() + "=" + getValue();
        }
    }

    public final class EntryIterator extends com.alibaba.fastjson.util.AntiCollisionHashMap<K, V>.HashIterator<java.util.Map.Entry<K, V>> {
        private EntryIterator() {
            super();
        }

        public /* synthetic */ EntryIterator(com.alibaba.fastjson.util.AntiCollisionHashMap antiCollisionHashMap, com.alibaba.fastjson.util.AntiCollisionHashMap.AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // java.util.Iterator
        public java.util.Map.Entry<K, V> next() {
            return nextEntry();
        }
    }

    public final class EntrySet extends java.util.AbstractSet<java.util.Map.Entry<K, V>> {
        private EntrySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            com.alibaba.fastjson.util.AntiCollisionHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(java.lang.Object obj) {
            if (!(obj instanceof java.util.Map.Entry)) {
                return false;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry) obj;
            com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> entry2 = com.alibaba.fastjson.util.AntiCollisionHashMap.this.getEntry(entry.getKey());
            return entry2 != null && entry2.equals(entry);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public java.util.Iterator<java.util.Map.Entry<K, V>> iterator() {
            return com.alibaba.fastjson.util.AntiCollisionHashMap.this.newEntryIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(java.lang.Object obj) {
            return com.alibaba.fastjson.util.AntiCollisionHashMap.this.removeMapping(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return com.alibaba.fastjson.util.AntiCollisionHashMap.this.size;
        }

        public /* synthetic */ EntrySet(com.alibaba.fastjson.util.AntiCollisionHashMap antiCollisionHashMap, com.alibaba.fastjson.util.AntiCollisionHashMap.AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public abstract class HashIterator<E> implements java.util.Iterator<E> {
        public com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> current;
        public int expectedModCount;
        public int index;
        public com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> next;

        public HashIterator() {
            com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> entry;
            this.expectedModCount = com.alibaba.fastjson.util.AntiCollisionHashMap.this.modCount;
            if (com.alibaba.fastjson.util.AntiCollisionHashMap.this.size > 0) {
                com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V>[] entryArr = com.alibaba.fastjson.util.AntiCollisionHashMap.this.table;
                do {
                    int i5 = this.index;
                    if (i5 >= entryArr.length) {
                        return;
                    }
                    this.index = i5 + 1;
                    entry = entryArr[i5];
                    this.next = entry;
                } while (entry == null);
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.next != null;
        }

        public final com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> nextEntry() {
            com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> entry;
            if (com.alibaba.fastjson.util.AntiCollisionHashMap.this.modCount != this.expectedModCount) {
                throw new java.util.ConcurrentModificationException();
            }
            com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> entry2 = this.next;
            if (entry2 == null) {
                throw new java.util.NoSuchElementException();
            }
            com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> entry3 = entry2.next;
            this.next = entry3;
            if (entry3 == null) {
                com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V>[] entryArr = com.alibaba.fastjson.util.AntiCollisionHashMap.this.table;
                do {
                    int i5 = this.index;
                    if (i5 >= entryArr.length) {
                        break;
                    }
                    this.index = i5 + 1;
                    entry = entryArr[i5];
                    this.next = entry;
                } while (entry == null);
            }
            this.current = entry2;
            return entry2;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.current == null) {
                throw new java.lang.IllegalStateException();
            }
            if (com.alibaba.fastjson.util.AntiCollisionHashMap.this.modCount != this.expectedModCount) {
                throw new java.util.ConcurrentModificationException();
            }
            K k5 = this.current.key;
            this.current = null;
            com.alibaba.fastjson.util.AntiCollisionHashMap.this.removeEntryForKey(k5);
            this.expectedModCount = com.alibaba.fastjson.util.AntiCollisionHashMap.this.modCount;
        }
    }

    public final class KeyIterator extends com.alibaba.fastjson.util.AntiCollisionHashMap<K, V>.HashIterator<K> {
        private KeyIterator() {
            super();
        }

        @Override // java.util.Iterator
        public K next() {
            return nextEntry().getKey();
        }

        public /* synthetic */ KeyIterator(com.alibaba.fastjson.util.AntiCollisionHashMap antiCollisionHashMap, com.alibaba.fastjson.util.AntiCollisionHashMap.AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public final class KeySet extends java.util.AbstractSet<K> {
        private KeySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            com.alibaba.fastjson.util.AntiCollisionHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(java.lang.Object obj) {
            return com.alibaba.fastjson.util.AntiCollisionHashMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public java.util.Iterator<K> iterator() {
            return com.alibaba.fastjson.util.AntiCollisionHashMap.this.newKeyIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(java.lang.Object obj) {
            return com.alibaba.fastjson.util.AntiCollisionHashMap.this.removeEntryForKey(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return com.alibaba.fastjson.util.AntiCollisionHashMap.this.size;
        }

        public /* synthetic */ KeySet(com.alibaba.fastjson.util.AntiCollisionHashMap antiCollisionHashMap, com.alibaba.fastjson.util.AntiCollisionHashMap.AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public final class ValueIterator extends com.alibaba.fastjson.util.AntiCollisionHashMap<K, V>.HashIterator<V> {
        private ValueIterator() {
            super();
        }

        @Override // java.util.Iterator
        public V next() {
            return nextEntry().value;
        }

        public /* synthetic */ ValueIterator(com.alibaba.fastjson.util.AntiCollisionHashMap antiCollisionHashMap, com.alibaba.fastjson.util.AntiCollisionHashMap.AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public final class Values extends java.util.AbstractCollection<V> {
        private Values() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            com.alibaba.fastjson.util.AntiCollisionHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(java.lang.Object obj) {
            return com.alibaba.fastjson.util.AntiCollisionHashMap.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public java.util.Iterator<V> iterator() {
            return com.alibaba.fastjson.util.AntiCollisionHashMap.this.newValueIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return com.alibaba.fastjson.util.AntiCollisionHashMap.this.size;
        }

        public /* synthetic */ Values(com.alibaba.fastjson.util.AntiCollisionHashMap antiCollisionHashMap, com.alibaba.fastjson.util.AntiCollisionHashMap.AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public AntiCollisionHashMap(int i5, float f5) {
        this.keySet = null;
        this.values = null;
        this.random = new java.util.Random().nextInt(99999);
        this.entrySet = null;
        if (i5 < 0) {
            throw new java.lang.IllegalArgumentException("Illegal initial capacity: " + i5);
        }
        i5 = i5 > 1073741824 ? 1073741824 : i5;
        if (f5 <= 0.0f || java.lang.Float.isNaN(f5)) {
            throw new java.lang.IllegalArgumentException("Illegal load factor: " + f5);
        }
        int i6 = 1;
        while (i6 < i5) {
            i6 <<= 1;
        }
        this.loadFactor = f5;
        this.threshold = (int) (i6 * f5);
        this.table = new com.alibaba.fastjson.util.AntiCollisionHashMap.Entry[i6];
        init();
    }

    private boolean containsNullValue() {
        for (com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> entry : this.table) {
            for (; entry != null; entry = entry.next) {
                if (entry.value == null) {
                    return true;
                }
            }
        }
        return false;
    }

    private java.util.Set<java.util.Map.Entry<K, V>> entrySet0() {
        java.util.Set<java.util.Map.Entry<K, V>> set = this.entrySet;
        if (set != null) {
            return set;
        }
        com.alibaba.fastjson.util.AntiCollisionHashMap.EntrySet entrySet = new com.alibaba.fastjson.util.AntiCollisionHashMap.EntrySet(this, null);
        this.entrySet = entrySet;
        return entrySet;
    }

    private V getForNullKey() {
        for (com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> entry = this.table[0]; entry != null; entry = entry.next) {
            if (entry.key == null) {
                return entry.value;
            }
        }
        return null;
    }

    public static int hash(int i5) {
        int i6 = i5 * i5;
        int i7 = i6 ^ ((i6 >>> 20) ^ (i6 >>> 12));
        return (i7 >>> 4) ^ ((i7 >>> 7) ^ i7);
    }

    private int hashString(java.lang.String str) {
        int iCharAt = this.random * SEED;
        for (int i5 = 0; i5 < str.length(); i5++) {
            iCharAt = (iCharAt * KEY) ^ str.charAt(i5);
        }
        return ((iCharAt >> 1) ^ iCharAt) & M_MASK;
    }

    public static int indexFor(int i5, int i6) {
        return i5 & (i6 - 1);
    }

    private void putAllForCreate(java.util.Map<? extends K, ? extends V> map) {
        for (java.util.Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            putForCreate(entry.getKey(), entry.getValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void putForCreate(K k5, V v4) {
        K k6;
        int iHash = k5 == 0 ? 0 : k5 instanceof java.lang.String ? hash(hashString((java.lang.String) k5)) : hash(k5.hashCode());
        int iIndexFor = indexFor(iHash, this.table.length);
        for (com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> entry = this.table[iIndexFor]; entry != null; entry = entry.next) {
            if (entry.hash == iHash && ((k6 = entry.key) == k5 || (k5 != 0 && k5.equals(k6)))) {
                entry.value = v4;
                return;
            }
        }
        createEntry(iHash, k5, v4, iIndexFor);
    }

    private V putForNullKey(V v4) {
        for (com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> entry = this.table[0]; entry != null; entry = entry.next) {
            if (entry.key == null) {
                V v5 = entry.value;
                entry.value = v4;
                return v5;
            }
        }
        this.modCount++;
        addEntry(0, null, v4, 0);
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(java.io.ObjectInputStream objectInputStream) throws java.lang.ClassNotFoundException, java.io.IOException {
        objectInputStream.defaultReadObject();
        this.table = new com.alibaba.fastjson.util.AntiCollisionHashMap.Entry[objectInputStream.readInt()];
        init();
        int i5 = objectInputStream.readInt();
        for (int i6 = 0; i6 < i5; i6++) {
            putForCreate(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    private void writeObject(java.io.ObjectOutputStream objectOutputStream) throws java.io.IOException {
        java.util.Iterator<java.util.Map.Entry<K, V>> it = this.size > 0 ? entrySet0().iterator() : null;
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this.table.length);
        objectOutputStream.writeInt(this.size);
        if (it != null) {
            while (it.hasNext()) {
                java.util.Map.Entry<K, V> next = it.next();
                objectOutputStream.writeObject(next.getKey());
                objectOutputStream.writeObject(next.getValue());
            }
        }
    }

    public void addEntry(int i5, K k5, V v4, int i6) {
        com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V>[] entryArr = this.table;
        entryArr[i6] = new com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<>(i5, k5, v4, entryArr[i6]);
        int i7 = this.size;
        this.size = i7 + 1;
        if (i7 >= this.threshold) {
            resize(this.table.length * 2);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.modCount++;
        com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V>[] entryArr = this.table;
        for (int i5 = 0; i5 < entryArr.length; i5++) {
            entryArr[i5] = null;
        }
        this.size = 0;
    }

    @Override // java.util.AbstractMap
    public java.lang.Object clone() {
        com.alibaba.fastjson.util.AntiCollisionHashMap antiCollisionHashMap;
        try {
            antiCollisionHashMap = (com.alibaba.fastjson.util.AntiCollisionHashMap) super.clone();
        } catch (java.lang.CloneNotSupportedException unused) {
            antiCollisionHashMap = null;
        }
        antiCollisionHashMap.table = new com.alibaba.fastjson.util.AntiCollisionHashMap.Entry[this.table.length];
        antiCollisionHashMap.entrySet = null;
        antiCollisionHashMap.modCount = 0;
        antiCollisionHashMap.size = 0;
        antiCollisionHashMap.init();
        antiCollisionHashMap.putAllForCreate(this);
        return antiCollisionHashMap;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(java.lang.Object obj) {
        return getEntry(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(java.lang.Object obj) {
        if (obj == null) {
            return containsNullValue();
        }
        for (com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> entry : this.table) {
            for (; entry != null; entry = entry.next) {
                if (obj.equals(entry.value)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void createEntry(int i5, K k5, V v4, int i6) {
        com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V>[] entryArr = this.table;
        entryArr[i6] = new com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<>(i5, k5, v4, entryArr[i6]);
        this.size++;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public java.util.Set<java.util.Map.Entry<K, V>> entrySet() {
        return entrySet0();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(java.lang.Object obj) {
        K k5;
        if (obj == null) {
            return getForNullKey();
        }
        int iHash = obj instanceof java.lang.String ? hash(hashString((java.lang.String) obj)) : hash(obj.hashCode());
        com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V>[] entryArr = this.table;
        for (com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> entry = entryArr[indexFor(iHash, entryArr.length)]; entry != null; entry = entry.next) {
            if (entry.hash == iHash && ((k5 = entry.key) == obj || obj.equals(k5))) {
                return entry.value;
            }
        }
        return null;
    }

    public final com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> getEntry(java.lang.Object obj) {
        K k5;
        int iHash = obj == null ? 0 : obj instanceof java.lang.String ? hash(hashString((java.lang.String) obj)) : hash(obj.hashCode());
        for (com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> entry = r1[indexFor(iHash, this.table.length)]; entry != null; entry = entry.next) {
            if (entry.hash == iHash && ((k5 = entry.key) == obj || (obj != null && obj.equals(k5)))) {
                return entry;
            }
        }
        return null;
    }

    public void init() {
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return this.size == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public java.util.Set<K> keySet() {
        java.util.Set<K> set = this.keySet;
        if (set != null) {
            return set;
        }
        com.alibaba.fastjson.util.AntiCollisionHashMap.KeySet keySet = new com.alibaba.fastjson.util.AntiCollisionHashMap.KeySet(this, null);
        this.keySet = keySet;
        return keySet;
    }

    public java.util.Iterator<java.util.Map.Entry<K, V>> newEntryIterator() {
        return new com.alibaba.fastjson.util.AntiCollisionHashMap.EntryIterator(this, null);
    }

    public java.util.Iterator<K> newKeyIterator() {
        return new com.alibaba.fastjson.util.AntiCollisionHashMap.KeyIterator(this, null);
    }

    public java.util.Iterator<V> newValueIterator() {
        return new com.alibaba.fastjson.util.AntiCollisionHashMap.ValueIterator(this, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k5, V v4) {
        K k6;
        if (k5 == 0) {
            return putForNullKey(v4);
        }
        int iHash = k5 instanceof java.lang.String ? hash(hashString((java.lang.String) k5)) : hash(k5.hashCode());
        int iIndexFor = indexFor(iHash, this.table.length);
        for (com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> entry = this.table[iIndexFor]; entry != null; entry = entry.next) {
            if (entry.hash == iHash && ((k6 = entry.key) == k5 || k5.equals(k6))) {
                V v5 = entry.value;
                entry.value = v4;
                return v5;
            }
        }
        this.modCount++;
        addEntry(iHash, k5, v4, iIndexFor);
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(java.util.Map<? extends K, ? extends V> map) {
        int size = map.size();
        if (size == 0) {
            return;
        }
        if (size > this.threshold) {
            int i5 = (int) ((size / this.loadFactor) + 1.0f);
            if (i5 > 1073741824) {
                i5 = 1073741824;
            }
            int length = this.table.length;
            while (length < i5) {
                length <<= 1;
            }
            if (length > this.table.length) {
                resize(length);
            }
        }
        for (java.util.Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(java.lang.Object obj) {
        com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> entryRemoveEntryForKey = removeEntryForKey(obj);
        if (entryRemoveEntryForKey == null) {
            return null;
        }
        return entryRemoveEntryForKey.value;
    }

    public final com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> removeEntryForKey(java.lang.Object obj) {
        int iHash;
        K k5;
        if (obj == null) {
            iHash = 0;
        } else {
            iHash = obj instanceof java.lang.String ? hash(hashString((java.lang.String) obj)) : hash(obj.hashCode());
        }
        int iIndexFor = indexFor(iHash, this.table.length);
        com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> entry = this.table[iIndexFor];
        com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> entry2 = entry;
        while (entry != null) {
            com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> entry3 = entry.next;
            if (entry.hash == iHash && ((k5 = entry.key) == obj || (obj != null && obj.equals(k5)))) {
                this.modCount++;
                this.size--;
                if (entry2 == entry) {
                    this.table[iIndexFor] = entry3;
                } else {
                    entry2.next = entry3;
                }
                return entry;
            }
            entry2 = entry;
            entry = entry3;
        }
        return entry;
    }

    public final com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> removeMapping(java.lang.Object obj) {
        int iHash;
        if (!(obj instanceof java.util.Map.Entry)) {
            return null;
        }
        java.util.Map.Entry entry = (java.util.Map.Entry) obj;
        java.lang.Object key = entry.getKey();
        if (key == null) {
            iHash = 0;
        } else {
            iHash = key instanceof java.lang.String ? hash(hashString((java.lang.String) key)) : hash(key.hashCode());
        }
        int iIndexFor = indexFor(iHash, this.table.length);
        com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> entry2 = this.table[iIndexFor];
        com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> entry3 = entry2;
        while (entry2 != null) {
            com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> entry4 = entry2.next;
            if (entry2.hash == iHash && entry2.equals(entry)) {
                this.modCount++;
                this.size--;
                if (entry3 == entry2) {
                    this.table[iIndexFor] = entry4;
                } else {
                    entry3.next = entry4;
                }
                return entry2;
            }
            entry3 = entry2;
            entry2 = entry4;
        }
        return entry2;
    }

    public void resize(int i5) {
        if (this.table.length == 1073741824) {
            this.threshold = Integer.MAX_VALUE;
            return;
        }
        com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V>[] entryArr = new com.alibaba.fastjson.util.AntiCollisionHashMap.Entry[i5];
        transfer(entryArr);
        this.table = entryArr;
        this.threshold = (int) (i5 * this.loadFactor);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.size;
    }

    public void transfer(com.alibaba.fastjson.util.AntiCollisionHashMap.Entry[] entryArr) {
        com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V>[] entryArr2 = this.table;
        int length = entryArr.length;
        for (int i5 = 0; i5 < entryArr2.length; i5++) {
            com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> entry = entryArr2[i5];
            if (entry != null) {
                entryArr2[i5] = null;
                while (true) {
                    com.alibaba.fastjson.util.AntiCollisionHashMap.Entry<K, V> entry2 = entry.next;
                    int iIndexFor = indexFor(entry.hash, length);
                    entry.next = entryArr[iIndexFor];
                    entryArr[iIndexFor] = entry;
                    if (entry2 == null) {
                        break;
                    } else {
                        entry = entry2;
                    }
                }
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public java.util.Collection<V> values() {
        java.util.Collection<V> collection = this.values;
        if (collection != null) {
            return collection;
        }
        com.alibaba.fastjson.util.AntiCollisionHashMap.Values values = new com.alibaba.fastjson.util.AntiCollisionHashMap.Values(this, null);
        this.values = values;
        return values;
    }

    public AntiCollisionHashMap(int i5) {
        this(i5, 0.75f);
    }

    public AntiCollisionHashMap() {
        this.keySet = null;
        this.values = null;
        this.random = new java.util.Random().nextInt(99999);
        this.entrySet = null;
        this.loadFactor = 0.75f;
        this.threshold = 12;
        this.table = new com.alibaba.fastjson.util.AntiCollisionHashMap.Entry[16];
        init();
    }

    public AntiCollisionHashMap(java.util.Map<? extends K, ? extends V> map) {
        this(java.lang.Math.max(((int) (map.size() / 0.75f)) + 1, 16), 0.75f);
        putAllForCreate(map);
    }
}
