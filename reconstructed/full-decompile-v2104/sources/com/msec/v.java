package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class v implements com.msec.n {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static java.lang.String f3921e = com.msec.vvv.a(1610);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static java.lang.StringBuffer f3922h = new java.lang.StringBuffer();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private android.content.Context f3923a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private android.net.wifi.WifiManager f3924b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private java.util.List<android.net.wifi.ScanResult> f3925c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private android.net.wifi.WifiInfo f3926d = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f3927f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f3928g = true;

    private java.lang.String a(int i5) {
        return (i5 & 255) + com.msec.vvv.a(819) + ((i5 >> 8) & 255) + com.msec.vvv.a(819) + ((i5 >> 16) & 255) + com.msec.vvv.a(819) + ((i5 >> 24) & 255);
    }

    private void a(java.lang.StringBuilder sb, int i5) {
        com.msec.vvv.a(1609, new java.lang.Object[]{this, sb, java.lang.Integer.valueOf(i5)});
    }

    private int b(int i5) {
        switch (i5) {
            case 2412:
                return 1;
            case 2417:
                return 2;
            case 2422:
                return 3;
            case 2427:
                return 4;
            case 2432:
                return 5;
            case 2437:
                return 6;
            case 2442:
                return 7;
            case 2447:
                return 8;
            case 2452:
                return 9;
            case 2457:
                return 10;
            case 2462:
                return 11;
            case 2467:
                return 12;
            case 2472:
                return 13;
            case 2484:
                return 14;
            case 5180:
                return 36;
            case 5190:
                return 38;
            case 5200:
                return 40;
            case 5210:
                return 42;
            case 5220:
                return 44;
            case 5230:
                return 46;
            case 5240:
                return 48;
            case 5250:
                return 50;
            case 5260:
                return 52;
            case 5270:
                return 54;
            case 5280:
                return 56;
            case 5290:
                return 58;
            case 5300:
                return 60;
            case 5310:
                return 62;
            case 5320:
                return 64;
            case 5500:
                return 100;
            case 5510:
                return 102;
            case 5520:
                return 104;
            case 5530:
                return 106;
            case 5540:
                return 108;
            case 5550:
                return 110;
            case 5560:
                return 112;
            case 5570:
                return 114;
            case 5580:
                return 116;
            case 5590:
                return 118;
            case 5600:
                return 120;
            case 5610:
                return 122;
            case 5620:
                return 124;
            case 5630:
                return com.alibaba.fastjson.asm.Opcodes.IAND;
            case 5640:
                return com.alibaba.fastjson.asm.Opcodes.IOR;
            case 5660:
                return 132;
            case 5670:
                return 134;
            case 5680:
                return 136;
            case 5690:
                return 138;
            case 5700:
                return 140;
            case 5710:
                return 142;
            case 5720:
                return 144;
            case 5745:
                return com.alibaba.fastjson.asm.Opcodes.FCMPL;
            case 5755:
                return com.alibaba.fastjson.asm.Opcodes.DCMPL;
            case 5765:
                return com.alibaba.fastjson.asm.Opcodes.IFEQ;
            case 5775:
                return 155;
            case 5785:
                return 157;
            case 5795:
                return com.alibaba.fastjson.asm.Opcodes.IF_ICMPEQ;
            case 5805:
                return com.alibaba.fastjson.asm.Opcodes.IF_ICMPLT;
            case 5825:
                return com.alibaba.fastjson.asm.Opcodes.IF_ACMPEQ;
            default:
                return -1;
        }
    }

    public static java.lang.String b() {
        return (java.lang.String) com.msec.vvv.a(1608, null);
    }

    @android.annotation.TargetApi(23)
    private boolean c() {
        return ((java.lang.Boolean) com.msec.vvv.a(1655, new java.lang.Object[]{this})).booleanValue();
    }

    @Override // com.msec.n
    @android.annotation.TargetApi(21)
    public java.lang.String a() {
        return (java.lang.String) com.msec.vvv.a(1654, new java.lang.Object[]{this});
    }

    @Override // com.msec.n
    public void a(android.content.Context context) {
        com.msec.vvv.a(1653, new java.lang.Object[]{this, context});
    }
}
