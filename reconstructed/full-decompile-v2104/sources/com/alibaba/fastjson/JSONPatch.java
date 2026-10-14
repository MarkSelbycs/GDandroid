package com.alibaba.fastjson;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class JSONPatch {

    /* JADX INFO: renamed from: com.alibaba.fastjson.JSONPatch$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType;

        static {
            int[] iArr = new int[com.alibaba.fastjson.JSONPatch.OperationType.values().length];
            $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType = iArr;
            try {
                iArr[com.alibaba.fastjson.JSONPatch.OperationType.add.ordinal()] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType[com.alibaba.fastjson.JSONPatch.OperationType.replace.ordinal()] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType[com.alibaba.fastjson.JSONPatch.OperationType.remove.ordinal()] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType[com.alibaba.fastjson.JSONPatch.OperationType.copy.ordinal()] = 4;
            } catch (java.lang.NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType[com.alibaba.fastjson.JSONPatch.OperationType.move.ordinal()] = 5;
            } catch (java.lang.NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType[com.alibaba.fastjson.JSONPatch.OperationType.test.ordinal()] = 6;
            } catch (java.lang.NoSuchFieldError unused6) {
            }
        }
    }

    @com.alibaba.fastjson.annotation.JSONType(orders = {"op", "from", "path", "value"})
    public static class Operation {
        public java.lang.String from;
        public java.lang.String path;

        @com.alibaba.fastjson.annotation.JSONField(name = "op")
        public com.alibaba.fastjson.JSONPatch.OperationType type;
        public java.lang.Object value;
    }

    public enum OperationType {
        add,
        remove,
        replace,
        move,
        copy,
        test
    }

    public static java.lang.String apply(java.lang.String str, java.lang.String str2) {
        return com.alibaba.fastjson.JSON.toJSONString(apply(com.alibaba.fastjson.JSON.parse(str, com.alibaba.fastjson.parser.Feature.OrderedField), str2));
    }

    private static boolean isObject(java.lang.String str) {
        if (str == null) {
            return false;
        }
        for (int i5 = 0; i5 < str.length(); i5++) {
            char cCharAt = str.charAt(i5);
            if (!com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt)) {
                return cCharAt == '{';
            }
        }
        return false;
    }

    public static java.lang.Object apply(java.lang.Object obj, java.lang.String str) {
        for (com.alibaba.fastjson.JSONPatch.Operation operation : isObject(str) ? new com.alibaba.fastjson.JSONPatch.Operation[]{(com.alibaba.fastjson.JSONPatch.Operation) com.alibaba.fastjson.JSON.parseObject(str, com.alibaba.fastjson.JSONPatch.Operation.class)} : (com.alibaba.fastjson.JSONPatch.Operation[]) com.alibaba.fastjson.JSON.parseObject(str, com.alibaba.fastjson.JSONPatch.Operation[].class)) {
            com.alibaba.fastjson.JSONPath jSONPathCompile = com.alibaba.fastjson.JSONPath.compile(operation.path);
            switch (com.alibaba.fastjson.JSONPatch.AnonymousClass1.$SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType[operation.type.ordinal()]) {
                case 1:
                    jSONPathCompile.patchAdd(obj, operation.value, false);
                    break;
                case 2:
                    jSONPathCompile.patchAdd(obj, operation.value, true);
                    break;
                case 3:
                    jSONPathCompile.remove(obj);
                    break;
                case 4:
                case 5:
                    com.alibaba.fastjson.JSONPath jSONPathCompile2 = com.alibaba.fastjson.JSONPath.compile(operation.from);
                    java.lang.Object objEval = jSONPathCompile2.eval(obj);
                    if (operation.type == com.alibaba.fastjson.JSONPatch.OperationType.move && !jSONPathCompile2.remove(obj)) {
                        throw new com.alibaba.fastjson.JSONException("json patch move error : " + operation.from + " -> " + operation.path);
                    }
                    jSONPathCompile.set(obj, objEval);
                    break;
                    break;
                case 6:
                    java.lang.Object objEval2 = jSONPathCompile.eval(obj);
                    if (objEval2 == null) {
                        return java.lang.Boolean.valueOf(operation.value == null);
                    }
                    return java.lang.Boolean.valueOf(objEval2.equals(operation.value));
            }
        }
        return obj;
    }
}
