package com.alibaba.fastjson;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class JSONReader implements java.io.Closeable {
    private com.alibaba.fastjson.JSONStreamContext context;
    private transient com.alibaba.fastjson.JSONStreamContext lastContext;
    private final com.alibaba.fastjson.parser.DefaultJSONParser parser;

    public JSONReader(java.io.Reader reader) {
        this(reader, new com.alibaba.fastjson.parser.Feature[0]);
    }

    private void endStructure() {
        int i5;
        com.alibaba.fastjson.JSONStreamContext jSONStreamContext = this.context;
        this.lastContext = jSONStreamContext;
        com.alibaba.fastjson.JSONStreamContext jSONStreamContext2 = jSONStreamContext.parent;
        this.context = jSONStreamContext2;
        if (jSONStreamContext2 == null) {
            return;
        }
        switch (jSONStreamContext2.state) {
            case com.alibaba.fastjson.JSONStreamContext.StartObject /* 1001 */:
            case com.alibaba.fastjson.JSONStreamContext.PropertyValue /* 1003 */:
                i5 = com.alibaba.fastjson.JSONStreamContext.PropertyKey;
                break;
            case com.alibaba.fastjson.JSONStreamContext.PropertyKey /* 1002 */:
                i5 = com.alibaba.fastjson.JSONStreamContext.PropertyValue;
                break;
            case com.alibaba.fastjson.JSONStreamContext.StartArray /* 1004 */:
                i5 = com.alibaba.fastjson.JSONStreamContext.ArrayValue;
                break;
            default:
                i5 = -1;
                break;
        }
        if (i5 != -1) {
            jSONStreamContext2.state = i5;
        }
    }

    private void readAfter() {
        com.alibaba.fastjson.JSONStreamContext jSONStreamContext = this.context;
        int i5 = jSONStreamContext.state;
        int i6 = com.alibaba.fastjson.JSONStreamContext.PropertyKey;
        switch (i5) {
            case com.alibaba.fastjson.JSONStreamContext.StartObject /* 1001 */:
            case com.alibaba.fastjson.JSONStreamContext.PropertyValue /* 1003 */:
                break;
            case com.alibaba.fastjson.JSONStreamContext.PropertyKey /* 1002 */:
                i6 = com.alibaba.fastjson.JSONStreamContext.PropertyValue;
                break;
            case com.alibaba.fastjson.JSONStreamContext.StartArray /* 1004 */:
                i6 = com.alibaba.fastjson.JSONStreamContext.ArrayValue;
                break;
            case com.alibaba.fastjson.JSONStreamContext.ArrayValue /* 1005 */:
                i6 = -1;
                break;
            default:
                throw new com.alibaba.fastjson.JSONException("illegal state : " + i5);
        }
        if (i6 != -1) {
            jSONStreamContext.state = i6;
        }
    }

    private void readBefore() {
        int i5 = this.context.state;
        switch (i5) {
            case com.alibaba.fastjson.JSONStreamContext.StartObject /* 1001 */:
            case com.alibaba.fastjson.JSONStreamContext.StartArray /* 1004 */:
                return;
            case com.alibaba.fastjson.JSONStreamContext.PropertyKey /* 1002 */:
                this.parser.accept(17);
                return;
            case com.alibaba.fastjson.JSONStreamContext.PropertyValue /* 1003 */:
                this.parser.accept(16, 18);
                return;
            case com.alibaba.fastjson.JSONStreamContext.ArrayValue /* 1005 */:
                this.parser.accept(16);
                return;
            default:
                throw new com.alibaba.fastjson.JSONException("illegal state : " + i5);
        }
    }

    private void startStructure() {
        switch (this.context.state) {
            case com.alibaba.fastjson.JSONStreamContext.StartObject /* 1001 */:
            case com.alibaba.fastjson.JSONStreamContext.StartArray /* 1004 */:
                return;
            case com.alibaba.fastjson.JSONStreamContext.PropertyKey /* 1002 */:
                this.parser.accept(17);
                return;
            case com.alibaba.fastjson.JSONStreamContext.PropertyValue /* 1003 */:
            case com.alibaba.fastjson.JSONStreamContext.ArrayValue /* 1005 */:
                this.parser.accept(16);
                return;
            default:
                throw new com.alibaba.fastjson.JSONException("illegal state : " + this.context.state);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.parser.close();
    }

    public void config(com.alibaba.fastjson.parser.Feature feature, boolean z4) {
        this.parser.config(feature, z4);
    }

    public void endArray() {
        this.parser.accept(15);
        endStructure();
    }

    public void endObject() {
        this.parser.accept(13);
        endStructure();
    }

    public java.util.Locale getLocal() {
        return this.parser.lexer.getLocale();
    }

    public java.util.TimeZone getTimzeZone() {
        return this.parser.lexer.getTimeZone();
    }

    public boolean hasNext() {
        if (this.context == null) {
            throw new com.alibaba.fastjson.JSONException("context is null");
        }
        int i5 = this.parser.lexer.token();
        int i6 = this.context.state;
        switch (i6) {
            case com.alibaba.fastjson.JSONStreamContext.StartObject /* 1001 */:
            case com.alibaba.fastjson.JSONStreamContext.PropertyValue /* 1003 */:
                return i5 != 13;
            case com.alibaba.fastjson.JSONStreamContext.PropertyKey /* 1002 */:
            default:
                throw new com.alibaba.fastjson.JSONException("illegal state : " + i6);
            case com.alibaba.fastjson.JSONStreamContext.StartArray /* 1004 */:
            case com.alibaba.fastjson.JSONStreamContext.ArrayValue /* 1005 */:
                return i5 != 15;
        }
    }

    public int peek() {
        return this.parser.lexer.token();
    }

    public java.lang.Integer readInteger() {
        java.lang.Object obj;
        if (this.context == null) {
            obj = this.parser.parse();
        } else {
            readBefore();
            obj = this.parser.parse();
            readAfter();
        }
        return com.alibaba.fastjson.util.TypeUtils.castToInt(obj);
    }

    public java.lang.Long readLong() {
        java.lang.Object obj;
        if (this.context == null) {
            obj = this.parser.parse();
        } else {
            readBefore();
            obj = this.parser.parse();
            readAfter();
        }
        return com.alibaba.fastjson.util.TypeUtils.castToLong(obj);
    }

    public <T> T readObject(com.alibaba.fastjson.TypeReference<T> typeReference) {
        return (T) readObject(typeReference.getType());
    }

    public java.lang.String readString() {
        java.lang.Object obj;
        if (this.context == null) {
            obj = this.parser.parse();
        } else {
            readBefore();
            com.alibaba.fastjson.parser.JSONLexer jSONLexer = this.parser.lexer;
            if (this.context.state == 1001 && jSONLexer.token() == 18) {
                java.lang.String strStringVal = jSONLexer.stringVal();
                jSONLexer.nextToken();
                obj = strStringVal;
            } else {
                obj = this.parser.parse();
            }
            readAfter();
        }
        return com.alibaba.fastjson.util.TypeUtils.castToString(obj);
    }

    public void setLocale(java.util.Locale locale) {
        this.parser.lexer.setLocale(locale);
    }

    public void setTimzeZone(java.util.TimeZone timeZone) {
        this.parser.lexer.setTimeZone(timeZone);
    }

    public void startArray() {
        if (this.context == null) {
            this.context = new com.alibaba.fastjson.JSONStreamContext(null, com.alibaba.fastjson.JSONStreamContext.StartArray);
        } else {
            startStructure();
            this.context = new com.alibaba.fastjson.JSONStreamContext(this.context, com.alibaba.fastjson.JSONStreamContext.StartArray);
        }
        this.parser.accept(14);
    }

    public void startObject() {
        if (this.context == null) {
            this.context = new com.alibaba.fastjson.JSONStreamContext(null, com.alibaba.fastjson.JSONStreamContext.StartObject);
        } else {
            startStructure();
            com.alibaba.fastjson.JSONStreamContext jSONStreamContext = this.lastContext;
            if (jSONStreamContext == null || jSONStreamContext.parent != this.context) {
                this.context = new com.alibaba.fastjson.JSONStreamContext(this.context, com.alibaba.fastjson.JSONStreamContext.StartObject);
            } else {
                this.context = jSONStreamContext;
                if (jSONStreamContext.state != 1001) {
                    jSONStreamContext.state = com.alibaba.fastjson.JSONStreamContext.StartObject;
                }
            }
        }
        this.parser.accept(12, 18);
    }

    public JSONReader(java.io.Reader reader, com.alibaba.fastjson.parser.Feature... featureArr) {
        this(new com.alibaba.fastjson.parser.JSONReaderScanner(reader));
        for (com.alibaba.fastjson.parser.Feature feature : featureArr) {
            config(feature, true);
        }
    }

    public <T> T readObject(java.lang.reflect.Type type) {
        if (this.context == null) {
            return (T) this.parser.parseObject(type);
        }
        readBefore();
        T t5 = (T) this.parser.parseObject(type);
        readAfter();
        return t5;
    }

    public JSONReader(com.alibaba.fastjson.parser.JSONLexer jSONLexer) {
        this(new com.alibaba.fastjson.parser.DefaultJSONParser(jSONLexer));
    }

    public JSONReader(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser) {
        this.parser = defaultJSONParser;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public <T> T readObject(java.lang.Class<T> cls) {
        if (this.context == null) {
            return (T) this.parser.parseObject((java.lang.Class) cls);
        }
        readBefore();
        T t5 = (T) this.parser.parseObject((java.lang.Class) cls);
        this.parser.handleResovleTask(t5);
        readAfter();
        return t5;
    }

    public void readObject(java.lang.Object obj) {
        if (this.context == null) {
            this.parser.parseObject(obj);
            return;
        }
        readBefore();
        this.parser.parseObject(obj);
        readAfter();
    }

    public java.lang.Object readObject() {
        java.lang.Object key;
        if (this.context == null) {
            return this.parser.parse();
        }
        readBefore();
        int i5 = this.context.state;
        if (i5 != 1001 && i5 != 1003) {
            key = this.parser.parse();
        } else {
            key = this.parser.parseKey();
        }
        readAfter();
        return key;
    }

    public java.lang.Object readObject(java.util.Map map) {
        if (this.context == null) {
            return this.parser.parseObject(map);
        }
        readBefore();
        java.lang.Object object = this.parser.parseObject(map);
        readAfter();
        return object;
    }
}
