package com.alibaba.fastjson.annotation;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@java.lang.annotation.Target({java.lang.annotation.ElementType.TYPE})
@java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.RUNTIME)
public @interface JSONType {
    boolean alphabetic() default true;

    boolean asm() default true;

    java.lang.Class<? extends com.alibaba.fastjson.parser.ParserConfig.AutoTypeCheckHandler> autoTypeCheckHandler() default com.alibaba.fastjson.parser.ParserConfig.AutoTypeCheckHandler.class;

    java.lang.Class<?> builder() default java.lang.Void.class;

    java.lang.Class<?> deserializer() default java.lang.Void.class;

    java.lang.String[] ignores() default {};

    java.lang.String[] includes() default {};

    java.lang.Class<?> mappingTo() default java.lang.Void.class;

    com.alibaba.fastjson.PropertyNamingStrategy naming() default com.alibaba.fastjson.PropertyNamingStrategy.NeverUseThisValueExceptDefaultValue;

    java.lang.String[] orders() default {};

    com.alibaba.fastjson.parser.Feature[] parseFeatures() default {};

    java.lang.Class<?>[] seeAlso() default {};

    boolean serializeEnumAsJavaBean() default false;

    java.lang.Class<?> serializer() default java.lang.Void.class;

    com.alibaba.fastjson.serializer.SerializerFeature[] serialzeFeatures() default {};

    java.lang.Class<? extends com.alibaba.fastjson.serializer.SerializeFilter>[] serialzeFilters() default {};

    java.lang.String typeKey() default "";

    java.lang.String typeName() default "";
}
