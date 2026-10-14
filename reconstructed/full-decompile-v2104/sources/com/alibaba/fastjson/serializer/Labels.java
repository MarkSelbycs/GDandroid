package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class Labels {

    public static class DefaultLabelFilter implements com.alibaba.fastjson.serializer.LabelFilter {
        private java.lang.String[] excludes;
        private java.lang.String[] includes;

        public DefaultLabelFilter(java.lang.String[] strArr, java.lang.String[] strArr2) {
            if (strArr != null) {
                java.lang.String[] strArr3 = new java.lang.String[strArr.length];
                this.includes = strArr3;
                java.lang.System.arraycopy(strArr, 0, strArr3, 0, strArr.length);
                java.util.Arrays.sort(this.includes);
            }
            if (strArr2 != null) {
                java.lang.String[] strArr4 = new java.lang.String[strArr2.length];
                this.excludes = strArr4;
                java.lang.System.arraycopy(strArr2, 0, strArr4, 0, strArr2.length);
                java.util.Arrays.sort(this.excludes);
            }
        }

        @Override // com.alibaba.fastjson.serializer.LabelFilter
        public boolean apply(java.lang.String str) {
            java.lang.String[] strArr = this.excludes;
            if (strArr != null) {
                return java.util.Arrays.binarySearch(strArr, str) < 0;
            }
            java.lang.String[] strArr2 = this.includes;
            return strArr2 != null && java.util.Arrays.binarySearch(strArr2, str) >= 0;
        }
    }

    public static com.alibaba.fastjson.serializer.LabelFilter excludes(java.lang.String... strArr) {
        return new com.alibaba.fastjson.serializer.Labels.DefaultLabelFilter(null, strArr);
    }

    public static com.alibaba.fastjson.serializer.LabelFilter includes(java.lang.String... strArr) {
        return new com.alibaba.fastjson.serializer.Labels.DefaultLabelFilter(strArr, null);
    }
}
