package com.alibaba.fastjson.support.moneta;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class MonetaCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static final com.alibaba.fastjson.support.moneta.MonetaCodec instance = new com.alibaba.fastjson.support.moneta.MonetaCodec();

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        java.lang.String string;
        com.alibaba.fastjson.JSONObject object = defaultJSONParser.parseObject();
        java.lang.Object obj2 = object.get("currency");
        if (obj2 instanceof com.alibaba.fastjson.JSONObject) {
            string = ((com.alibaba.fastjson.JSONObject) obj2).getString("currencyCode");
        } else {
            string = obj2 instanceof java.lang.String ? (java.lang.String) obj2 : null;
        }
        java.lang.Object obj3 = object.get("numberStripped");
        if ((obj3 instanceof java.math.BigDecimal) || (obj3 instanceof java.lang.Integer) || (obj3 instanceof java.math.BigInteger)) {
            return (T) org.javamoney.moneta.Money.of((java.lang.Number) obj3, javax.money.Monetary.getCurrency(string, new java.lang.String[0]));
        }
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 0;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i5) throws java.io.IOException {
        org.javamoney.moneta.Money money = (org.javamoney.moneta.Money) obj;
        if (money == null) {
            jSONSerializer.writeNull();
            return;
        }
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        serializeWriter.writeFieldValue('{', "numberStripped", money.getNumberStripped());
        serializeWriter.writeFieldValue(',', "currency", money.getCurrency().getCurrencyCode());
        serializeWriter.write(125);
    }
}
