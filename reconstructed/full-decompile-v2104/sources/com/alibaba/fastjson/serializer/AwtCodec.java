package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class AwtCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static final com.alibaba.fastjson.serializer.AwtCodec instance = new com.alibaba.fastjson.serializer.AwtCodec();

    private java.lang.Object parseRef(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.Object obj) {
        com.alibaba.fastjson.parser.JSONLexer lexer = defaultJSONParser.getLexer();
        lexer.nextTokenWithColon(4);
        java.lang.String strStringVal = lexer.stringVal();
        defaultJSONParser.setContext(defaultJSONParser.getContext(), obj);
        defaultJSONParser.addResolveTask(new com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask(defaultJSONParser.getContext(), strStringVal));
        defaultJSONParser.popContext();
        defaultJSONParser.setResolveStatus(1);
        lexer.nextToken(13);
        defaultJSONParser.accept(13);
        return null;
    }

    public static boolean support(java.lang.Class<?> cls) {
        return cls == java.awt.Point.class || cls == java.awt.Rectangle.class || cls == java.awt.Font.class || cls == java.awt.Color.class;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        T t5;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() == 8) {
            jSONLexer.nextToken(16);
            return null;
        }
        if (jSONLexer.token() != 12 && jSONLexer.token() != 16) {
            throw new com.alibaba.fastjson.JSONException("syntax error");
        }
        jSONLexer.nextToken();
        if (type == java.awt.Point.class) {
            t5 = (T) parsePoint(defaultJSONParser, obj);
        } else if (type == java.awt.Rectangle.class) {
            t5 = (T) parseRectangle(defaultJSONParser);
        } else if (type == java.awt.Color.class) {
            t5 = (T) parseColor(defaultJSONParser);
        } else {
            if (type != java.awt.Font.class) {
                throw new com.alibaba.fastjson.JSONException("not support awt class : " + type);
            }
            t5 = (T) parseFont(defaultJSONParser);
        }
        com.alibaba.fastjson.parser.ParseContext context = defaultJSONParser.getContext();
        defaultJSONParser.setContext(t5, obj);
        defaultJSONParser.setContext(context);
        return t5;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }

    public java.awt.Color parseColor(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser) {
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (jSONLexer.token() != 13) {
            if (jSONLexer.token() != 4) {
                throw new com.alibaba.fastjson.JSONException("syntax error");
            }
            java.lang.String strStringVal = jSONLexer.stringVal();
            jSONLexer.nextTokenWithColon(2);
            if (jSONLexer.token() != 2) {
                throw new com.alibaba.fastjson.JSONException("syntax error");
            }
            int iIntValue = jSONLexer.intValue();
            jSONLexer.nextToken();
            if (strStringVal.equalsIgnoreCase("r")) {
                i5 = iIntValue;
            } else if (strStringVal.equalsIgnoreCase("g")) {
                i6 = iIntValue;
            } else if (strStringVal.equalsIgnoreCase("b")) {
                i7 = iIntValue;
            } else {
                if (!strStringVal.equalsIgnoreCase("alpha")) {
                    throw new com.alibaba.fastjson.JSONException("syntax error, " + strStringVal);
                }
                i8 = iIntValue;
            }
            if (jSONLexer.token() == 16) {
                jSONLexer.nextToken(4);
            }
        }
        jSONLexer.nextToken();
        return new java.awt.Color(i5, i6, i7, i8);
    }

    public java.awt.Font parseFont(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser) {
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        int iIntValue = 0;
        java.lang.String strStringVal = null;
        int iIntValue2 = 0;
        while (jSONLexer.token() != 13) {
            if (jSONLexer.token() != 4) {
                throw new com.alibaba.fastjson.JSONException("syntax error");
            }
            java.lang.String strStringVal2 = jSONLexer.stringVal();
            jSONLexer.nextTokenWithColon(2);
            if (strStringVal2.equalsIgnoreCase("name")) {
                if (jSONLexer.token() != 4) {
                    throw new com.alibaba.fastjson.JSONException("syntax error");
                }
                strStringVal = jSONLexer.stringVal();
                jSONLexer.nextToken();
            } else if (strStringVal2.equalsIgnoreCase("style")) {
                if (jSONLexer.token() != 2) {
                    throw new com.alibaba.fastjson.JSONException("syntax error");
                }
                iIntValue = jSONLexer.intValue();
                jSONLexer.nextToken();
            } else {
                if (!strStringVal2.equalsIgnoreCase("size")) {
                    throw new com.alibaba.fastjson.JSONException("syntax error, " + strStringVal2);
                }
                if (jSONLexer.token() != 2) {
                    throw new com.alibaba.fastjson.JSONException("syntax error");
                }
                iIntValue2 = jSONLexer.intValue();
                jSONLexer.nextToken();
            }
            if (jSONLexer.token() == 16) {
                jSONLexer.nextToken(4);
            }
        }
        jSONLexer.nextToken();
        return new java.awt.Font(strStringVal, iIntValue, iIntValue2);
    }

    public java.awt.Point parsePoint(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.Object obj) {
        int iFloatValue;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        int i5 = 0;
        int i6 = 0;
        while (jSONLexer.token() != 13) {
            if (jSONLexer.token() != 4) {
                throw new com.alibaba.fastjson.JSONException("syntax error");
            }
            java.lang.String strStringVal = jSONLexer.stringVal();
            if (com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY.equals(strStringVal)) {
                defaultJSONParser.acceptType("java.awt.Point");
            } else {
                if ("$ref".equals(strStringVal)) {
                    return (java.awt.Point) parseRef(defaultJSONParser, obj);
                }
                jSONLexer.nextTokenWithColon(2);
                int i7 = jSONLexer.token();
                if (i7 == 2) {
                    iFloatValue = jSONLexer.intValue();
                    jSONLexer.nextToken();
                } else {
                    if (i7 != 3) {
                        throw new com.alibaba.fastjson.JSONException("syntax error : " + jSONLexer.tokenName());
                    }
                    iFloatValue = (int) jSONLexer.floatValue();
                    jSONLexer.nextToken();
                }
                if (strStringVal.equalsIgnoreCase("x")) {
                    i5 = iFloatValue;
                } else {
                    if (!strStringVal.equalsIgnoreCase("y")) {
                        throw new com.alibaba.fastjson.JSONException("syntax error, " + strStringVal);
                    }
                    i6 = iFloatValue;
                }
                if (jSONLexer.token() == 16) {
                    jSONLexer.nextToken(4);
                }
            }
        }
        jSONLexer.nextToken();
        return new java.awt.Point(i5, i6);
    }

    public java.awt.Rectangle parseRectangle(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser) {
        int iFloatValue;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (jSONLexer.token() != 13) {
            if (jSONLexer.token() != 4) {
                throw new com.alibaba.fastjson.JSONException("syntax error");
            }
            java.lang.String strStringVal = jSONLexer.stringVal();
            jSONLexer.nextTokenWithColon(2);
            int i9 = jSONLexer.token();
            if (i9 == 2) {
                iFloatValue = jSONLexer.intValue();
                jSONLexer.nextToken();
            } else {
                if (i9 != 3) {
                    throw new com.alibaba.fastjson.JSONException("syntax error");
                }
                iFloatValue = (int) jSONLexer.floatValue();
                jSONLexer.nextToken();
            }
            if (strStringVal.equalsIgnoreCase("x")) {
                i5 = iFloatValue;
            } else if (strStringVal.equalsIgnoreCase("y")) {
                i6 = iFloatValue;
            } else if (strStringVal.equalsIgnoreCase("width")) {
                i7 = iFloatValue;
            } else {
                if (!strStringVal.equalsIgnoreCase("height")) {
                    throw new com.alibaba.fastjson.JSONException("syntax error, " + strStringVal);
                }
                i8 = iFloatValue;
            }
            if (jSONLexer.token() == 16) {
                jSONLexer.nextToken(4);
            }
        }
        jSONLexer.nextToken();
        return new java.awt.Rectangle(i5, i6, i7, i8);
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull();
            return;
        }
        if (obj instanceof java.awt.Point) {
            java.awt.Point point = (java.awt.Point) obj;
            serializeWriter.writeFieldValue(writeClassName(serializeWriter, java.awt.Point.class, '{'), "x", point.x);
            serializeWriter.writeFieldValue(',', "y", point.y);
        } else if (obj instanceof java.awt.Font) {
            java.awt.Font font = (java.awt.Font) obj;
            serializeWriter.writeFieldValue(writeClassName(serializeWriter, java.awt.Font.class, '{'), "name", font.getName());
            serializeWriter.writeFieldValue(',', "style", font.getStyle());
            serializeWriter.writeFieldValue(',', "size", font.getSize());
        } else if (obj instanceof java.awt.Rectangle) {
            java.awt.Rectangle rectangle = (java.awt.Rectangle) obj;
            serializeWriter.writeFieldValue(writeClassName(serializeWriter, java.awt.Rectangle.class, '{'), "x", rectangle.x);
            serializeWriter.writeFieldValue(',', "y", rectangle.y);
            serializeWriter.writeFieldValue(',', "width", rectangle.width);
            serializeWriter.writeFieldValue(',', "height", rectangle.height);
        } else {
            if (!(obj instanceof java.awt.Color)) {
                throw new com.alibaba.fastjson.JSONException("not support awt class : " + obj.getClass().getName());
            }
            java.awt.Color color = (java.awt.Color) obj;
            serializeWriter.writeFieldValue(writeClassName(serializeWriter, java.awt.Color.class, '{'), "r", color.getRed());
            serializeWriter.writeFieldValue(',', "g", color.getGreen());
            serializeWriter.writeFieldValue(',', "b", color.getBlue());
            if (color.getAlpha() > 0) {
                serializeWriter.writeFieldValue(',', "alpha", color.getAlpha());
            }
        }
        serializeWriter.write(125);
    }

    public char writeClassName(com.alibaba.fastjson.serializer.SerializeWriter serializeWriter, java.lang.Class<?> cls, char c5) {
        if (!serializeWriter.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName)) {
            return c5;
        }
        serializeWriter.write(123);
        serializeWriter.writeFieldName(com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY);
        serializeWriter.writeString(cls.getName());
        return ',';
    }
}
