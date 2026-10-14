package com.alibaba.fastjson.support.geo;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@com.alibaba.fastjson.annotation.JSONType(orders = {"type", "id", "bbox", "coordinates", "properties"}, typeName = "Feature")
public class Feature extends com.alibaba.fastjson.support.geo.Geometry {
    private com.alibaba.fastjson.support.geo.Geometry geometry;
    private java.lang.String id;
    private java.util.Map<java.lang.String, java.lang.String> properties;

    public Feature() {
        super("Feature");
        this.properties = new java.util.LinkedHashMap();
    }

    public com.alibaba.fastjson.support.geo.Geometry getGeometry() {
        return this.geometry;
    }

    public java.lang.String getId() {
        return this.id;
    }

    public java.util.Map<java.lang.String, java.lang.String> getProperties() {
        return this.properties;
    }

    public void setGeometry(com.alibaba.fastjson.support.geo.Geometry geometry) {
        this.geometry = geometry;
    }

    public void setId(java.lang.String str) {
        this.id = str;
    }

    public void setProperties(java.util.Map<java.lang.String, java.lang.String> map) {
        this.properties = map;
    }
}
