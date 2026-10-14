package org.chromium.support_lib_boundary.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class BoundaryInterfaceReflectionUtil {
    public static final /* synthetic */ boolean $assertionsDisabled = false;

    public static class InvocationHandlerWithDelegateGetter implements java.lang.reflect.InvocationHandler {
        private final java.lang.Object mDelegate;

        public InvocationHandlerWithDelegateGetter(java.lang.Object obj) {
            this.mDelegate = obj;
        }

        public java.lang.Object getDelegate() {
            return this.mDelegate;
        }

        @Override // java.lang.reflect.InvocationHandler
        public java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) throws java.lang.Throwable {
            try {
                return org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil.dupeMethod(method, this.mDelegate.getClass().getClassLoader()).invoke(this.mDelegate, objArr);
            } catch (java.lang.reflect.InvocationTargetException e5) {
                throw e5.getTargetException();
            } catch (java.lang.ReflectiveOperationException e6) {
                throw new java.lang.RuntimeException("Reflection failed for method " + method, e6);
            }
        }
    }

    public static <T> T castToSuppLibClass(java.lang.Class<T> cls, java.lang.reflect.InvocationHandler invocationHandler) {
        if (invocationHandler == null) {
            return null;
        }
        return cls.cast(java.lang.reflect.Proxy.newProxyInstance(org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil.class.getClassLoader(), new java.lang.Class[]{cls}, invocationHandler));
    }

    public static boolean containsFeature(java.util.Collection<java.lang.String> collection, java.lang.String str) {
        if (!collection.contains(str)) {
            if (isDebuggable()) {
                if (collection.contains(str + org.chromium.support_lib_boundary.util.Features.DEV_SUFFIX)) {
                }
            }
            return false;
        }
        return true;
    }

    public static java.lang.reflect.InvocationHandler createInvocationHandlerFor(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        return new org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil.InvocationHandlerWithDelegateGetter(obj);
    }

    public static java.lang.reflect.InvocationHandler[] createInvocationHandlersForArray(java.lang.Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        int length = objArr.length;
        java.lang.reflect.InvocationHandler[] invocationHandlerArr = new java.lang.reflect.InvocationHandler[length];
        for (int i5 = 0; i5 < length; i5++) {
            invocationHandlerArr[i5] = createInvocationHandlerFor(objArr[i5]);
        }
        return invocationHandlerArr;
    }

    public static java.lang.reflect.Method dupeMethod(java.lang.reflect.Method method, java.lang.ClassLoader classLoader) throws java.lang.NoSuchMethodException, java.lang.ClassNotFoundException {
        return java.lang.Class.forName(method.getDeclaringClass().getName(), true, classLoader).getDeclaredMethod(method.getName(), method.getParameterTypes());
    }

    public static java.lang.Object getDelegateFromInvocationHandler(java.lang.reflect.InvocationHandler invocationHandler) {
        if (invocationHandler == null) {
            return null;
        }
        return ((org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil.InvocationHandlerWithDelegateGetter) invocationHandler).getDelegate();
    }

    public static boolean instanceOfInOwnClassLoader(java.lang.Object obj, java.lang.String str) {
        try {
            return java.lang.Class.forName(str, false, obj.getClass().getClassLoader()).isInstance(obj);
        } catch (java.lang.ClassNotFoundException unused) {
            return false;
        }
    }

    private static boolean isDebuggable() {
        java.lang.String str = android.os.Build.TYPE;
        return "eng".equals(str) || "userdebug".equals(str);
    }

    public static boolean containsFeature(java.lang.String[] strArr, java.lang.String str) {
        return containsFeature(java.util.Arrays.asList(strArr), str);
    }
}
