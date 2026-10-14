package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ae extends com.msec.ad {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3643d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3644e;

    public ae() {
        super(com.msec.vvv.a(724));
        this.f3643d = false;
        this.f3644e = 0;
    }

    private boolean a(int i5, int i6) {
        if (i5 == 215) {
            return i6 > 249;
        }
        switch (i5) {
            case com.alibaba.fastjson.asm.Opcodes.IF_ICMPLT /* 161 */:
                return i6 < 161;
            case com.alibaba.fastjson.asm.Opcodes.IF_ICMPGE /* 162 */:
                if (i6 >= 161) {
                    return (i6 > 170 && i6 < 177) || i6 == 228 || i6 == 239 || i6 == 240 || i6 == 253 || i6 == 254;
                }
                return true;
            case com.alibaba.fastjson.asm.Opcodes.IF_ICMPGT /* 163 */:
                return i6 < 160;
            case 164:
                return i6 < 161 || i6 > 243;
            case com.alibaba.fastjson.asm.Opcodes.IF_ACMPEQ /* 165 */:
                return i6 < 161 || i6 > 246;
            case com.alibaba.fastjson.asm.Opcodes.IF_ACMPNE /* 166 */:
                if (i6 >= 161) {
                    return (i6 > 184 && i6 < 193) || i6 > 245;
                }
                return true;
            case com.alibaba.fastjson.asm.Opcodes.GOTO /* 167 */:
                if (i6 >= 161) {
                    return (i6 > 193 && i6 < 209) || i6 > 242;
                }
                return true;
            case 168:
                if (i6 <= 149 || i6 >= 161) {
                    return (i6 > 192 && i6 < 197) || i6 > 233;
                }
                return true;
            case com.alibaba.fastjson.asm.Opcodes.RET /* 169 */:
                if (i6 == 88 || i6 == 91) {
                    return true;
                }
                if (i6 <= 92 || i6 >= 96) {
                    return (i6 > 150 && i6 < 164) || i6 > 239;
                }
                return true;
            case 170:
            case 171:
            case 172:
            case 173:
            case 174:
            case 175:
                break;
            default:
                switch (i5) {
                    case 248:
                    case 249:
                    case 250:
                    case 251:
                    case 252:
                    case 253:
                    case 254:
                        break;
                    default:
                        return false;
                }
                break;
        }
        return i6 > 160;
    }

    @Override // com.msec.ad
    public boolean a() {
        return (this.f3641b || this.f3643d) ? false : true;
    }

    @Override // com.msec.ad
    public boolean a(int i5) {
        return ((java.lang.Boolean) com.msec.vvv.a(1696, new java.lang.Object[]{this, java.lang.Integer.valueOf(i5)})).booleanValue();
    }
}
