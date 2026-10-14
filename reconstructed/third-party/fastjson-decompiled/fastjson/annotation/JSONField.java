package com.alibaba.fastjson.annotation;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@java.lang.annotation.Target({java.lang.annotation.ElementType.METHOD, java.lang.annotation.ElementType.FIELD, java.lang.annotation.ElementType.PARAMETER})
@java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.RUNTIME)
public @interface JSONField {
    java.lang.String[] alternateNames() default {};

    java.lang.String defaultValue() default "";

    boolean deserialize() default true;

    java.lang.Class<?> deserializeUsing() default java.lang.Void.class;

    java.lang.String format() default "";

    boolean jsonDirect() default false;

    java.lang.String label() default "";

    java.lang.String name() default "";

    int ordinal() default 0;

    com.alibaba.fastjson.parser.Feature[] parseFeatures() default {};

    boolean serialize() default true;

    java.lang.Class<?> serializeUsing() default java.lang.Void.class;

    com.alibaba.fastjson.serializer.SerializerFeature[] serialzeFeatures() default {};

    boolean unwrapped() default false;
}
