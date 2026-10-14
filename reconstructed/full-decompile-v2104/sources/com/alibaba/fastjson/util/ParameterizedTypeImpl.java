package com.alibaba.fastjson.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ParameterizedTypeImpl implements java.lang.reflect.ParameterizedType {
    private final java.lang.reflect.Type[] actualTypeArguments;
    private final java.lang.reflect.Type ownerType;
    private final java.lang.reflect.Type rawType;

    public ParameterizedTypeImpl(java.lang.reflect.Type[] typeArr, java.lang.reflect.Type type, java.lang.reflect.Type type2) {
        this.actualTypeArguments = typeArr;
        this.ownerType = type;
        this.rawType = type2;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com.alibaba.fastjson.util.ParameterizedTypeImpl parameterizedTypeImpl = (com.alibaba.fastjson.util.ParameterizedTypeImpl) obj;
        if (!java.util.Arrays.equals(this.actualTypeArguments, parameterizedTypeImpl.actualTypeArguments)) {
            return false;
        }
        java.lang.reflect.Type type = this.ownerType;
        if (type == null ? parameterizedTypeImpl.ownerType != null : !type.equals(parameterizedTypeImpl.ownerType)) {
            return false;
        }
        java.lang.reflect.Type type2 = this.rawType;
        java.lang.reflect.Type type3 = parameterizedTypeImpl.rawType;
        if (type2 != null) {
            return type2.equals(type3);
        }
        return type3 == null;
    }

    @Override // java.lang.reflect.ParameterizedType
    public java.lang.reflect.Type[] getActualTypeArguments() {
        return this.actualTypeArguments;
    }

    @Override // java.lang.reflect.ParameterizedType
    public java.lang.reflect.Type getOwnerType() {
        return this.ownerType;
    }

    @Override // java.lang.reflect.ParameterizedType
    public java.lang.reflect.Type getRawType() {
        return this.rawType;
    }

    public int hashCode() {
        java.lang.reflect.Type[] typeArr = this.actualTypeArguments;
        int iHashCode = (typeArr != null ? java.util.Arrays.hashCode(typeArr) : 0) * 31;
        java.lang.reflect.Type type = this.ownerType;
        int iHashCode2 = (iHashCode + (type != null ? type.hashCode() : 0)) * 31;
        java.lang.reflect.Type type2 = this.rawType;
        return iHashCode2 + (type2 != null ? type2.hashCode() : 0);
    }
}
