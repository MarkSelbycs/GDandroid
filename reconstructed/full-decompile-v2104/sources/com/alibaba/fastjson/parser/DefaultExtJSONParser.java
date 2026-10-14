package com.alibaba.fastjson.parser;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@java.lang.Deprecated
public class DefaultExtJSONParser extends com.alibaba.fastjson.parser.DefaultJSONParser {
    public DefaultExtJSONParser(java.lang.String str) {
        this(str, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance());
    }

    public DefaultExtJSONParser(java.lang.String str, com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        super(str, parserConfig);
    }

    public DefaultExtJSONParser(java.lang.String str, com.alibaba.fastjson.parser.ParserConfig parserConfig, int i5) {
        super(str, parserConfig, i5);
    }

    public DefaultExtJSONParser(char[] cArr, int i5, com.alibaba.fastjson.parser.ParserConfig parserConfig, int i6) {
        super(cArr, i5, parserConfig, i6);
    }
}
