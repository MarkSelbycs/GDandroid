package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class SerializeFilterable {
    public java.util.List<com.alibaba.fastjson.serializer.BeforeFilter> beforeFilters = null;
    public java.util.List<com.alibaba.fastjson.serializer.AfterFilter> afterFilters = null;
    public java.util.List<com.alibaba.fastjson.serializer.PropertyFilter> propertyFilters = null;
    public java.util.List<com.alibaba.fastjson.serializer.ValueFilter> valueFilters = null;
    public java.util.List<com.alibaba.fastjson.serializer.NameFilter> nameFilters = null;
    public java.util.List<com.alibaba.fastjson.serializer.PropertyPreFilter> propertyPreFilters = null;
    public java.util.List<com.alibaba.fastjson.serializer.LabelFilter> labelFilters = null;
    public java.util.List<com.alibaba.fastjson.serializer.ContextValueFilter> contextValueFilters = null;
    public boolean writeDirect = true;

    public void addFilter(com.alibaba.fastjson.serializer.SerializeFilter serializeFilter) {
        if (serializeFilter == null) {
            return;
        }
        if (serializeFilter instanceof com.alibaba.fastjson.serializer.PropertyPreFilter) {
            getPropertyPreFilters().add((com.alibaba.fastjson.serializer.PropertyPreFilter) serializeFilter);
        }
        if (serializeFilter instanceof com.alibaba.fastjson.serializer.NameFilter) {
            getNameFilters().add((com.alibaba.fastjson.serializer.NameFilter) serializeFilter);
        }
        if (serializeFilter instanceof com.alibaba.fastjson.serializer.ValueFilter) {
            getValueFilters().add((com.alibaba.fastjson.serializer.ValueFilter) serializeFilter);
        }
        if (serializeFilter instanceof com.alibaba.fastjson.serializer.ContextValueFilter) {
            getContextValueFilters().add((com.alibaba.fastjson.serializer.ContextValueFilter) serializeFilter);
        }
        if (serializeFilter instanceof com.alibaba.fastjson.serializer.PropertyFilter) {
            getPropertyFilters().add((com.alibaba.fastjson.serializer.PropertyFilter) serializeFilter);
        }
        if (serializeFilter instanceof com.alibaba.fastjson.serializer.BeforeFilter) {
            getBeforeFilters().add((com.alibaba.fastjson.serializer.BeforeFilter) serializeFilter);
        }
        if (serializeFilter instanceof com.alibaba.fastjson.serializer.AfterFilter) {
            getAfterFilters().add((com.alibaba.fastjson.serializer.AfterFilter) serializeFilter);
        }
        if (serializeFilter instanceof com.alibaba.fastjson.serializer.LabelFilter) {
            getLabelFilters().add((com.alibaba.fastjson.serializer.LabelFilter) serializeFilter);
        }
    }

    public boolean apply(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.String str, java.lang.Object obj2) {
        java.util.List<com.alibaba.fastjson.serializer.PropertyFilter> list = jSONSerializer.propertyFilters;
        if (list != null) {
            java.util.Iterator<com.alibaba.fastjson.serializer.PropertyFilter> it = list.iterator();
            while (it.hasNext()) {
                if (!it.next().apply(obj, str, obj2)) {
                    return false;
                }
            }
        }
        java.util.List<com.alibaba.fastjson.serializer.PropertyFilter> list2 = this.propertyFilters;
        if (list2 == null) {
            return true;
        }
        java.util.Iterator<com.alibaba.fastjson.serializer.PropertyFilter> it2 = list2.iterator();
        while (it2.hasNext()) {
            if (!it2.next().apply(obj, str, obj2)) {
                return false;
            }
        }
        return true;
    }

    public boolean applyName(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.String str) {
        java.util.List<com.alibaba.fastjson.serializer.PropertyPreFilter> list = jSONSerializer.propertyPreFilters;
        if (list != null) {
            java.util.Iterator<com.alibaba.fastjson.serializer.PropertyPreFilter> it = list.iterator();
            while (it.hasNext()) {
                if (!it.next().apply(jSONSerializer, obj, str)) {
                    return false;
                }
            }
        }
        java.util.List<com.alibaba.fastjson.serializer.PropertyPreFilter> list2 = this.propertyPreFilters;
        if (list2 == null) {
            return true;
        }
        java.util.Iterator<com.alibaba.fastjson.serializer.PropertyPreFilter> it2 = list2.iterator();
        while (it2.hasNext()) {
            if (!it2.next().apply(jSONSerializer, obj, str)) {
                return false;
            }
        }
        return true;
    }

    public java.util.List<com.alibaba.fastjson.serializer.AfterFilter> getAfterFilters() {
        if (this.afterFilters == null) {
            this.afterFilters = new java.util.ArrayList();
            this.writeDirect = false;
        }
        return this.afterFilters;
    }

    public java.util.List<com.alibaba.fastjson.serializer.BeforeFilter> getBeforeFilters() {
        if (this.beforeFilters == null) {
            this.beforeFilters = new java.util.ArrayList();
            this.writeDirect = false;
        }
        return this.beforeFilters;
    }

    public java.util.List<com.alibaba.fastjson.serializer.ContextValueFilter> getContextValueFilters() {
        if (this.contextValueFilters == null) {
            this.contextValueFilters = new java.util.ArrayList();
            this.writeDirect = false;
        }
        return this.contextValueFilters;
    }

    public java.util.List<com.alibaba.fastjson.serializer.LabelFilter> getLabelFilters() {
        if (this.labelFilters == null) {
            this.labelFilters = new java.util.ArrayList();
            this.writeDirect = false;
        }
        return this.labelFilters;
    }

    public java.util.List<com.alibaba.fastjson.serializer.NameFilter> getNameFilters() {
        if (this.nameFilters == null) {
            this.nameFilters = new java.util.ArrayList();
            this.writeDirect = false;
        }
        return this.nameFilters;
    }

    public java.util.List<com.alibaba.fastjson.serializer.PropertyFilter> getPropertyFilters() {
        if (this.propertyFilters == null) {
            this.propertyFilters = new java.util.ArrayList();
            this.writeDirect = false;
        }
        return this.propertyFilters;
    }

    public java.util.List<com.alibaba.fastjson.serializer.PropertyPreFilter> getPropertyPreFilters() {
        if (this.propertyPreFilters == null) {
            this.propertyPreFilters = new java.util.ArrayList();
            this.writeDirect = false;
        }
        return this.propertyPreFilters;
    }

    public java.util.List<com.alibaba.fastjson.serializer.ValueFilter> getValueFilters() {
        if (this.valueFilters == null) {
            this.valueFilters = new java.util.ArrayList();
            this.writeDirect = false;
        }
        return this.valueFilters;
    }

    public java.lang.String processKey(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.String str, java.lang.Object obj2) {
        java.util.List<com.alibaba.fastjson.serializer.NameFilter> list = jSONSerializer.nameFilters;
        if (list != null) {
            java.util.Iterator<com.alibaba.fastjson.serializer.NameFilter> it = list.iterator();
            while (it.hasNext()) {
                str = it.next().process(obj, str, obj2);
            }
        }
        java.util.List<com.alibaba.fastjson.serializer.NameFilter> list2 = this.nameFilters;
        if (list2 != null) {
            java.util.Iterator<com.alibaba.fastjson.serializer.NameFilter> it2 = list2.iterator();
            while (it2.hasNext()) {
                str = it2.next().process(obj, str, obj2);
            }
        }
        return str;
    }

    public java.lang.Object processValue(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, com.alibaba.fastjson.serializer.BeanContext beanContext, java.lang.Object obj, java.lang.String str, java.lang.Object obj2) {
        return processValue(jSONSerializer, beanContext, obj, str, obj2, 0);
    }

    public boolean writeDirect(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer) {
        return jSONSerializer.out.writeDirect && this.writeDirect && jSONSerializer.writeDirect;
    }

    public java.lang.Object processValue(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, com.alibaba.fastjson.serializer.BeanContext beanContext, java.lang.Object obj, java.lang.String str, java.lang.Object obj2, int i5) {
        boolean z4;
        if (obj2 != null) {
            int i6 = jSONSerializer.out.features;
            com.alibaba.fastjson.serializer.SerializerFeature serializerFeature = com.alibaba.fastjson.serializer.SerializerFeature.WriteNonStringValueAsString;
            if ((com.alibaba.fastjson.serializer.SerializerFeature.isEnabled(i6, i5, serializerFeature) || !(beanContext == null || (beanContext.getFeatures() & serializerFeature.mask) == 0)) && (((z4 = obj2 instanceof java.lang.Number)) || (obj2 instanceof java.lang.Boolean))) {
                java.lang.String format = null;
                if (z4 && beanContext != null) {
                    format = beanContext.getFormat();
                }
                obj2 = format != null ? new java.text.DecimalFormat(format).format(obj2) : obj2.toString();
            } else if (beanContext != null && beanContext.isJsonDirect()) {
                obj2 = com.alibaba.fastjson.JSON.parse((java.lang.String) obj2);
            }
        }
        java.util.List<com.alibaba.fastjson.serializer.ValueFilter> list = jSONSerializer.valueFilters;
        if (list != null) {
            java.util.Iterator<com.alibaba.fastjson.serializer.ValueFilter> it = list.iterator();
            while (it.hasNext()) {
                obj2 = it.next().process(obj, str, obj2);
            }
        }
        java.util.List<com.alibaba.fastjson.serializer.ValueFilter> list2 = this.valueFilters;
        if (list2 != null) {
            java.util.Iterator<com.alibaba.fastjson.serializer.ValueFilter> it2 = list2.iterator();
            while (it2.hasNext()) {
                obj2 = it2.next().process(obj, str, obj2);
            }
        }
        java.util.List<com.alibaba.fastjson.serializer.ContextValueFilter> list3 = jSONSerializer.contextValueFilters;
        if (list3 != null) {
            java.util.Iterator<com.alibaba.fastjson.serializer.ContextValueFilter> it3 = list3.iterator();
            while (it3.hasNext()) {
                obj2 = it3.next().process(beanContext, obj, str, obj2);
            }
        }
        java.util.List<com.alibaba.fastjson.serializer.ContextValueFilter> list4 = this.contextValueFilters;
        if (list4 != null) {
            java.util.Iterator<com.alibaba.fastjson.serializer.ContextValueFilter> it4 = list4.iterator();
            while (it4.hasNext()) {
                obj2 = it4.next().process(beanContext, obj, str, obj2);
            }
        }
        return obj2;
    }
}
