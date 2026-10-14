package com.alibaba.fastjson.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ModuleUtil {
    private static boolean hasJavaSql;

    static {
        try {
            java.lang.Class.forName("java.sql.Time");
            hasJavaSql = true;
        } catch (java.lang.Throwable unused) {
            hasJavaSql = false;
        }
    }

    public static <T> T callWhenHasJavaSql(java.util.concurrent.Callable<T> callable) {
        if (!hasJavaSql) {
            return null;
        }
        try {
            return callable.call();
        } catch (java.lang.Exception e5) {
            throw new java.lang.RuntimeException(e5);
        }
    }

    public static <ARG, T> T callWhenHasJavaSql(com.alibaba.fastjson.util.Function<ARG, T> function, ARG arg) {
        if (hasJavaSql) {
            return function.apply(arg);
        }
        return null;
    }

    public static <T, U, R> R callWhenHasJavaSql(com.alibaba.fastjson.util.BiFunction<T, U, R> biFunction, T t5, U u4) {
        if (hasJavaSql) {
            return biFunction.apply(t5, u4);
        }
        return null;
    }
}
