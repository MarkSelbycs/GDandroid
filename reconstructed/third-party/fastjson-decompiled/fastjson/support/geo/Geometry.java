package com.alibaba.fastjson.support.geo;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@com.alibaba.fastjson.annotation.JSONType(seeAlso = {com.alibaba.fastjson.support.geo.GeometryCollection.class, com.alibaba.fastjson.support.geo.LineString.class, com.alibaba.fastjson.support.geo.MultiLineString.class, com.alibaba.fastjson.support.geo.Point.class, com.alibaba.fastjson.support.geo.MultiPoint.class, com.alibaba.fastjson.support.geo.Polygon.class, com.alibaba.fastjson.support.geo.MultiPolygon.class, com.alibaba.fastjson.support.geo.Feature.class, com.alibaba.fastjson.support.geo.FeatureCollection.class}, typeKey = "type")
public abstract class Geometry {
    private double[] bbox;
    private final java.lang.String type;

    public Geometry(java.lang.String str) {
        this.type = str;
    }

    public double[] getBbox() {
        return this.bbox;
    }

    public java.lang.String getType() {
        return this.type;
    }

    public void setBbox(double[] dArr) {
        this.bbox = dArr;
    }
}
