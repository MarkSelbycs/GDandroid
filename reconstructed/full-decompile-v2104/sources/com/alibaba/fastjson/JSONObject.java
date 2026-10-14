package com.alibaba.fastjson;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class JSONObject extends com.alibaba.fastjson.JSON implements java.util.Map<java.lang.String, java.lang.Object>, java.lang.Cloneable, java.io.Serializable, java.lang.reflect.InvocationHandler {
    private static final int DEFAULT_INITIAL_CAPACITY = 16;
    private static final long serialVersionUID = 1;
    private final java.util.Map<java.lang.String, java.lang.Object> map;

    public static class SecureObjectInputStream extends java.io.ObjectInputStream {
        public static java.lang.reflect.Field[] fields;
        public static volatile boolean fields_error;

        public SecureObjectInputStream(java.io.ObjectInputStream objectInputStream) throws java.io.IOException {
            super(objectInputStream);
            int i5 = 0;
            while (true) {
                try {
                    java.lang.reflect.Field[] fieldArr = fields;
                    if (i5 >= fieldArr.length) {
                        return;
                    }
                    java.lang.reflect.Field field = fieldArr[i5];
                    field.set(this, field.get(objectInputStream));
                    i5++;
                } catch (java.lang.IllegalAccessException unused) {
                    fields_error = true;
                    return;
                }
            }
        }

        public static void ensureFields() {
            if (fields != null || fields_error) {
                return;
            }
            try {
                java.lang.reflect.Field[] declaredFields = java.io.ObjectInputStream.class.getDeclaredFields();
                java.lang.String[] strArr = {"bin", "passHandle", "handles", "curContext"};
                java.lang.reflect.Field[] fieldArr = new java.lang.reflect.Field[4];
                for (int i5 = 0; i5 < 4; i5++) {
                    java.lang.reflect.Field field = com.alibaba.fastjson.util.TypeUtils.getField(java.io.ObjectInputStream.class, strArr[i5], declaredFields);
                    field.setAccessible(true);
                    fieldArr[i5] = field;
                }
                fields = fieldArr;
            } catch (java.lang.Throwable unused) {
                fields_error = true;
            }
        }

        @Override // java.io.ObjectInputStream
        public void readStreamHeader() throws java.io.IOException {
        }

        @Override // java.io.ObjectInputStream
        public java.lang.Class<?> resolveClass(java.io.ObjectStreamClass objectStreamClass) throws java.io.IOException, java.lang.ClassNotFoundException {
            java.lang.String name = objectStreamClass.getName();
            if (name.length() > 2) {
                int iLastIndexOf = name.lastIndexOf(91);
                if (iLastIndexOf != -1) {
                    name = name.substring(iLastIndexOf + 1);
                }
                if (name.length() > 2 && name.charAt(0) == 'L' && name.charAt(name.length() - 1) == ';') {
                    name = name.substring(1, name.length() - 1);
                }
                if (com.alibaba.fastjson.util.TypeUtils.getClassFromMapping(name) == null) {
                    com.alibaba.fastjson.parser.ParserConfig.global.checkAutoType(name, null, com.alibaba.fastjson.parser.Feature.SupportAutoType.mask);
                }
            }
            return super.resolveClass(objectStreamClass);
        }

        @Override // java.io.ObjectInputStream
        public java.lang.Class<?> resolveProxyClass(java.lang.String[] strArr) throws java.io.IOException, java.lang.ClassNotFoundException {
            for (java.lang.String str : strArr) {
                if (com.alibaba.fastjson.util.TypeUtils.getClassFromMapping(str) == null) {
                    com.alibaba.fastjson.parser.ParserConfig.global.checkAutoType(str, null);
                }
            }
            return super.resolveProxyClass(strArr);
        }
    }

    public JSONObject() {
        this(16, false);
    }

    private void readObject(java.io.ObjectInputStream objectInputStream) throws java.lang.ClassNotFoundException, java.io.IOException {
        com.alibaba.fastjson.JSONObject.SecureObjectInputStream.ensureFields();
        if (com.alibaba.fastjson.JSONObject.SecureObjectInputStream.fields != null && !com.alibaba.fastjson.JSONObject.SecureObjectInputStream.fields_error) {
            try {
                new com.alibaba.fastjson.JSONObject.SecureObjectInputStream(objectInputStream).defaultReadObject();
                return;
            } catch (java.io.NotActiveException unused) {
            }
        }
        objectInputStream.defaultReadObject();
        for (java.util.Map.Entry<java.lang.String, java.lang.Object> entry : this.map.entrySet()) {
            java.lang.String key = entry.getKey();
            if (key != null) {
                com.alibaba.fastjson.parser.ParserConfig.global.checkAutoType(key.getClass());
            }
            java.lang.Object value = entry.getValue();
            if (value != null) {
                com.alibaba.fastjson.parser.ParserConfig.global.checkAutoType(value.getClass());
            }
        }
    }

    @Override // java.util.Map
    public void clear() {
        this.map.clear();
    }

    @Override // java.util.Map
    public boolean containsKey(java.lang.Object obj) {
        boolean zContainsKey = this.map.containsKey(obj);
        if (zContainsKey) {
            return zContainsKey;
        }
        return ((obj instanceof java.lang.Number) || (obj instanceof java.lang.Character) || (obj instanceof java.lang.Boolean) || (obj instanceof java.util.UUID)) ? this.map.containsKey(obj.toString()) : zContainsKey;
    }

    @Override // java.util.Map
    public boolean containsValue(java.lang.Object obj) {
        return this.map.containsValue(obj);
    }

    @Override // java.util.Map
    public java.util.Set<java.util.Map.Entry<java.lang.String, java.lang.Object>> entrySet() {
        return this.map.entrySet();
    }

    @Override // java.util.Map
    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        return obj instanceof com.alibaba.fastjson.JSONObject ? this.map.equals(((com.alibaba.fastjson.JSONObject) obj).map) : this.map.equals(obj);
    }

    public com.alibaba.fastjson.JSONObject fluentClear() {
        this.map.clear();
        return this;
    }

    public com.alibaba.fastjson.JSONObject fluentPut(java.lang.String str, java.lang.Object obj) {
        this.map.put(str, obj);
        return this;
    }

    public com.alibaba.fastjson.JSONObject fluentPutAll(java.util.Map<? extends java.lang.String, ?> map) {
        this.map.putAll(map);
        return this;
    }

    public com.alibaba.fastjson.JSONObject fluentRemove(java.lang.Object obj) {
        this.map.remove(obj);
        return this;
    }

    @Override // java.util.Map
    public java.lang.Object get(java.lang.Object obj) {
        java.lang.Object obj2 = this.map.get(obj);
        if (obj2 == null) {
            return ((obj instanceof java.lang.Number) || (obj instanceof java.lang.Character) || (obj instanceof java.lang.Boolean) || (obj instanceof java.util.UUID)) ? this.map.get(obj.toString()) : obj2;
        }
        return obj2;
    }

    public java.math.BigDecimal getBigDecimal(java.lang.String str) {
        return com.alibaba.fastjson.util.TypeUtils.castToBigDecimal(get(str));
    }

    public java.math.BigInteger getBigInteger(java.lang.String str) {
        return com.alibaba.fastjson.util.TypeUtils.castToBigInteger(get(str));
    }

    public java.lang.Boolean getBoolean(java.lang.String str) {
        java.lang.Object obj = get(str);
        if (obj == null) {
            return null;
        }
        return com.alibaba.fastjson.util.TypeUtils.castToBoolean(obj);
    }

    public boolean getBooleanValue(java.lang.String str) {
        java.lang.Boolean boolCastToBoolean = com.alibaba.fastjson.util.TypeUtils.castToBoolean(get(str));
        if (boolCastToBoolean == null) {
            return false;
        }
        return boolCastToBoolean.booleanValue();
    }

    public java.lang.Byte getByte(java.lang.String str) {
        return com.alibaba.fastjson.util.TypeUtils.castToByte(get(str));
    }

    public byte getByteValue(java.lang.String str) {
        java.lang.Byte bCastToByte = com.alibaba.fastjson.util.TypeUtils.castToByte(get(str));
        if (bCastToByte == null) {
            return (byte) 0;
        }
        return bCastToByte.byteValue();
    }

    public byte[] getBytes(java.lang.String str) {
        java.lang.Object obj = get(str);
        if (obj == null) {
            return null;
        }
        return com.alibaba.fastjson.util.TypeUtils.castToBytes(obj);
    }

    public java.util.Date getDate(java.lang.String str) {
        return com.alibaba.fastjson.util.TypeUtils.castToDate(get(str));
    }

    public java.lang.Double getDouble(java.lang.String str) {
        return com.alibaba.fastjson.util.TypeUtils.castToDouble(get(str));
    }

    public double getDoubleValue(java.lang.String str) {
        java.lang.Double dCastToDouble = com.alibaba.fastjson.util.TypeUtils.castToDouble(get(str));
        if (dCastToDouble == null) {
            return 0.0d;
        }
        return dCastToDouble.doubleValue();
    }

    public java.lang.Float getFloat(java.lang.String str) {
        return com.alibaba.fastjson.util.TypeUtils.castToFloat(get(str));
    }

    public float getFloatValue(java.lang.String str) {
        java.lang.Float fCastToFloat = com.alibaba.fastjson.util.TypeUtils.castToFloat(get(str));
        if (fCastToFloat == null) {
            return 0.0f;
        }
        return fCastToFloat.floatValue();
    }

    public java.util.Map<java.lang.String, java.lang.Object> getInnerMap() {
        return this.map;
    }

    public int getIntValue(java.lang.String str) {
        java.lang.Integer numCastToInt = com.alibaba.fastjson.util.TypeUtils.castToInt(get(str));
        if (numCastToInt == null) {
            return 0;
        }
        return numCastToInt.intValue();
    }

    public java.lang.Integer getInteger(java.lang.String str) {
        return com.alibaba.fastjson.util.TypeUtils.castToInt(get(str));
    }

    public com.alibaba.fastjson.JSONArray getJSONArray(java.lang.String str) {
        java.lang.Object obj = this.map.get(str);
        if (obj instanceof com.alibaba.fastjson.JSONArray) {
            return (com.alibaba.fastjson.JSONArray) obj;
        }
        if (obj instanceof java.util.List) {
            return new com.alibaba.fastjson.JSONArray((java.util.List<java.lang.Object>) obj);
        }
        return obj instanceof java.lang.String ? (com.alibaba.fastjson.JSONArray) com.alibaba.fastjson.JSON.parse((java.lang.String) obj) : (com.alibaba.fastjson.JSONArray) com.alibaba.fastjson.JSON.toJSON(obj);
    }

    public com.alibaba.fastjson.JSONObject getJSONObject(java.lang.String str) {
        java.lang.Object obj = this.map.get(str);
        if (obj instanceof com.alibaba.fastjson.JSONObject) {
            return (com.alibaba.fastjson.JSONObject) obj;
        }
        if (obj instanceof java.util.Map) {
            return new com.alibaba.fastjson.JSONObject((java.util.Map<java.lang.String, java.lang.Object>) obj);
        }
        return obj instanceof java.lang.String ? com.alibaba.fastjson.JSON.parseObject((java.lang.String) obj) : (com.alibaba.fastjson.JSONObject) com.alibaba.fastjson.JSON.toJSON(obj);
    }

    public java.lang.Long getLong(java.lang.String str) {
        return com.alibaba.fastjson.util.TypeUtils.castToLong(get(str));
    }

    public long getLongValue(java.lang.String str) {
        java.lang.Long lCastToLong = com.alibaba.fastjson.util.TypeUtils.castToLong(get(str));
        if (lCastToLong == null) {
            return 0L;
        }
        return lCastToLong.longValue();
    }

    public <T> T getObject(java.lang.String str, java.lang.Class<T> cls) {
        return (T) com.alibaba.fastjson.util.TypeUtils.castToJavaBean(this.map.get(str), cls);
    }

    @Override // java.util.Map
    public java.lang.Object getOrDefault(java.lang.Object obj, java.lang.Object obj2) {
        java.lang.Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    public java.lang.Short getShort(java.lang.String str) {
        return com.alibaba.fastjson.util.TypeUtils.castToShort(get(str));
    }

    public short getShortValue(java.lang.String str) {
        java.lang.Short shCastToShort = com.alibaba.fastjson.util.TypeUtils.castToShort(get(str));
        if (shCastToShort == null) {
            return (short) 0;
        }
        return shCastToShort.shortValue();
    }

    public java.lang.Object getSqlDate(java.lang.String str) {
        return com.alibaba.fastjson.util.TypeUtils.castToSqlDate(get(str));
    }

    public java.lang.String getString(java.lang.String str) {
        java.lang.Object obj = get(str);
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }

    public java.lang.Object getTimestamp(java.lang.String str) {
        return com.alibaba.fastjson.util.TypeUtils.castToTimestamp(get(str));
    }

    @Override // java.util.Map
    public int hashCode() {
        return this.map.hashCode();
    }

    @Override // java.lang.reflect.InvocationHandler
    public java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) throws java.lang.Throwable {
        java.lang.Class<?>[] parameterTypes = method.getParameterTypes();
        java.lang.String strName = null;
        if (parameterTypes.length == 1) {
            if (method.getName().equals("equals")) {
                return java.lang.Boolean.valueOf(equals(objArr[0]));
            }
            if (method.getReturnType() != java.lang.Void.TYPE) {
                throw new com.alibaba.fastjson.JSONException("illegal setter");
            }
            com.alibaba.fastjson.annotation.JSONField jSONField = (com.alibaba.fastjson.annotation.JSONField) com.alibaba.fastjson.util.TypeUtils.getAnnotation(method, com.alibaba.fastjson.annotation.JSONField.class);
            java.lang.String strName2 = (jSONField == null || jSONField.name().length() == 0) ? null : jSONField.name();
            if (strName2 == null) {
                java.lang.String name = method.getName();
                if (!name.startsWith("set")) {
                    throw new com.alibaba.fastjson.JSONException("illegal setter");
                }
                java.lang.String strSubstring = name.substring(3);
                if (strSubstring.length() == 0) {
                    throw new com.alibaba.fastjson.JSONException("illegal setter");
                }
                strName2 = java.lang.Character.toLowerCase(strSubstring.charAt(0)) + strSubstring.substring(1);
            }
            this.map.put(strName2, objArr[0]);
            return null;
        }
        if (parameterTypes.length != 0) {
            throw new java.lang.UnsupportedOperationException(method.toGenericString());
        }
        if (method.getReturnType() == java.lang.Void.TYPE) {
            throw new com.alibaba.fastjson.JSONException("illegal getter");
        }
        com.alibaba.fastjson.annotation.JSONField jSONField2 = (com.alibaba.fastjson.annotation.JSONField) com.alibaba.fastjson.util.TypeUtils.getAnnotation(method, com.alibaba.fastjson.annotation.JSONField.class);
        if (jSONField2 != null && jSONField2.name().length() != 0) {
            strName = jSONField2.name();
        }
        if (strName == null) {
            java.lang.String name2 = method.getName();
            if (name2.startsWith("get")) {
                java.lang.String strSubstring2 = name2.substring(3);
                if (strSubstring2.length() == 0) {
                    throw new com.alibaba.fastjson.JSONException("illegal getter");
                }
                strName = java.lang.Character.toLowerCase(strSubstring2.charAt(0)) + strSubstring2.substring(1);
            } else {
                if (!name2.startsWith("is")) {
                    if (name2.startsWith("hashCode")) {
                        return java.lang.Integer.valueOf(hashCode());
                    }
                    if (name2.startsWith("toString")) {
                        return toString();
                    }
                    throw new com.alibaba.fastjson.JSONException("illegal getter");
                }
                java.lang.String strSubstring3 = name2.substring(2);
                if (strSubstring3.length() == 0) {
                    throw new com.alibaba.fastjson.JSONException("illegal getter");
                }
                strName = java.lang.Character.toLowerCase(strSubstring3.charAt(0)) + strSubstring3.substring(1);
            }
        }
        return com.alibaba.fastjson.util.TypeUtils.cast(this.map.get(strName), method.getGenericReturnType(), com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    @Override // java.util.Map
    public java.util.Set<java.lang.String> keySet() {
        return this.map.keySet();
    }

    @Override // java.util.Map
    public void putAll(java.util.Map<? extends java.lang.String, ? extends java.lang.Object> map) {
        this.map.putAll(map);
    }

    @Override // java.util.Map
    public java.lang.Object remove(java.lang.Object obj) {
        return this.map.remove(obj);
    }

    @Override // java.util.Map
    public int size() {
        return this.map.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.alibaba.fastjson.JSON
    public <T> T toJavaObject(java.lang.Class<T> cls) {
        if (cls == java.util.Map.class || cls == com.alibaba.fastjson.JSONObject.class || cls == com.alibaba.fastjson.JSON.class) {
            return this;
        }
        return (cls != java.lang.Object.class || containsKey(com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY)) ? (T) com.alibaba.fastjson.util.TypeUtils.castToJavaBean(this, cls, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance()) : this;
    }

    @Override // java.util.Map
    public java.util.Collection<java.lang.Object> values() {
        return this.map.values();
    }

    public JSONObject(java.util.Map<java.lang.String, java.lang.Object> map) {
        if (map == null) {
            throw new java.lang.IllegalArgumentException("map is null.");
        }
        this.map = map;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public com.alibaba.fastjson.JSONObject m0clone() {
        return new com.alibaba.fastjson.JSONObject((java.util.Map<java.lang.String, java.lang.Object>) (this.map instanceof java.util.LinkedHashMap ? new java.util.LinkedHashMap(this.map) : new java.util.HashMap(this.map)));
    }

    @Override // java.util.Map
    public java.lang.Object put(java.lang.String str, java.lang.Object obj) {
        return this.map.put(str, obj);
    }

    public <T> T getObject(java.lang.String str, java.lang.reflect.Type type) {
        return (T) com.alibaba.fastjson.util.TypeUtils.cast(this.map.get(str), type, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T toJavaObject(java.lang.Class<T> cls, com.alibaba.fastjson.parser.ParserConfig parserConfig, int i5) {
        if (cls == java.util.Map.class) {
            return this;
        }
        return (cls != java.lang.Object.class || containsKey(com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY)) ? (T) com.alibaba.fastjson.util.TypeUtils.castToJavaBean(this, cls, parserConfig) : this;
    }

    public JSONObject(boolean z4) {
        this(16, z4);
    }

    public <T> T getObject(java.lang.String str, com.alibaba.fastjson.TypeReference typeReference) {
        T t5 = (T) this.map.get(str);
        return typeReference == null ? t5 : (T) com.alibaba.fastjson.util.TypeUtils.cast(t5, typeReference.getType(), com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance());
    }

    public JSONObject(int i5) {
        this(i5, false);
    }

    public JSONObject(int i5, boolean z4) {
        if (z4) {
            this.map = new java.util.LinkedHashMap(i5);
        } else {
            this.map = new java.util.HashMap(i5);
        }
    }
}
