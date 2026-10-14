package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f3920a = 31;

    public static void a(int i5) {
        f3920a = i5;
    }

    public static boolean b(int i5) {
        return (f3920a & i5) == i5;
    }
}
