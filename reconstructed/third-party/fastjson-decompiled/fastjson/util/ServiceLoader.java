package com.alibaba.fastjson.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ServiceLoader {
    private static final java.lang.String PREFIX = "META-INF/services/";
    private static final java.util.Set<java.lang.String> loadedUrls = new java.util.HashSet();

    public static <T> java.util.Set<T> load(java.lang.Class<T> cls, java.lang.ClassLoader classLoader) {
        if (classLoader == null) {
            return java.util.Collections.emptySet();
        }
        java.util.HashSet hashSet = new java.util.HashSet();
        java.lang.String str = PREFIX + cls.getName();
        java.util.HashSet hashSet2 = new java.util.HashSet();
        try {
            java.util.Enumeration<java.net.URL> resources = classLoader.getResources(str);
            while (resources.hasMoreElements()) {
                java.net.URL urlNextElement = resources.nextElement();
                java.util.Set<java.lang.String> set = loadedUrls;
                if (!set.contains(urlNextElement.toString())) {
                    load(urlNextElement, hashSet2);
                    set.add(urlNextElement.toString());
                }
            }
        } catch (java.lang.Throwable unused) {
        }
        java.util.Iterator it = hashSet2.iterator();
        while (it.hasNext()) {
            try {
                hashSet.add(classLoader.loadClass((java.lang.String) it.next()).newInstance());
            } catch (java.lang.Exception unused2) {
            }
        }
        return hashSet;
    }

    public static void load(java.net.URL url, java.util.Set<java.lang.String> set) throws java.lang.Throwable {
        java.io.InputStream inputStreamOpenStream;
        java.io.BufferedReader bufferedReader = null;
        try {
            inputStreamOpenStream = url.openStream();
            try {
                java.io.BufferedReader bufferedReader2 = new java.io.BufferedReader(new java.io.InputStreamReader(inputStreamOpenStream, "utf-8"));
                while (true) {
                    try {
                        java.lang.String line = bufferedReader2.readLine();
                        if (line == null) {
                            com.alibaba.fastjson.util.IOUtils.close(bufferedReader2);
                            com.alibaba.fastjson.util.IOUtils.close(inputStreamOpenStream);
                            return;
                        }
                        int iIndexOf = line.indexOf(35);
                        if (iIndexOf >= 0) {
                            line = line.substring(0, iIndexOf);
                        }
                        java.lang.String strTrim = line.trim();
                        if (strTrim.length() != 0) {
                            set.add(strTrim);
                        }
                    } catch (java.lang.Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        com.alibaba.fastjson.util.IOUtils.close(bufferedReader);
                        com.alibaba.fastjson.util.IOUtils.close(inputStreamOpenStream);
                        throw th;
                    }
                }
            } catch (java.lang.Throwable th2) {
                th = th2;
            }
        } catch (java.lang.Throwable th3) {
            th = th3;
            inputStreamOpenStream = null;
        }
    }
}
