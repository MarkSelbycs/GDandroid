package com.alibaba.fastjson.asm;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class MethodCollector {
    public boolean debugInfoPresent;
    private final int ignoreCount;
    private final int paramCount;
    private final java.lang.StringBuilder result = new java.lang.StringBuilder();
    private int currentParameter = 0;

    public MethodCollector(int i5, int i6) {
        this.ignoreCount = i5;
        this.paramCount = i6;
        this.debugInfoPresent = i6 == 0;
    }

    public java.lang.String getResult() {
        return this.result.length() != 0 ? this.result.substring(1) : "";
    }

    public void visitLocalVariable(java.lang.String str, int i5) {
        int i6 = this.ignoreCount;
        if (i5 < i6 || i5 >= i6 + this.paramCount) {
            return;
        }
        if (!str.equals("arg" + this.currentParameter)) {
            this.debugInfoPresent = true;
        }
        this.result.append(',');
        this.result.append(str);
        this.currentParameter++;
    }
}
