package v1;

/* JADX INFO: compiled from: PatternPool.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.util.regex.Pattern f6421a = java.util.regex.Pattern.compile("^\\w+$");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.util.regex.Pattern f6422b = java.util.regex.Pattern.compile("\\d+");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final java.util.regex.Pattern f6423c = java.util.regex.Pattern.compile("[a-zA-Z]+");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final java.util.regex.Pattern f6424d = java.util.regex.Pattern.compile("[⺀-\u2eff⼀-\u2fdf㇀-㇯㐀-䶿一-鿿豈-\ufaff𠀀-𪛟𪜀-\u2b73f𫝀-\u2b81f𫠠-\u2ceaf丽-\u2fa1f]");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.util.regex.Pattern f6425e = java.util.regex.Pattern.compile("[⺀-\u2eff⼀-\u2fdf㇀-㇯㐀-䶿一-鿿豈-\ufaff𠀀-𪛟𪜀-\u2b73f𫝀-\u2b81f𫠠-\u2ceaf丽-\u2fa1f]+");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final java.util.regex.Pattern f6426f = java.util.regex.Pattern.compile("\\$(\\d+)");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final java.util.regex.Pattern f6427g = java.util.regex.Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)$");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final java.util.regex.Pattern f6428h = java.util.regex.Pattern.compile("(([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]+|::(ffff(:0{1,4})?:)?((25[0-5]|(2[0-4]|1?[0-9])?[0-9])\\.){3}(25[0-5]|(2[0-4]|1?[0-9])?[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1?[0-9])?[0-9])\\.){3}(25[0-5]|(2[0-4]|1?[0-9])?[0-9]))");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final java.util.regex.Pattern f6429i = java.util.regex.Pattern.compile("^(\\d+(?:\\.\\d+)?)$");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final java.util.regex.Pattern f6430j = java.util.regex.Pattern.compile("(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)])", 2);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final java.util.regex.Pattern f6431k = java.util.regex.Pattern.compile("(?:0|86|\\+86)?1[3-9]\\d{9}");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final java.util.regex.Pattern f6432l = java.util.regex.Pattern.compile("(?:0|852|\\+852)?\\d{8}");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final java.util.regex.Pattern f6433m = java.util.regex.Pattern.compile("(?:0|886|\\+886)?(?:|-)09\\d{8}");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final java.util.regex.Pattern f6434n = java.util.regex.Pattern.compile("(?:0|853|\\+853)?(?:|-)6\\d{7}");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final java.util.regex.Pattern f6435o = java.util.regex.Pattern.compile("(010|02\\d|0[3-9]\\d{2})-?(\\d{6,8})");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final java.util.regex.Pattern f6436p = java.util.regex.Pattern.compile("0\\d{2,3}[\\- ]?[1-9]\\d{6,7}|[48]00[\\- ]?[1-9]\\d{2}[\\- ]?\\d{4}");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final java.util.regex.Pattern f6437q = java.util.regex.Pattern.compile("[1-9]\\d{5}[1-2]\\d{3}((0\\d)|(1[0-2]))(([012]\\d)|3[0-1])\\d{3}(\\d|X|x)");

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final java.util.regex.Pattern f6438r = java.util.regex.Pattern.compile("^(0[1-7]|1[0-356]|2[0-7]|3[0-6]|4[0-7]|5[0-7]|6[0-7]|7[0-5]|8[0-9]|9[0-8])\\d{4}|99907[78]$");

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final java.util.regex.Pattern f6439s = java.util.regex.Pattern.compile("^(\\d{2,4})([/\\-.年]?)(\\d{1,2})([/\\-.月]?)(\\d{1,2})日?$");

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final java.util.regex.Pattern f6440t = java.util.regex.Pattern.compile("[a-zA-Z]+://[\\w-+&@#/%?=~_|!:,.;]*[\\w-+&@#/%=~_|]");

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final java.util.regex.Pattern f6441u = java.util.regex.Pattern.compile("(https?|ftp|file)://[\\w-+&@#/%?=~_|!:,.;]*[\\w-+&@#/%=~_|]", 2);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final java.util.regex.Pattern f6442v = java.util.regex.Pattern.compile("^[一-鿿\\w]+$");

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final java.util.regex.Pattern f6443w = java.util.regex.Pattern.compile("^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$", 2);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final java.util.regex.Pattern f6444x = java.util.regex.Pattern.compile("^[0-9a-fA-F]{32}$");

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final java.util.regex.Pattern f6445y = java.util.regex.Pattern.compile("((?:[a-fA-F0-9]{1,2}[:-]){5}[a-fA-F0-9]{1,2})|0x(\\d{12}).+ETHER", 2);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final java.util.regex.Pattern f6446z = java.util.regex.Pattern.compile("^[a-fA-F0-9]+$");
    public static final java.util.regex.Pattern A = java.util.regex.Pattern.compile("\\d{1,2}:\\d{1,2}(:\\d{1,2})?");
    public static final java.util.regex.Pattern B = java.util.regex.Pattern.compile("^(([京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领][A-Z](([0-9]{5}[ABCDEFGHJK])|([ABCDEFGHJK]([A-HJ-NP-Z0-9])[0-9]{4})))|([京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领]\\d{3}\\d{1,3}[领])|([京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领][A-Z][A-HJ-NP-Z0-9]{4}[A-HJ-NP-Z0-9挂学警港澳使领]))$");
    public static final java.util.regex.Pattern C = java.util.regex.Pattern.compile("^[0-9A-HJ-NPQRTUWXY]{2}\\d{6}[0-9A-HJ-NPQRTUWXY]{10}$");
    public static final java.util.regex.Pattern D = java.util.regex.Pattern.compile("^[A-HJ-NPR-Z0-9]{8}[0-9X][A-HJ-NPR-Z0-9]{2}\\d{6}$");
    public static final java.util.regex.Pattern E = java.util.regex.Pattern.compile("^[0-9]{12}$");
    public static final java.util.regex.Pattern F = java.util.regex.Pattern.compile("^[⺀-鿿·]{2,60}$");
    public static final a2.b0<v1.o.a, java.util.regex.Pattern> G = new a2.b0<>();

    /* JADX INFO: compiled from: PatternPool.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.String f6447a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f6448b;

        public a(java.lang.String str, int i5) {
            this.f6447a = str;
            this.f6448b = i5;
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            v1.o.a aVar = (v1.o.a) obj;
            if (this.f6448b != aVar.f6448b) {
                return false;
            }
            java.lang.String str = this.f6447a;
            if (str == null) {
                return aVar.f6447a == null;
            }
            return str.equals(aVar.f6447a);
        }

        public int hashCode() {
            int i5 = (this.f6448b + 31) * 31;
            java.lang.String str = this.f6447a;
            return i5 + (str == null ? 0 : str.hashCode());
        }
    }

    public static java.util.regex.Pattern b(final java.lang.String str, final int i5) {
        return G.computeIfAbsent(new v1.o.a(str, i5), new java.util.function.Function() { // from class: v1.n
            @Override // java.util.function.Function
            public final java.lang.Object apply(java.lang.Object obj) {
                return v1.o.c(str, i5, (v1.o.a) obj);
            }
        });
    }

    public static /* synthetic */ java.util.regex.Pattern c(java.lang.String str, int i5, v1.o.a aVar) {
        return java.util.regex.Pattern.compile(str, i5);
    }
}
