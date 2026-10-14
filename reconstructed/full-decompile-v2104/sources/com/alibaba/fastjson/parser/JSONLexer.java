package com.alibaba.fastjson.parser;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface JSONLexer {
    public static final int ARRAY = 2;
    public static final int END = 4;
    public static final char EOI = 26;
    public static final int NOT_MATCH = -1;
    public static final int NOT_MATCH_NAME = -2;
    public static final int OBJECT = 1;
    public static final int UNKNOWN = 0;
    public static final int VALUE = 3;
    public static final int VALUE_NULL = 5;

    byte[] bytesValue();

    void close();

    void config(com.alibaba.fastjson.parser.Feature feature, boolean z4);

    java.lang.Number decimalValue(boolean z4);

    java.math.BigDecimal decimalValue();

    float floatValue();

    char getCurrent();

    int getFeatures();

    java.util.Locale getLocale();

    java.util.TimeZone getTimeZone();

    java.lang.String info();

    int intValue();

    java.lang.Number integerValue();

    boolean isBlankInput();

    boolean isEnabled(int i5);

    boolean isEnabled(com.alibaba.fastjson.parser.Feature feature);

    boolean isRef();

    long longValue();

    char next();

    void nextToken();

    void nextToken(int i5);

    void nextTokenWithColon();

    void nextTokenWithColon(int i5);

    java.lang.String numberString();

    int pos();

    void resetStringPosition();

    boolean scanBoolean(char c5);

    java.math.BigDecimal scanDecimal(char c5);

    double scanDouble(char c5);

    java.lang.Enum<?> scanEnum(java.lang.Class<?> cls, com.alibaba.fastjson.parser.SymbolTable symbolTable, char c5);

    float scanFloat(char c5);

    int scanInt(char c5);

    long scanLong(char c5);

    void scanNumber();

    java.lang.String scanString(char c5);

    void scanString();

    void scanStringArray(java.util.Collection<java.lang.String> collection, char c5);

    java.lang.String scanSymbol(com.alibaba.fastjson.parser.SymbolTable symbolTable);

    java.lang.String scanSymbol(com.alibaba.fastjson.parser.SymbolTable symbolTable, char c5);

    java.lang.String scanSymbolUnQuoted(com.alibaba.fastjson.parser.SymbolTable symbolTable);

    java.lang.String scanSymbolWithSeperator(com.alibaba.fastjson.parser.SymbolTable symbolTable, char c5);

    java.lang.String scanTypeName(com.alibaba.fastjson.parser.SymbolTable symbolTable);

    void setFeatures(int i5);

    void setLocale(java.util.Locale locale);

    void setTimeZone(java.util.TimeZone timeZone);

    void skipWhitespace();

    java.lang.String stringVal();

    int token();

    java.lang.String tokenName();
}
