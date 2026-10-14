package com.alibaba.fastjson.asm;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class FieldWriter {
    private final int access;
    private final int desc;
    private final int name;
    public com.alibaba.fastjson.asm.FieldWriter next;

    public FieldWriter(com.alibaba.fastjson.asm.ClassWriter classWriter, int i5, java.lang.String str, java.lang.String str2) {
        if (classWriter.firstField == null) {
            classWriter.firstField = this;
        } else {
            classWriter.lastField.next = this;
        }
        classWriter.lastField = this;
        this.access = i5;
        this.name = classWriter.newUTF8(str);
        this.desc = classWriter.newUTF8(str2);
    }

    public int getSize() {
        return 8;
    }

    public void put(com.alibaba.fastjson.asm.ByteVector byteVector) {
        byteVector.putShort(this.access & (-393217)).putShort(this.name).putShort(this.desc);
        byteVector.putShort(0);
    }

    public void visitEnd() {
    }
}
