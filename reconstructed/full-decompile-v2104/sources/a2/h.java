package a2;

/* JADX INFO: compiled from: MapProxy.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h implements java.util.Map<java.lang.Object, java.lang.Object>, s1.b, java.lang.reflect.InvocationHandler, java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.Map f81a;

    public h(java.util.Map<?, ?> map) {
        this.f81a = map;
    }

    public static a2.h c(java.util.Map<?, ?> map) {
        return map instanceof a2.h ? (a2.h) map : new a2.h(map);
    }

    @Override // java.util.Map
    public void clear() {
        this.f81a.clear();
    }

    @Override // java.util.Map
    public boolean containsKey(java.lang.Object obj) {
        return this.f81a.containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(java.lang.Object obj) {
        return this.f81a.containsValue(obj);
    }

    @Override // s1.a
    public java.lang.Object e(java.lang.Object obj, java.lang.Object obj2) {
        java.lang.Object obj3 = this.f81a.get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.Map
    public java.util.Set<java.util.Map.Entry<java.lang.Object, java.lang.Object>> entrySet() {
        return this.f81a.entrySet();
    }

    @Override // java.util.Map
    public java.lang.Object get(java.lang.Object obj) {
        return this.f81a.get(obj);
    }

    @Override // java.lang.reflect.InvocationHandler
    public java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) {
        java.lang.Class<?>[] parameterTypes = method.getParameterTypes();
        if (e2.c.u(parameterTypes)) {
            java.lang.Class<?> returnType = method.getReturnType();
            if (java.lang.Void.TYPE != returnType) {
                java.lang.String name = method.getName();
                java.lang.String strY = null;
                if (name.startsWith("get")) {
                    strY = b2.c.y(name, 3);
                } else if (e2.d.a(returnType) && name.startsWith("is")) {
                    strY = b2.c.y(name, 2);
                } else {
                    if ("hashCode".equals(name)) {
                        return java.lang.Integer.valueOf(hashCode());
                    }
                    if ("toString".equals(name)) {
                        return toString();
                    }
                }
                if (b2.c.s(strY)) {
                    if (!containsKey(strY)) {
                        strY = b2.c.V(strY);
                    }
                    return n1.c.c(method.getGenericReturnType(), get(strY));
                }
            }
        } else if (1 == parameterTypes.length) {
            java.lang.String name2 = method.getName();
            if (name2.startsWith("set")) {
                java.lang.String strY2 = b2.c.y(name2, 3);
                if (b2.c.s(strY2)) {
                    put(strY2, objArr[0]);
                    if (method.getReturnType().isInstance(obj)) {
                        return obj;
                    }
                }
            } else if ("equals".equals(name2)) {
                return java.lang.Boolean.valueOf(equals(objArr[0]));
            }
        }
        throw new java.lang.UnsupportedOperationException(method.toGenericString());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.f81a.isEmpty();
    }

    @Override // java.util.Map
    public java.util.Set<java.lang.Object> keySet() {
        return this.f81a.keySet();
    }

    @Override // java.util.Map
    public java.lang.Object put(java.lang.Object obj, java.lang.Object obj2) {
        return this.f81a.put(obj, obj2);
    }

    @Override // java.util.Map
    public void putAll(java.util.Map<? extends java.lang.Object, ? extends java.lang.Object> map) {
        this.f81a.putAll(map);
    }

    public <T> T q(java.lang.Class<T> cls) {
        return (T) java.lang.reflect.Proxy.newProxyInstance(e2.j.c(), new java.lang.Class[]{cls}, this);
    }

    @Override // java.util.Map
    public java.lang.Object remove(java.lang.Object obj) {
        return this.f81a.remove(obj);
    }

    @Override // java.util.Map
    public int size() {
        return this.f81a.size();
    }

    @Override // java.util.Map
    public java.util.Collection<java.lang.Object> values() {
        return this.f81a.values();
    }
}
