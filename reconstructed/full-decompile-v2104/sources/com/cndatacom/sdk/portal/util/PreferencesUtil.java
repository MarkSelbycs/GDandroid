package com.cndatacom.sdk.portal.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class PreferencesUtil {
    private static java.lang.String PREFERENCE_NAME = "portal-config";

    private PreferencesUtil() {
        throw new java.lang.AssertionError();
    }

    public static boolean getBoolean(android.content.Context context, java.lang.String str) {
        return getBoolean(context, str, false);
    }

    public static float getFloat(android.content.Context context, java.lang.String str) {
        return getFloat(context, str, -1.0f);
    }

    public static int getInt(android.content.Context context, java.lang.String str) {
        return getInt(context, str, -1);
    }

    public static long getLong(android.content.Context context, java.lang.String str) {
        return getLong(context, str, -1L);
    }

    public static java.lang.String getString(android.content.Context context, java.lang.String str) {
        return getString(context, str, null);
    }

    public static boolean putBoolean(android.content.Context context, java.lang.String str, boolean z4) {
        android.content.SharedPreferences.Editor editorEdit = context.getSharedPreferences(PREFERENCE_NAME, 0).edit();
        editorEdit.putBoolean(str, z4);
        return editorEdit.commit();
    }

    public static boolean putFloat(android.content.Context context, java.lang.String str, float f5) {
        android.content.SharedPreferences.Editor editorEdit = context.getSharedPreferences(PREFERENCE_NAME, 0).edit();
        editorEdit.putFloat(str, f5);
        return editorEdit.commit();
    }

    public static boolean putInt(android.content.Context context, java.lang.String str, int i5) {
        android.content.SharedPreferences.Editor editorEdit = context.getSharedPreferences(PREFERENCE_NAME, 0).edit();
        editorEdit.putInt(str, i5);
        return editorEdit.commit();
    }

    public static boolean putLong(android.content.Context context, java.lang.String str, long j5) {
        android.content.SharedPreferences.Editor editorEdit = context.getSharedPreferences(PREFERENCE_NAME, 0).edit();
        editorEdit.putLong(str, j5);
        return editorEdit.commit();
    }

    public static boolean putString(android.content.Context context, java.lang.String str, java.lang.String str2) {
        android.content.SharedPreferences.Editor editorEdit = context.getSharedPreferences(PREFERENCE_NAME, 0).edit();
        editorEdit.putString(str, str2);
        return editorEdit.commit();
    }

    public static boolean remove(android.content.Context context, java.lang.String str) {
        android.content.SharedPreferences.Editor editorEdit = context.getSharedPreferences(PREFERENCE_NAME, 0).edit();
        editorEdit.remove(str);
        return editorEdit.commit();
    }

    public static boolean getBoolean(android.content.Context context, java.lang.String str, boolean z4) {
        return context.getSharedPreferences(PREFERENCE_NAME, 0).getBoolean(str, z4);
    }

    public static float getFloat(android.content.Context context, java.lang.String str, float f5) {
        return context.getSharedPreferences(PREFERENCE_NAME, 0).getFloat(str, f5);
    }

    public static int getInt(android.content.Context context, java.lang.String str, int i5) {
        return context.getSharedPreferences(PREFERENCE_NAME, 0).getInt(str, i5);
    }

    public static long getLong(android.content.Context context, java.lang.String str, long j5) {
        return context.getSharedPreferences(PREFERENCE_NAME, 0).getLong(str, j5);
    }

    public static java.lang.String getString(android.content.Context context, java.lang.String str, java.lang.String str2) {
        return context.getSharedPreferences(PREFERENCE_NAME, 0).getString(str, str2);
    }
}
