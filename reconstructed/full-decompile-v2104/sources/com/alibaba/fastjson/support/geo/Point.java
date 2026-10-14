package com.alibaba.fastjson.support.geo;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@com.alibaba.fastjson.annotation.JSONType(orders = {"type", "bbox", "coordinates"}, typeName = "Point")
public class Point extends com.alibaba.fastjson.support.geo.Geometry {
    private double latitude;
    private double longitude;

    public Point() {
        super("Point");
    }

    public double[] getCoordinates() {
        return new double[]{this.longitude, this.latitude};
    }

    @com.alibaba.fastjson.annotation.JSONField(serialize = false)
    public double getLatitude() {
        return this.latitude;
    }

    @com.alibaba.fastjson.annotation.JSONField(serialize = false)
    public double getLongitude() {
        return this.longitude;
    }

    public void setCoordinates(double[] dArr) {
        if (dArr == null || dArr.length == 0) {
            this.longitude = 0.0d;
            this.latitude = 0.0d;
        } else if (dArr.length == 1) {
            this.longitude = dArr[0];
        } else {
            this.longitude = dArr[0];
            this.latitude = dArr[1];
        }
    }

    @com.alibaba.fastjson.annotation.JSONField(deserialize = false)
    public void setLatitude(double d5) {
        this.latitude = d5;
    }

    @com.alibaba.fastjson.annotation.JSONField(deserialize = false)
    public void setLongitude(double d5) {
        this.longitude = d5;
    }
}
