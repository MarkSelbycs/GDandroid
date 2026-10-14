package com.alibaba.fastjson.support.geo;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@com.alibaba.fastjson.annotation.JSONType(orders = {"type", "bbox", "geometries"}, typeName = "GeometryCollection")
public class GeometryCollection extends com.alibaba.fastjson.support.geo.Geometry {
    private java.util.List<com.alibaba.fastjson.support.geo.Geometry> geometries;

    public GeometryCollection() {
        super("GeometryCollection");
        this.geometries = new java.util.ArrayList();
    }

    public java.util.List<com.alibaba.fastjson.support.geo.Geometry> getGeometries() {
        return this.geometries;
    }
}
