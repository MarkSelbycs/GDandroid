package com.alibaba.fastjson.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class GenericArrayTypeImpl implements java.lang.reflect.GenericArrayType {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    private final java.lang.reflect.Type genericComponentType;

    public GenericArrayTypeImpl(java.lang.reflect.Type type) {
        this.genericComponentType = type;
    }

    public boolean equals(java.lang.Object obj) {
        if (obj instanceof java.lang.reflect.GenericArrayType) {
            return this.genericComponentType.equals(((java.lang.reflect.GenericArrayType) obj).getGenericComponentType());
        }
        return false;
    }

    @Override // java.lang.reflect.GenericArrayType
    public java.lang.reflect.Type getGenericComponentType() {
        return this.genericComponentType;
    }

    public int hashCode() {
        return this.genericComponentType.hashCode();
    }

    public java.lang.String toString() {
        java.lang.reflect.Type genericComponentType = getGenericComponentType();
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        if (genericComponentType instanceof java.lang.Class) {
            sb.append(((java.lang.Class) genericComponentType).getName());
        } else {
            sb.append(genericComponentType.toString());
        }
        sb.append("[]");
        return sb.toString();
    }
}
