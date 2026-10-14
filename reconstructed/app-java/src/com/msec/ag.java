package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ag extends com.msec.ad {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3647d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3648e;

    public ag() {
        super(com.msec.vvv.a(754));
        this.f3647d = false;
        this.f3648e = 0;
    }

    public static boolean a(int i5, int i6) {
        if (i6 == 159) {
            return i5 >= 208;
        }
        if (i6 == 215) {
            return i5 > 163;
        }
        if (i6 == 250) {
            return i5 > 109;
        }
        switch (i6) {
            case com.alibaba.fastjson.asm.Opcodes.IF_ACMPEQ /* 165 */:
            case 168:
            case com.alibaba.fastjson.asm.Opcodes.RET /* 169 */:
            case 170:
                return true;
            case com.alibaba.fastjson.asm.Opcodes.IF_ACMPNE /* 166 */:
                return i5 < 64 || i5 >= 160;
            case com.alibaba.fastjson.asm.Opcodes.GOTO /* 167 */:
                return (i5 > 147 && i5 < 160) || i5 > 170;
            case 171:
                return (i5 >= 48 && i5 < 112) || i5 >= 192;
            default:
                switch (i6) {
                    case 224:
                    case 225:
                    case 226:
                    case 227:
                    case 228:
                    case 229:
                    case 230:
                    case 233:
                    case 234:
                    case 235:
                    case 236:
                    case 237:
                    case 238:
                    case 239:
                    case 240:
                    case 241:
                    case 242:
                    case 243:
                    case 244:
                    case 245:
                    case 246:
                    case 247:
                        return true;
                    case 231:
                        if (i5 >= 144) {
                            return (i5 > 150 && i5 < 240) || i5 > 243;
                        }
                        return true;
                    case 232:
                        return i5 < 32 || i5 > 100;
                    default:
                        return false;
                }
        }
    }

    @Override // com.msec.ad
    public boolean a() {
        return (this.f3641b || this.f3647d) ? false : true;
    }

    @Override // com.msec.ad
    public boolean a(int i5) {
        return ((java.lang.Boolean) com.msec.vvv.a(1691, new java.lang.Object[]{this, java.lang.Integer.valueOf(i5)})).booleanValue();
    }

    @Override // com.msec.ad
    public boolean a(int i5, int i6, int i7) {
        return i5 == 255 && i6 == 254;
    }
}
