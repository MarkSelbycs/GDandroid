package com.alibaba.fastjson.support.geo;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@com.alibaba.fastjson.annotation.JSONType(orders = {"type", "bbox", "coordinates"}, typeName = "MultiPolygon")
public class MultiPolygon extends com.alibaba.fastjson.support.geo.Geometry {
    private double[][][][] coordinates;

    public MultiPolygon() {
        super("MultiPolygon");
    }

    public double[][][][] getCoordinates() {
        return this.coordinates;
    }

    public void setCoordinates(double[][][][] dArr) {
        this.coordinates = dArr;
    }
}
