package com.alibaba.fastjson.support.geo;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@com.alibaba.fastjson.annotation.JSONType(orders = {"type", "bbox", "coordinates"}, typeName = "LineString")
public class LineString extends com.alibaba.fastjson.support.geo.Geometry {
    private double[][] coordinates;

    public LineString() {
        super("LineString");
    }

    public double[][] getCoordinates() {
        return this.coordinates;
    }

    public void setCoordinates(double[][] dArr) {
        this.coordinates = dArr;
    }
}
