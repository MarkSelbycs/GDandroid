package q1;

/* JADX INFO: compiled from: FastDateParser.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class f extends q1.a implements q1.c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f5769d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f5770e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public transient java.util.List<q1.f.l> f5771f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final java.util.Locale f5754g = new java.util.Locale("ja", "JP", "JP");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final java.util.Comparator<java.lang.String> f5755h = java.util.Comparator.reverseOrder();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final java.util.concurrent.ConcurrentMap<java.util.Locale, q1.f.k>[] f5756i = new java.util.concurrent.ConcurrentMap[17];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final q1.f.k f5757o = new q1.f.a(1);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final q1.f.k f5758p = new q1.f.b(2);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final q1.f.k f5759q = new q1.f.i(1);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final q1.f.k f5760r = new q1.f.i(3);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final q1.f.k f5761s = new q1.f.i(4);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final q1.f.k f5762t = new q1.f.i(6);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final q1.f.k f5763u = new q1.f.i(5);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final q1.f.k f5764v = new q1.f.c(7);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final q1.f.k f5765w = new q1.f.i(8);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final q1.f.k f5766x = new q1.f.i(11);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final q1.f.k f5767y = new q1.f.d(11);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final q1.f.k f5768z = new q1.f.e(10);
    public static final q1.f.k A = new q1.f.i(10);
    public static final q1.f.k B = new q1.f.i(12);
    public static final q1.f.k C = new q1.f.i(13);
    public static final q1.f.k D = new q1.f.i(14);

    /* JADX INFO: compiled from: FastDateParser.java */
    public static class a extends q1.f.i {
        public a(int i5) {
            super(i5);
        }

        @Override // q1.f.i
        public int c(q1.f fVar, int i5) {
            return i5 < 100 ? fVar.D(i5) : i5;
        }
    }

    /* JADX INFO: compiled from: FastDateParser.java */
    public static class b extends q1.f.i {
        public b(int i5) {
            super(i5);
        }

        @Override // q1.f.i
        public int c(q1.f fVar, int i5) {
            return i5 - 1;
        }
    }

    /* JADX INFO: compiled from: FastDateParser.java */
    public static class c extends q1.f.i {
        public c(int i5) {
            super(i5);
        }

        @Override // q1.f.i
        public int c(q1.f fVar, int i5) {
            if (i5 != 7) {
                return 1 + i5;
            }
            return 1;
        }
    }

    /* JADX INFO: compiled from: FastDateParser.java */
    public static class d extends q1.f.i {
        public d(int i5) {
            super(i5);
        }

        @Override // q1.f.i
        public int c(q1.f fVar, int i5) {
            if (i5 == 24) {
                return 0;
            }
            return i5;
        }
    }

    /* JADX INFO: compiled from: FastDateParser.java */
    public static class e extends q1.f.i {
        public e(int i5) {
            super(i5);
        }

        @Override // q1.f.i
        public int c(q1.f fVar, int i5) {
            if (i5 == 12) {
                return 0;
            }
            return i5;
        }
    }

    /* JADX INFO: renamed from: q1.f$f, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FastDateParser.java */
    public static class C0072f extends q1.f.j {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f5772b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final java.util.Locale f5773c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final java.util.Map<java.lang.String, java.lang.Integer> f5774d;

        public C0072f(int i5, java.util.Calendar calendar, java.util.Locale locale) {
            super(null);
            this.f5772b = i5;
            this.f5773c = locale;
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("((?iu)");
            this.f5774d = q1.f.F(calendar, locale, i5, sb);
            sb.setLength(sb.length() - 1);
            sb.append(")");
            d(sb);
        }

        @Override // q1.f.j
        public void e(q1.f fVar, java.util.Calendar calendar, java.lang.String str) {
            calendar.set(this.f5772b, this.f5774d.get(str.toLowerCase(this.f5773c)).intValue());
        }
    }

    /* JADX INFO: compiled from: FastDateParser.java */
    public static class g extends q1.f.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.String f5775a;

        public g(java.lang.String str) {
            super(null);
            this.f5775a = str;
        }

        @Override // q1.f.k
        public boolean a() {
            return false;
        }

        @Override // q1.f.k
        public boolean b(q1.f fVar, java.util.Calendar calendar, java.lang.String str, java.text.ParsePosition parsePosition, int i5) {
            for (int i6 = 0; i6 < this.f5775a.length(); i6++) {
                int index = parsePosition.getIndex() + i6;
                if (index == str.length()) {
                    parsePosition.setErrorIndex(index);
                    return false;
                }
                if (this.f5775a.charAt(i6) != str.charAt(index)) {
                    parsePosition.setErrorIndex(index);
                    return false;
                }
            }
            parsePosition.setIndex(this.f5775a.length() + parsePosition.getIndex());
            return true;
        }
    }

    /* JADX INFO: compiled from: FastDateParser.java */
    public static class h extends q1.f.j {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final q1.f.k f5776b = new q1.f.h("(Z|(?:[+-]\\d{2}))");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final q1.f.k f5777c = new q1.f.h("(Z|(?:[+-]\\d{2}\\d{2}))");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final q1.f.k f5778d = new q1.f.h("(Z|(?:[+-]\\d{2}(?::)\\d{2}))");

        public h(java.lang.String str) {
            super(null);
            c(str);
        }

        public static q1.f.k g(int i5) {
            if (i5 == 1) {
                return f5776b;
            }
            if (i5 == 2) {
                return f5777c;
            }
            if (i5 == 3) {
                return f5778d;
            }
            throw new java.lang.IllegalArgumentException("invalid number of X");
        }

        @Override // q1.f.j
        public void e(q1.f fVar, java.util.Calendar calendar, java.lang.String str) {
            if (java.util.Objects.equals(str, "Z")) {
                calendar.setTimeZone(java.util.TimeZone.getTimeZone("UTC"));
                return;
            }
            calendar.setTimeZone(java.util.TimeZone.getTimeZone("GMT" + str));
        }
    }

    /* JADX INFO: compiled from: FastDateParser.java */
    public static class i extends q1.f.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f5779a;

        public i(int i5) {
            super(null);
            this.f5779a = i5;
        }

        @Override // q1.f.k
        public boolean a() {
            return true;
        }

        @Override // q1.f.k
        public boolean b(q1.f fVar, java.util.Calendar calendar, java.lang.String str, java.text.ParsePosition parsePosition, int i5) {
            int index = parsePosition.getIndex();
            int length = str.length();
            if (i5 == 0) {
                while (index < length && java.lang.Character.isWhitespace(str.charAt(index))) {
                    index++;
                }
                parsePosition.setIndex(index);
            } else {
                int i6 = i5 + index;
                if (length > i6) {
                    length = i6;
                }
            }
            while (index < length && java.lang.Character.isDigit(str.charAt(index))) {
                index++;
            }
            if (parsePosition.getIndex() == index) {
                parsePosition.setErrorIndex(index);
                return false;
            }
            int i7 = java.lang.Integer.parseInt(str.substring(parsePosition.getIndex(), index));
            parsePosition.setIndex(index);
            calendar.set(this.f5779a, c(fVar, i7));
            return true;
        }

        public int c(q1.f fVar, int i5) {
            return i5;
        }
    }

    /* JADX INFO: compiled from: FastDateParser.java */
    public static abstract class j extends q1.f.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.util.regex.Pattern f5780a;

        public j() {
            super(null);
        }

        @Override // q1.f.k
        public boolean a() {
            return false;
        }

        @Override // q1.f.k
        public boolean b(q1.f fVar, java.util.Calendar calendar, java.lang.String str, java.text.ParsePosition parsePosition, int i5) {
            java.util.regex.Matcher matcher = this.f5780a.matcher(str.substring(parsePosition.getIndex()));
            if (!matcher.lookingAt()) {
                parsePosition.setErrorIndex(parsePosition.getIndex());
                return false;
            }
            parsePosition.setIndex(parsePosition.getIndex() + matcher.end(1));
            e(fVar, calendar, matcher.group(1));
            return true;
        }

        public void c(java.lang.String str) {
            this.f5780a = java.util.regex.Pattern.compile(str);
        }

        public void d(java.lang.StringBuilder sb) {
            c(sb.toString());
        }

        public abstract void e(q1.f fVar, java.util.Calendar calendar, java.lang.String str);

        public /* synthetic */ j(q1.f.a aVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: FastDateParser.java */
    public static abstract class k {
        public k() {
        }

        public /* synthetic */ k(q1.f.a aVar) {
            this();
        }

        public boolean a() {
            return false;
        }

        public abstract boolean b(q1.f fVar, java.util.Calendar calendar, java.lang.String str, java.text.ParsePosition parsePosition, int i5);
    }

    /* JADX INFO: compiled from: FastDateParser.java */
    public static class l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final q1.f.k f5781a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f5782b;

        public l(q1.f.k kVar, int i5) {
            this.f5781a = kVar;
            this.f5782b = i5;
        }

        public int a(java.util.ListIterator<q1.f.l> listIterator) {
            if (!this.f5781a.a() || !listIterator.hasNext()) {
                return 0;
            }
            q1.f.k kVar = listIterator.next().f5781a;
            listIterator.previous();
            if (kVar.a()) {
                return this.f5782b;
            }
            return 0;
        }
    }

    /* JADX INFO: compiled from: FastDateParser.java */
    public class m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.util.Calendar f5783a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f5784b;

        public m(java.util.Calendar calendar) {
            this.f5783a = calendar;
        }

        public q1.f.l a() {
            if (this.f5784b >= q1.f.this.f5748a.length()) {
                return null;
            }
            char cCharAt = q1.f.this.f5748a.charAt(this.f5784b);
            return q1.f.T(cCharAt) ? b(cCharAt) : c();
        }

        public final q1.f.l b(char c5) {
            int i5 = this.f5784b;
            do {
                int i6 = this.f5784b + 1;
                this.f5784b = i6;
                if (i6 >= q1.f.this.f5748a.length()) {
                    break;
                }
            } while (q1.f.this.f5748a.charAt(this.f5784b) == c5);
            int i7 = this.f5784b - i5;
            return new q1.f.l(q1.f.this.M(c5, i7, this.f5783a), i7);
        }

        public final q1.f.l c() {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            boolean z4 = false;
            while (this.f5784b < q1.f.this.f5748a.length()) {
                char cCharAt = q1.f.this.f5748a.charAt(this.f5784b);
                if (!z4 && q1.f.T(cCharAt)) {
                    break;
                }
                if (cCharAt == '\'') {
                    int i5 = this.f5784b + 1;
                    this.f5784b = i5;
                    if (i5 == q1.f.this.f5748a.length() || q1.f.this.f5748a.charAt(this.f5784b) != '\'') {
                        z4 = !z4;
                    }
                }
                this.f5784b++;
                sb.append(cCharAt);
            }
            if (z4) {
                throw new java.lang.IllegalArgumentException("Unterminated quote");
            }
            java.lang.String string = sb.toString();
            return new q1.f.l(new q1.f.g(string), string.length());
        }
    }

    /* JADX INFO: compiled from: FastDateParser.java */
    public static class n extends q1.f.j {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.util.Locale f5786b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final java.util.Map<java.lang.String, q1.f.n.a> f5787c;

        /* JADX INFO: compiled from: FastDateParser.java */
        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public java.util.TimeZone f5788a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f5789b;

            public a(java.util.TimeZone timeZone, boolean z4) {
                this.f5788a = timeZone;
                this.f5789b = z4 ? timeZone.getDSTSavings() : 0;
            }
        }

        public n(java.util.Locale locale) {
            super(null);
            this.f5787c = new java.util.HashMap();
            this.f5786b = locale;
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("((?iu)[+-]\\d{4}|[+-]\\d{2}:\\d{2}|GMT[+-]\\d{1,2}:\\d{2}");
            java.util.TreeSet<java.lang.String> treeSet = new java.util.TreeSet(q1.f.f5755h);
            for (java.lang.String[] strArr : java.text.DateFormatSymbols.getInstance(locale).getZoneStrings()) {
                java.lang.String str = strArr[0];
                if (!"GMT".equalsIgnoreCase(str)) {
                    java.util.TimeZone timeZone = java.util.TimeZone.getTimeZone(str);
                    q1.f.n.a aVar = new q1.f.n.a(timeZone, false);
                    q1.f.n.a aVar2 = aVar;
                    for (int i5 = 1; i5 < strArr.length; i5++) {
                        if (i5 == 3) {
                            aVar2 = new q1.f.n.a(timeZone, true);
                        } else if (i5 == 5) {
                            aVar2 = aVar;
                        }
                        if (strArr[i5] != null) {
                            java.lang.String lowerCase = strArr[i5].toLowerCase(locale);
                            if (treeSet.add(lowerCase)) {
                                this.f5787c.put(lowerCase, aVar2);
                            }
                        }
                    }
                }
            }
            for (java.lang.String str2 : treeSet) {
                sb.append('|');
                q1.f.U(sb, str2);
            }
            sb.append(")");
            d(sb);
        }

        @Override // q1.f.j
        public void e(q1.f fVar, java.util.Calendar calendar, java.lang.String str) {
            if (str.charAt(0) == '+' || str.charAt(0) == '-') {
                calendar.setTimeZone(java.util.TimeZone.getTimeZone("GMT" + str));
                return;
            }
            if (str.regionMatches(true, 0, "GMT", 0, 3)) {
                calendar.setTimeZone(java.util.TimeZone.getTimeZone(str.toUpperCase()));
            } else {
                calendar.set(16, this.f5787c.get(str.toLowerCase(this.f5786b)).f5789b);
                calendar.set(15, fVar.getTimeZone().getRawOffset());
            }
        }
    }

    public f(java.lang.String str, java.util.TimeZone timeZone, java.util.Locale locale, java.util.Date date) {
        int i5;
        super(str, timeZone, locale);
        java.util.Calendar calendar = java.util.Calendar.getInstance(timeZone, locale);
        if (date != null) {
            calendar.setTime(date);
            i5 = calendar.get(1);
        } else if (locale.equals(f5754g)) {
            i5 = 0;
        } else {
            calendar.setTime(new java.util.Date());
            i5 = calendar.get(1) - 80;
        }
        int i6 = (i5 / 100) * 100;
        this.f5769d = i6;
        this.f5770e = i5 - i6;
        P(calendar);
    }

    public static java.util.Map<java.lang.String, java.lang.Integer> F(java.util.Calendar calendar, java.util.Locale locale, int i5, java.lang.StringBuilder sb) {
        java.util.HashMap map = new java.util.HashMap();
        java.util.Map<java.lang.String, java.lang.Integer> displayNames = calendar.getDisplayNames(i5, 0, locale);
        java.util.TreeSet treeSet = new java.util.TreeSet(f5755h);
        for (java.util.Map.Entry<java.lang.String, java.lang.Integer> entry : displayNames.entrySet()) {
            java.lang.String lowerCase = entry.getKey().toLowerCase(locale);
            if (treeSet.add(lowerCase)) {
                map.put(lowerCase, entry.getValue());
            }
        }
        java.util.Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            U(sb, (java.lang.String) it.next()).append('|');
        }
        return map;
    }

    public static java.util.concurrent.ConcurrentMap<java.util.Locale, q1.f.k> H(int i5) {
        java.util.concurrent.ConcurrentMap<java.util.Locale, q1.f.k> concurrentMap;
        java.util.concurrent.ConcurrentMap<java.util.Locale, q1.f.k>[] concurrentMapArr = f5756i;
        synchronized (concurrentMapArr) {
            if (concurrentMapArr[i5] == null) {
                concurrentMapArr[i5] = new a2.u(3);
            }
            concurrentMap = concurrentMapArr[i5];
        }
        return concurrentMap;
    }

    public static boolean T(char c5) {
        return (c5 >= 'A' && c5 <= 'Z') || (c5 >= 'a' && c5 <= 'z');
    }

    /* JADX WARN: Code duplicated, block: B:22:0x002f  */
    public static java.lang.StringBuilder U(java.lang.StringBuilder sb, java.lang.String str) {
        for (int i5 = 0; i5 < str.length(); i5++) {
            char cCharAt = str.charAt(i5);
            if (cCharAt != '$' && cCharAt != '.' && cCharAt != '?' && cCharAt != '^' && cCharAt != '[' && cCharAt != '\\' && cCharAt != '{' && cCharAt != '|') {
                switch (cCharAt) {
                    case '(':
                    case ')':
                    case '*':
                    case '+':
                        sb.append('\\');
                        break;
                }
            } else {
                sb.append('\\');
            }
            sb.append(cCharAt);
        }
        return sb;
    }

    public final int D(int i5) {
        int i6 = this.f5769d + i5;
        return i5 >= this.f5770e ? i6 : i6 + 100;
    }

    public final q1.f.k I(int i5, java.util.Calendar calendar) {
        java.util.concurrent.ConcurrentMap<java.util.Locale, q1.f.k> concurrentMapH = H(i5);
        q1.f.k nVar = concurrentMapH.get(this.f5750c);
        if (nVar == null) {
            nVar = i5 == 15 ? new q1.f.n(this.f5750c) : new q1.f.C0072f(i5, calendar, this.f5750c);
            q1.f.k kVarPutIfAbsent = concurrentMapH.putIfAbsent(this.f5750c, nVar);
            if (kVarPutIfAbsent != null) {
                return kVarPutIfAbsent;
            }
        }
        return nVar;
    }

    public final q1.f.k M(char c5, int i5, java.util.Calendar calendar) {
        if (c5 != 'y') {
            if (c5 != 'z') {
                switch (c5) {
                    case 'D':
                        return f5762t;
                    case 'E':
                        return I(7, calendar);
                    case 'F':
                        return f5765w;
                    case 'G':
                        return I(0, calendar);
                    case 'H':
                        return f5766x;
                    default:
                        switch (c5) {
                            case 'K':
                                return A;
                            case 'M':
                                return i5 >= 3 ? I(2, calendar) : f5758p;
                            case 'S':
                                return D;
                            case 'a':
                                return I(9, calendar);
                            case 'd':
                                return f5763u;
                            case 'h':
                                return f5768z;
                            case 'k':
                                return f5767y;
                            case 'm':
                                return B;
                            case 's':
                                return C;
                            case 'u':
                                return f5764v;
                            case 'w':
                                return f5760r;
                            default:
                                switch (c5) {
                                    case 'W':
                                        return f5761s;
                                    case 'X':
                                        return q1.f.h.g(i5);
                                    case 'Y':
                                        break;
                                    case 'Z':
                                        if (i5 == 2) {
                                            return q1.f.h.f5778d;
                                        }
                                        break;
                                    default:
                                        throw new java.lang.IllegalArgumentException("Format '" + c5 + "' not supported");
                                }
                                break;
                        }
                        break;
                }
            }
            return I(15, calendar);
        }
        return i5 > 2 ? f5759q : f5757o;
    }

    public final void P(java.util.Calendar calendar) {
        this.f5771f = new java.util.ArrayList();
        q1.f.m mVar = new q1.f.m(calendar);
        while (true) {
            q1.f.l lVarA = mVar.a();
            if (lVarA == null) {
                return;
            } else {
                this.f5771f.add(lVarA);
            }
        }
    }

    @Override // q1.c
    public java.util.Date b(java.lang.String str, java.text.ParsePosition parsePosition) {
        java.util.Calendar calendar = java.util.Calendar.getInstance(this.f5749b, this.f5750c);
        calendar.clear();
        if (h(str, parsePosition, calendar)) {
            return calendar.getTime();
        }
        return null;
    }

    @Override // q1.c
    public boolean h(java.lang.String str, java.text.ParsePosition parsePosition, java.util.Calendar calendar) {
        java.util.ListIterator<q1.f.l> listIterator = this.f5771f.listIterator();
        while (listIterator.hasNext()) {
            q1.f.l next = listIterator.next();
            if (!next.f5781a.b(this, calendar, str, parsePosition, next.a(listIterator))) {
                return false;
            }
        }
        return true;
    }
}
