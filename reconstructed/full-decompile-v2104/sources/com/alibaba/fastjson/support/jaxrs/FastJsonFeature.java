package com.alibaba.fastjson.support.jaxrs;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class FastJsonFeature implements javax.ws.rs.core.Feature {
    private static final java.lang.String JSON_FEATURE = com.alibaba.fastjson.support.jaxrs.FastJsonFeature.class.getSimpleName();

    public boolean configure(javax.ws.rs.core.FeatureContext featureContext) {
        try {
            javax.ws.rs.core.Configuration configuration = featureContext.getConfiguration();
            java.util.Map properties = configuration.getProperties();
            javax.ws.rs.RuntimeType runtimeType = configuration.getRuntimeType();
            java.lang.String str = JSON_FEATURE;
            if (!str.equalsIgnoreCase((java.lang.String) org.glassfish.jersey.CommonProperties.getValue(properties, runtimeType, "jersey.config.jsonFeature", str, java.lang.String.class))) {
                return false;
            }
            featureContext.property(org.glassfish.jersey.internal.util.PropertiesHelper.getPropertyNameForRuntime("jersey.config.jsonFeature", configuration.getRuntimeType()), str);
            if (!configuration.isRegistered(com.alibaba.fastjson.support.jaxrs.FastJsonProvider.class)) {
                featureContext.register(com.alibaba.fastjson.support.jaxrs.FastJsonProvider.class, new java.lang.Class[]{javax.ws.rs.ext.MessageBodyReader.class, javax.ws.rs.ext.MessageBodyWriter.class});
            }
        } catch (java.lang.NoSuchMethodError unused) {
        }
        return true;
    }
}
