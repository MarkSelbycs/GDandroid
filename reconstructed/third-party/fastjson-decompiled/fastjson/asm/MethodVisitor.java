package com.alibaba.fastjson.asm;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface MethodVisitor {
    void visitEnd();

    void visitFieldInsn(int i5, java.lang.String str, java.lang.String str2, java.lang.String str3);

    void visitIincInsn(int i5, int i6);

    void visitInsn(int i5);

    void visitIntInsn(int i5, int i6);

    void visitJumpInsn(int i5, com.alibaba.fastjson.asm.Label label);

    void visitLabel(com.alibaba.fastjson.asm.Label label);

    void visitLdcInsn(java.lang.Object obj);

    void visitMaxs(int i5, int i6);

    void visitMethodInsn(int i5, java.lang.String str, java.lang.String str2, java.lang.String str3);

    void visitTypeInsn(int i5, java.lang.String str);

    void visitVarInsn(int i5, int i6);
}
