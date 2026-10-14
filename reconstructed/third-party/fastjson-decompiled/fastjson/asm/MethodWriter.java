package com.alibaba.fastjson.asm;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class MethodWriter implements com.alibaba.fastjson.asm.MethodVisitor {
    private int access;
    private com.alibaba.fastjson.asm.ByteVector code = new com.alibaba.fastjson.asm.ByteVector();
    public final com.alibaba.fastjson.asm.ClassWriter cw;
    private final int desc;
    public int exceptionCount;
    public int[] exceptions;
    private int maxLocals;
    private int maxStack;
    private final int name;
    public com.alibaba.fastjson.asm.MethodWriter next;

    public MethodWriter(com.alibaba.fastjson.asm.ClassWriter classWriter, int i5, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String[] strArr) {
        if (classWriter.firstMethod == null) {
            classWriter.firstMethod = this;
        } else {
            classWriter.lastMethod.next = this;
        }
        classWriter.lastMethod = this;
        this.cw = classWriter;
        this.access = i5;
        this.name = classWriter.newUTF8(str);
        this.desc = classWriter.newUTF8(str2);
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        int length = strArr.length;
        this.exceptionCount = length;
        this.exceptions = new int[length];
        for (int i6 = 0; i6 < this.exceptionCount; i6++) {
            this.exceptions[i6] = classWriter.newClassItem(strArr[i6]).index;
        }
    }

    public final int getSize() {
        int i5;
        if (this.code.length > 0) {
            this.cw.newUTF8("Code");
            i5 = this.code.length + 18 + 0 + 8;
        } else {
            i5 = 8;
        }
        if (this.exceptionCount <= 0) {
            return i5;
        }
        this.cw.newUTF8("Exceptions");
        return i5 + (this.exceptionCount * 2) + 8;
    }

    public final void put(com.alibaba.fastjson.asm.ByteVector byteVector) {
        byteVector.putShort(this.access & (-393217)).putShort(this.name).putShort(this.desc);
        int i5 = this.code.length > 0 ? 1 : 0;
        if (this.exceptionCount > 0) {
            i5++;
        }
        byteVector.putShort(i5);
        int i6 = this.code.length;
        if (i6 > 0) {
            byteVector.putShort(this.cw.newUTF8("Code")).putInt(i6 + 12 + 0);
            byteVector.putShort(this.maxStack).putShort(this.maxLocals);
            com.alibaba.fastjson.asm.ByteVector byteVectorPutInt = byteVector.putInt(this.code.length);
            com.alibaba.fastjson.asm.ByteVector byteVector2 = this.code;
            byteVectorPutInt.putByteArray(byteVector2.data, 0, byteVector2.length);
            byteVector.putShort(0);
            byteVector.putShort(0);
        }
        if (this.exceptionCount > 0) {
            byteVector.putShort(this.cw.newUTF8("Exceptions")).putInt((this.exceptionCount * 2) + 2);
            byteVector.putShort(this.exceptionCount);
            for (int i7 = 0; i7 < this.exceptionCount; i7++) {
                byteVector.putShort(this.exceptions[i7]);
            }
        }
    }

    @Override // com.alibaba.fastjson.asm.MethodVisitor
    public void visitEnd() {
    }

    @Override // com.alibaba.fastjson.asm.MethodVisitor
    public void visitFieldInsn(int i5, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        this.code.put12(i5, this.cw.newFieldItem(str, str2, str3).index);
    }

    @Override // com.alibaba.fastjson.asm.MethodVisitor
    public void visitIincInsn(int i5, int i6) {
        this.code.putByte(132).put11(i5, i6);
    }

    @Override // com.alibaba.fastjson.asm.MethodVisitor
    public void visitInsn(int i5) {
        this.code.putByte(i5);
    }

    @Override // com.alibaba.fastjson.asm.MethodVisitor
    public void visitIntInsn(int i5, int i6) {
        this.code.put11(i5, i6);
    }

    @Override // com.alibaba.fastjson.asm.MethodVisitor
    public void visitJumpInsn(int i5, com.alibaba.fastjson.asm.Label label) {
        if ((label.status & 2) != 0 && label.position - this.code.length < -32768) {
            throw new java.lang.UnsupportedOperationException();
        }
        this.code.putByte(i5);
        com.alibaba.fastjson.asm.ByteVector byteVector = this.code;
        label.put(this, byteVector, byteVector.length - 1, i5 == 200);
    }

    @Override // com.alibaba.fastjson.asm.MethodVisitor
    public void visitLabel(com.alibaba.fastjson.asm.Label label) {
        com.alibaba.fastjson.asm.ByteVector byteVector = this.code;
        label.resolve(this, byteVector.length, byteVector.data);
    }

    @Override // com.alibaba.fastjson.asm.MethodVisitor
    public void visitLdcInsn(java.lang.Object obj) {
        com.alibaba.fastjson.asm.Item itemNewConstItem = this.cw.newConstItem(obj);
        int i5 = itemNewConstItem.index;
        int i6 = itemNewConstItem.type;
        if (i6 == 5 || i6 == 6) {
            this.code.put12(20, i5);
        } else if (i5 >= 256) {
            this.code.put12(19, i5);
        } else {
            this.code.put11(18, i5);
        }
    }

    @Override // com.alibaba.fastjson.asm.MethodVisitor
    public void visitMaxs(int i5, int i6) {
        this.maxStack = i5;
        this.maxLocals = i6;
    }

    @Override // com.alibaba.fastjson.asm.MethodVisitor
    public void visitMethodInsn(int i5, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        boolean z4 = i5 == 185;
        com.alibaba.fastjson.asm.Item itemNewMethodItem = this.cw.newMethodItem(str, str2, str3, z4);
        int argumentsAndReturnSizes = itemNewMethodItem.intVal;
        if (!z4) {
            this.code.put12(i5, itemNewMethodItem.index);
            return;
        }
        if (argumentsAndReturnSizes == 0) {
            argumentsAndReturnSizes = com.alibaba.fastjson.asm.Type.getArgumentsAndReturnSizes(str3);
            itemNewMethodItem.intVal = argumentsAndReturnSizes;
        }
        this.code.put12(com.alibaba.fastjson.asm.Opcodes.INVOKEINTERFACE, itemNewMethodItem.index).put11(argumentsAndReturnSizes >> 2, 0);
    }

    @Override // com.alibaba.fastjson.asm.MethodVisitor
    public void visitTypeInsn(int i5, java.lang.String str) {
        this.code.put12(i5, this.cw.newClassItem(str).index);
    }

    @Override // com.alibaba.fastjson.asm.MethodVisitor
    public void visitVarInsn(int i5, int i6) {
        if (i6 < 4 && i5 != 169) {
            this.code.putByte((i5 < 54 ? ((i5 - 21) << 2) + 26 : ((i5 - 54) << 2) + 59) + i6);
        } else if (i6 >= 256) {
            this.code.putByte(196).put12(i5, i6);
        } else {
            this.code.put11(i5, i6);
        }
    }
}
