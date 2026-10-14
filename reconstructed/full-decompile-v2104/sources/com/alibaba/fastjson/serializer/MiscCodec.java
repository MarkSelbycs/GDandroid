package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class MiscCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    private static java.lang.reflect.Method method_paths_get;
    public static final com.alibaba.fastjson.serializer.MiscCodec instance = new com.alibaba.fastjson.serializer.MiscCodec();
    private static boolean method_paths_get_error = false;
    private static boolean FILE_RELATIVE_PATH_SUPPORT = "true".equals(com.alibaba.fastjson.util.IOUtils.getStringProperty("fastjson.deserializer.fileRelativePathSupport"));

    private static java.lang.String toString(org.w3c.dom.Node node) {
        try {
            javax.xml.transform.Transformer transformerNewTransformer = javax.xml.transform.TransformerFactory.newInstance().newTransformer();
            javax.xml.transform.dom.DOMSource dOMSource = new javax.xml.transform.dom.DOMSource(node);
            java.io.StringWriter stringWriter = new java.io.StringWriter();
            transformerNewTransformer.transform(dOMSource, new javax.xml.transform.stream.StreamResult(stringWriter));
            return stringWriter.toString();
        } catch (javax.xml.transform.TransformerException e5) {
            throw new com.alibaba.fastjson.JSONException("xml node to string error", e5);
        }
    }

    /* JADX WARN: Type inference failed for: r10v41, types: [T, java.text.SimpleDateFormat] */
    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        java.lang.Object obj2;
        java.lang.String str;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        java.net.InetAddress inetAddress = null;
        int i5 = 0;
        if (type != java.net.InetSocketAddress.class) {
            if (defaultJSONParser.resolveStatus == 2) {
                defaultJSONParser.resolveStatus = 0;
                defaultJSONParser.accept(16);
                if (jSONLexer.token() != 4) {
                    throw new com.alibaba.fastjson.JSONException("syntax error");
                }
                if (!"val".equals(jSONLexer.stringVal())) {
                    throw new com.alibaba.fastjson.JSONException("syntax error");
                }
                jSONLexer.nextToken();
                defaultJSONParser.accept(17);
                obj2 = defaultJSONParser.parse();
                defaultJSONParser.accept(13);
            } else {
                obj2 = defaultJSONParser.parse();
            }
            if (obj2 == null) {
                str = null;
            } else {
                if (!(obj2 instanceof java.lang.String)) {
                    if (!(obj2 instanceof com.alibaba.fastjson.JSONObject)) {
                        throw new com.alibaba.fastjson.JSONException("expect string");
                    }
                    com.alibaba.fastjson.JSONObject jSONObject = (com.alibaba.fastjson.JSONObject) obj2;
                    if (type == java.util.Currency.class) {
                        java.lang.String string = jSONObject.getString("currency");
                        if (string != null) {
                            return (T) java.util.Currency.getInstance(string);
                        }
                        java.lang.String string2 = jSONObject.getString("currencyCode");
                        if (string2 != null) {
                            return (T) java.util.Currency.getInstance(string2);
                        }
                    }
                    return type == java.util.Map.Entry.class ? (T) jSONObject.entrySet().iterator().next() : (T) jSONObject.toJavaObject(type);
                }
                str = (java.lang.String) obj2;
            }
            if (str == null || str.length() == 0) {
                return null;
            }
            if (type == java.util.UUID.class) {
                return (T) java.util.UUID.fromString(str);
            }
            if (type == java.net.URI.class) {
                return (T) java.net.URI.create(str);
            }
            if (type == java.net.URL.class) {
                try {
                    return (T) new java.net.URL(str);
                } catch (java.net.MalformedURLException e5) {
                    throw new com.alibaba.fastjson.JSONException("create url error", e5);
                }
            }
            if (type == java.util.regex.Pattern.class) {
                return (T) java.util.regex.Pattern.compile(str);
            }
            if (type == java.util.Locale.class) {
                return (T) com.alibaba.fastjson.util.TypeUtils.toLocale(str);
            }
            if (type == java.text.SimpleDateFormat.class) {
                ?? r10 = (T) new java.text.SimpleDateFormat(str, jSONLexer.getLocale());
                r10.setTimeZone(jSONLexer.getTimeZone());
                return r10;
            }
            if (type == java.net.InetAddress.class || type == java.net.Inet4Address.class || type == java.net.Inet6Address.class) {
                try {
                    return (T) java.net.InetAddress.getByName(str);
                } catch (java.net.UnknownHostException e6) {
                    throw new com.alibaba.fastjson.JSONException("deserialize inet adress error", e6);
                }
            }
            if (type == java.io.File.class) {
                if (str.indexOf("..") < 0 || FILE_RELATIVE_PATH_SUPPORT) {
                    return (T) new java.io.File(str);
                }
                throw new com.alibaba.fastjson.JSONException("file relative path not support.");
            }
            if (type == java.util.TimeZone.class) {
                return (T) java.util.TimeZone.getTimeZone(str);
            }
            if (type instanceof java.lang.reflect.ParameterizedType) {
                type = ((java.lang.reflect.ParameterizedType) type).getRawType();
            }
            if (type == java.lang.Class.class) {
                return (T) com.alibaba.fastjson.util.TypeUtils.loadClass(str, defaultJSONParser.getConfig().getDefaultClassLoader(), false);
            }
            if (type == java.nio.charset.Charset.class) {
                return (T) java.nio.charset.Charset.forName(str);
            }
            if (type == java.util.Currency.class) {
                return (T) java.util.Currency.getInstance(str);
            }
            if (type == com.alibaba.fastjson.JSONPath.class) {
                return (T) new com.alibaba.fastjson.JSONPath(str);
            }
            if (!(type instanceof java.lang.Class)) {
                throw new com.alibaba.fastjson.JSONException("MiscCodec not support " + type.toString());
            }
            java.lang.String name = ((java.lang.Class) type).getName();
            if (name.equals("java.nio.file.Path")) {
                try {
                    if (method_paths_get == null && !method_paths_get_error) {
                        method_paths_get = com.alibaba.fastjson.util.TypeUtils.loadClass("java.nio.file.Paths").getMethod("get", java.lang.String.class, java.lang.String[].class);
                    }
                    java.lang.reflect.Method method = method_paths_get;
                    if (method != null) {
                        return (T) method.invoke(null, str, new java.lang.String[0]);
                    }
                    throw new com.alibaba.fastjson.JSONException("Path deserialize erorr");
                } catch (java.lang.IllegalAccessException e7) {
                    throw new com.alibaba.fastjson.JSONException("Path deserialize erorr", e7);
                } catch (java.lang.NoSuchMethodException unused) {
                    method_paths_get_error = true;
                } catch (java.lang.reflect.InvocationTargetException e8) {
                    throw new com.alibaba.fastjson.JSONException("Path deserialize erorr", e8);
                }
            }
            throw new com.alibaba.fastjson.JSONException("MiscCodec not support " + name);
        }
        if (jSONLexer.token() == 8) {
            jSONLexer.nextToken();
            return null;
        }
        defaultJSONParser.accept(12);
        while (true) {
            java.lang.String strStringVal = jSONLexer.stringVal();
            jSONLexer.nextToken(17);
            if (strStringVal.equals("address")) {
                defaultJSONParser.accept(17);
                inetAddress = (java.net.InetAddress) defaultJSONParser.parseObject((java.lang.Class) java.net.InetAddress.class);
            } else if (strStringVal.equals("port")) {
                defaultJSONParser.accept(17);
                if (jSONLexer.token() != 2) {
                    throw new com.alibaba.fastjson.JSONException("port is not int");
                }
                int iIntValue = jSONLexer.intValue();
                jSONLexer.nextToken();
                i5 = iIntValue;
            } else {
                defaultJSONParser.accept(17);
                defaultJSONParser.parse();
            }
            if (jSONLexer.token() != 16) {
                defaultJSONParser.accept(13);
                return (T) new java.net.InetSocketAddress(inetAddress, i5);
            }
            jSONLexer.nextToken();
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 4;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        java.lang.String string;
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull();
            return;
        }
        java.lang.Class<?> cls = obj.getClass();
        if (cls == java.text.SimpleDateFormat.class) {
            string = ((java.text.SimpleDateFormat) obj).toPattern();
            if (serializeWriter.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName) && obj.getClass() != type) {
                serializeWriter.write(123);
                serializeWriter.writeFieldName(com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY);
                jSONSerializer.write(obj.getClass().getName());
                serializeWriter.writeFieldValue(',', "val", string);
                serializeWriter.write(125);
                return;
            }
        } else if (cls == java.lang.Class.class) {
            string = ((java.lang.Class) obj).getName();
        } else {
            if (cls == java.net.InetSocketAddress.class) {
                java.net.InetSocketAddress inetSocketAddress = (java.net.InetSocketAddress) obj;
                java.net.InetAddress address = inetSocketAddress.getAddress();
                serializeWriter.write(123);
                if (address != null) {
                    serializeWriter.writeFieldName("address");
                    jSONSerializer.write(address);
                    serializeWriter.write(44);
                }
                serializeWriter.writeFieldName("port");
                serializeWriter.writeInt(inetSocketAddress.getPort());
                serializeWriter.write(125);
                return;
            }
            if (obj instanceof java.io.File) {
                string = ((java.io.File) obj).getPath();
            } else if (obj instanceof java.net.InetAddress) {
                string = ((java.net.InetAddress) obj).getHostAddress();
            } else if (obj instanceof java.util.TimeZone) {
                string = ((java.util.TimeZone) obj).getID();
            } else if (obj instanceof java.util.Currency) {
                string = ((java.util.Currency) obj).getCurrencyCode();
            } else {
                if (obj instanceof com.alibaba.fastjson.JSONStreamAware) {
                    ((com.alibaba.fastjson.JSONStreamAware) obj).writeJSONString(serializeWriter);
                    return;
                }
                if (obj instanceof java.util.Iterator) {
                    writeIterator(jSONSerializer, serializeWriter, (java.util.Iterator) obj);
                    return;
                }
                if (obj instanceof java.lang.Iterable) {
                    writeIterator(jSONSerializer, serializeWriter, ((java.lang.Iterable) obj).iterator());
                    return;
                }
                if (obj instanceof java.util.Map.Entry) {
                    java.util.Map.Entry entry = (java.util.Map.Entry) obj;
                    java.lang.Object key = entry.getKey();
                    java.lang.Object value = entry.getValue();
                    if (key instanceof java.lang.String) {
                        java.lang.String str = (java.lang.String) key;
                        if (value instanceof java.lang.String) {
                            serializeWriter.writeFieldValueStringWithDoubleQuoteCheck('{', str, (java.lang.String) value);
                        } else {
                            serializeWriter.write(123);
                            serializeWriter.writeFieldName(str);
                            jSONSerializer.write(value);
                        }
                    } else {
                        serializeWriter.write(123);
                        jSONSerializer.write(key);
                        serializeWriter.write(58);
                        jSONSerializer.write(value);
                    }
                    serializeWriter.write(125);
                    return;
                }
                if (obj.getClass().getName().equals("net.sf.json.JSONNull")) {
                    serializeWriter.writeNull();
                    return;
                } else {
                    if (!(obj instanceof org.w3c.dom.Node)) {
                        throw new com.alibaba.fastjson.JSONException("not support class : " + cls);
                    }
                    string = toString((org.w3c.dom.Node) obj);
                }
            }
        }
        serializeWriter.writeString(string);
    }

    public void writeIterator(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, com.alibaba.fastjson.serializer.SerializeWriter serializeWriter, java.util.Iterator<?> it) {
        serializeWriter.write(91);
        int i5 = 0;
        while (it.hasNext()) {
            if (i5 != 0) {
                serializeWriter.write(44);
            }
            jSONSerializer.write(it.next());
            i5++;
        }
        serializeWriter.write(93);
    }
}
