package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class SerialContext {
    public final int features;
    public final java.lang.Object fieldName;
    public final java.lang.Object object;
    public final com.alibaba.fastjson.serializer.SerialContext parent;

    public SerialContext(com.alibaba.fastjson.serializer.SerialContext serialContext, java.lang.Object obj, java.lang.Object obj2, int i5, int i6) {
        this.parent = serialContext;
        this.object = obj;
        this.fieldName = obj2;
        this.features = i5;
    }

    public java.lang.Object getFieldName() {
        return this.fieldName;
    }

    public java.lang.Object getObject() {
        return this.object;
    }

    public com.alibaba.fastjson.serializer.SerialContext getParent() {
        return this.parent;
    }

    public java.lang.String getPath() {
        return toString();
    }

    public java.lang.String toString() {
        if (this.parent == null) {
            return "$";
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        toString(sb);
        return sb.toString();
    }

    public void toString(java.lang.StringBuilder sb) {
        boolean z4;
        com.alibaba.fastjson.serializer.SerialContext serialContext = this.parent;
        if (serialContext == null) {
            sb.append('$');
            return;
        }
        serialContext.toString(sb);
        java.lang.Object obj = this.fieldName;
        if (obj == null) {
            sb.append(".null");
            return;
        }
        if (obj instanceof java.lang.Integer) {
            sb.append('[');
            sb.append(((java.lang.Integer) this.fieldName).intValue());
            sb.append(']');
            return;
        }
        sb.append('.');
        java.lang.String string = this.fieldName.toString();
        int i5 = 0;
        while (true) {
            if (i5 >= string.length()) {
                z4 = false;
                break;
            }
            char cCharAt = string.charAt(i5);
            if ((cCharAt < '0' || cCharAt > '9') && ((cCharAt < 'A' || cCharAt > 'Z') && ((cCharAt < 'a' || cCharAt > 'z') && cCharAt <= 128))) {
                z4 = true;
                break;
            }
            i5++;
        }
        if (z4) {
            for (int i6 = 0; i6 < string.length(); i6++) {
                char cCharAt2 = string.charAt(i6);
                if (cCharAt2 == '\\') {
                    sb.append('\\');
                    sb.append('\\');
                    sb.append('\\');
                } else {
                    if ((cCharAt2 >= '0' && cCharAt2 <= '9') || ((cCharAt2 >= 'A' && cCharAt2 <= 'Z') || ((cCharAt2 >= 'a' && cCharAt2 <= 'z') || cCharAt2 > 128))) {
                        sb.append(cCharAt2);
                    } else if (cCharAt2 == '\"') {
                        sb.append('\\');
                        sb.append('\\');
                        sb.append('\\');
                    } else {
                        sb.append('\\');
                        sb.append('\\');
                    }
                }
                sb.append(cCharAt2);
            }
            return;
        }
        sb.append(string);
    }
}
