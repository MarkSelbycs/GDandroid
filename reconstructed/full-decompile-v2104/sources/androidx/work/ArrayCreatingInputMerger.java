package androidx.work;

/* JADX INFO: compiled from: ArrayCreatingInputMerger.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class ArrayCreatingInputMerger extends q0.j {
    @Override // q0.j
    public androidx.work.b a(java.util.List<androidx.work.b> list) throws java.lang.Throwable {
        m3.k.e(list, "inputs");
        androidx.work.b.a aVar = new androidx.work.b.a();
        java.util.HashMap map = new java.util.HashMap();
        java.util.Iterator<androidx.work.b> it = list.iterator();
        while (it.hasNext()) {
            java.util.Map<java.lang.String, java.lang.Object> mapN = it.next().n();
            m3.k.d(mapN, "input.keyValueMap");
            for (java.util.Map.Entry<java.lang.String, java.lang.Object> entry : mapN.entrySet()) {
                java.lang.String key = entry.getKey();
                java.lang.Object value = entry.getValue();
                java.lang.Class<?> cls = value != null ? value.getClass() : java.lang.String.class;
                java.lang.Object obj = map.get(key);
                m3.k.d(key, "key");
                if (obj != null) {
                    java.lang.Class<?> cls2 = obj.getClass();
                    if (m3.k.a(cls2, cls)) {
                        m3.k.d(value, "value");
                        value = c(obj, value);
                    } else {
                        if (!m3.k.a(cls2.getComponentType(), cls)) {
                            throw new java.lang.IllegalArgumentException();
                        }
                        value = b(obj, value, cls);
                    }
                } else if (!cls.isArray()) {
                    value = d(value, cls);
                }
                m3.k.d(value, "if (existingValue == nul…      }\n                }");
                map.put(key, value);
            }
        }
        aVar.c(map);
        androidx.work.b bVarA = aVar.a();
        m3.k.d(bVarA, "output.build()");
        return bVarA;
    }

    public final java.lang.Object b(java.lang.Object obj, java.lang.Object obj2, java.lang.Class<?> cls) {
        int length = java.lang.reflect.Array.getLength(obj);
        java.lang.Object objNewInstance = java.lang.reflect.Array.newInstance(cls, length + 1);
        java.lang.System.arraycopy(obj, 0, objNewInstance, 0, length);
        java.lang.reflect.Array.set(objNewInstance, length, obj2);
        m3.k.d(objNewInstance, "newArray");
        return objNewInstance;
    }

    public final java.lang.Object c(java.lang.Object obj, java.lang.Object obj2) {
        int length = java.lang.reflect.Array.getLength(obj);
        int length2 = java.lang.reflect.Array.getLength(obj2);
        java.lang.Class<?> componentType = obj.getClass().getComponentType();
        m3.k.b(componentType);
        java.lang.Object objNewInstance = java.lang.reflect.Array.newInstance(componentType, length + length2);
        java.lang.System.arraycopy(obj, 0, objNewInstance, 0, length);
        java.lang.System.arraycopy(obj2, 0, objNewInstance, length, length2);
        m3.k.d(objNewInstance, "newArray");
        return objNewInstance;
    }

    public final java.lang.Object d(java.lang.Object obj, java.lang.Class<?> cls) {
        java.lang.Object objNewInstance = java.lang.reflect.Array.newInstance(cls, 1);
        java.lang.reflect.Array.set(objNewInstance, 0, obj);
        m3.k.d(objNewInstance, "newArray");
        return objNewInstance;
    }
}
