package com.alibaba.fastjson.support.geo;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@com.alibaba.fastjson.annotation.JSONType(orders = {"type", "bbox", "coordinates"}, typeName = "FeatureCollection")
public class FeatureCollection extends com.alibaba.fastjson.support.geo.Geometry {
    private java.util.List<com.alibaba.fastjson.support.geo.Feature> features;

    public FeatureCollection() {
        super("FeatureCollection");
        this.features = new java.util.ArrayList();
    }

    public java.util.List<com.alibaba.fastjson.support.geo.Feature> getFeatures() {
        return this.features;
    }
}
