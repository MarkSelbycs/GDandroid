package com.alibaba.fastjson.asm;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
final class Item {
    public int hashCode;
    public int index;
    public int intVal;
    public long longVal;
    public com.alibaba.fastjson.asm.Item next;
    public java.lang.String strVal1;
    public java.lang.String strVal2;
    public java.lang.String strVal3;
    public int type;

    public Item() {
    }

    public boolean isEqualTo(com.alibaba.fastjson.asm.Item item) {
        int i5 = this.type;
        if (i5 != 1) {
            if (i5 != 15) {
                if (i5 == 12) {
                    return item.strVal1.equals(this.strVal1) && item.strVal2.equals(this.strVal2);
                }
                if (i5 != 13) {
                    switch (i5) {
                        case 3:
                        case 4:
                            return item.intVal == this.intVal;
                        case 5:
                        case 6:
                            break;
                        case 7:
                        case 8:
                            break;
                        default:
                            return item.strVal1.equals(this.strVal1) && item.strVal2.equals(this.strVal2) && item.strVal3.equals(this.strVal3);
                    }
                }
            }
            return item.longVal == this.longVal;
        }
        return item.strVal1.equals(this.strVal1);
    }

    public void set(int i5, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        this.type = i5;
        this.strVal1 = str;
        this.strVal2 = str2;
        this.strVal3 = str3;
        if (i5 != 1 && i5 != 7 && i5 != 8) {
            if (i5 == 12) {
                this.hashCode = (i5 + (str.hashCode() * str2.hashCode())) & Integer.MAX_VALUE;
                return;
            } else if (i5 != 13) {
                this.hashCode = (i5 + (str.hashCode() * str2.hashCode() * str3.hashCode())) & Integer.MAX_VALUE;
                return;
            }
        }
        this.hashCode = (i5 + str.hashCode()) & Integer.MAX_VALUE;
    }

    public Item(int i5, com.alibaba.fastjson.asm.Item item) {
        this.index = i5;
        this.type = item.type;
        this.intVal = item.intVal;
        this.longVal = item.longVal;
        this.strVal1 = item.strVal1;
        this.strVal2 = item.strVal2;
        this.strVal3 = item.strVal3;
        this.hashCode = item.hashCode;
    }

    public void set(int i5) {
        this.type = 3;
        this.intVal = i5;
        this.hashCode = Integer.MAX_VALUE & (3 + i5);
    }
}
