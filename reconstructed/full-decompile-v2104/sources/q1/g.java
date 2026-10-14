package q1;

/* JADX INFO: compiled from: FastDatePrinter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g extends q1.a implements q1.d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final java.util.concurrent.ConcurrentMap<q1.g.i, java.lang.String> f5790f = new a2.u(7);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public transient q1.g.f[] f5791d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public transient int f5792e;

    /* JADX INFO: compiled from: FastDatePrinter.java */
    public static class a implements q1.g.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final char f5793a;

        public a(char c5) {
            this.f5793a = c5;
        }

        @Override // q1.g.f
        public void b(java.lang.Appendable appendable, java.util.Calendar calendar) throws java.io.IOException {
            appendable.append(this.f5793a);
        }

        @Override // q1.g.f
        public int c() {
            return 1;
        }
    }

    /* JADX INFO: compiled from: FastDatePrinter.java */
    public static class b implements q1.g.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final q1.g.d f5794a;

        public b(q1.g.d dVar) {
            this.f5794a = dVar;
        }

        @Override // q1.g.d
        public void a(java.lang.Appendable appendable, int i5) throws java.io.IOException {
            this.f5794a.a(appendable, i5);
        }

        @Override // q1.g.f
        public void b(java.lang.Appendable appendable, java.util.Calendar calendar) throws java.io.IOException {
            int i5 = calendar.get(7);
            this.f5794a.a(appendable, i5 != 1 ? i5 - 1 : 7);
        }

        @Override // q1.g.f
        public int c() {
            return this.f5794a.c();
        }
    }

    /* JADX INFO: compiled from: FastDatePrinter.java */
    public static class c implements q1.g.f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final q1.g.c f5795b = new q1.g.c(3);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final q1.g.c f5796c = new q1.g.c(5);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final q1.g.c f5797d = new q1.g.c(6);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f5798a;

        public c(int i5) {
            this.f5798a = i5;
        }

        public static q1.g.c d(int i5) {
            if (i5 == 1) {
                return f5795b;
            }
            if (i5 == 2) {
                return f5796c;
            }
            if (i5 == 3) {
                return f5797d;
            }
            throw new java.lang.IllegalArgumentException("invalid number of X");
        }

        @Override // q1.g.f
        public void b(java.lang.Appendable appendable, java.util.Calendar calendar) throws java.io.IOException {
            int i5 = calendar.get(15) + calendar.get(16);
            if (i5 == 0) {
                appendable.append("Z");
                return;
            }
            if (i5 < 0) {
                appendable.append('-');
                i5 = -i5;
            } else {
                appendable.append('+');
            }
            int i6 = i5 / 3600000;
            q1.g.q(appendable, i6);
            int i7 = this.f5798a;
            if (i7 < 5) {
                return;
            }
            if (i7 == 6) {
                appendable.append(':');
            }
            q1.g.q(appendable, (i5 / 60000) - (i6 * 60));
        }

        @Override // q1.g.f
        public int c() {
            return this.f5798a;
        }
    }

    /* JADX INFO: compiled from: FastDatePrinter.java */
    public interface d extends q1.g.f {
        void a(java.lang.Appendable appendable, int i5) throws java.io.IOException;
    }

    /* JADX INFO: compiled from: FastDatePrinter.java */
    public static class e implements q1.g.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f5799a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f5800b;

        public e(int i5, int i6) {
            if (i6 < 3) {
                throw new java.lang.IllegalArgumentException();
            }
            this.f5799a = i5;
            this.f5800b = i6;
        }

        @Override // q1.g.d
        public final void a(java.lang.Appendable appendable, int i5) throws java.io.IOException {
            q1.g.u(appendable, i5, this.f5800b);
        }

        @Override // q1.g.f
        public void b(java.lang.Appendable appendable, java.util.Calendar calendar) throws java.io.IOException {
            a(appendable, calendar.get(this.f5799a));
        }

        @Override // q1.g.f
        public int c() {
            return this.f5800b;
        }
    }

    /* JADX INFO: compiled from: FastDatePrinter.java */
    public interface f {
        void b(java.lang.Appendable appendable, java.util.Calendar calendar) throws java.io.IOException;

        int c();
    }

    /* JADX INFO: renamed from: q1.g$g, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FastDatePrinter.java */
    public static class C0073g implements q1.g.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.String f5801a;

        public C0073g(java.lang.String str) {
            this.f5801a = str;
        }

        @Override // q1.g.f
        public void b(java.lang.Appendable appendable, java.util.Calendar calendar) throws java.io.IOException {
            appendable.append(this.f5801a);
        }

        @Override // q1.g.f
        public int c() {
            return this.f5801a.length();
        }
    }

    /* JADX INFO: compiled from: FastDatePrinter.java */
    public static class h implements q1.g.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f5802a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.lang.String[] f5803b;

        public h(int i5, java.lang.String[] strArr) {
            this.f5802a = i5;
            this.f5803b = strArr;
        }

        @Override // q1.g.f
        public void b(java.lang.Appendable appendable, java.util.Calendar calendar) throws java.io.IOException {
            appendable.append(this.f5803b[calendar.get(this.f5802a)]);
        }

        @Override // q1.g.f
        public int c() {
            int length = this.f5803b.length;
            int i5 = 0;
            while (true) {
                length--;
                if (length < 0) {
                    return i5;
                }
                int length2 = this.f5803b[length].length();
                if (length2 > i5) {
                    i5 = length2;
                }
            }
        }
    }

    /* JADX INFO: compiled from: FastDatePrinter.java */
    public static class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.util.TimeZone f5804a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f5805b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final java.util.Locale f5806c;

        public i(java.util.TimeZone timeZone, boolean z4, int i5, java.util.Locale locale) {
            this.f5804a = timeZone;
            if (z4) {
                this.f5805b = Integer.MIN_VALUE | i5;
            } else {
                this.f5805b = i5;
            }
            this.f5806c = locale;
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof q1.g.i)) {
                return false;
            }
            q1.g.i iVar = (q1.g.i) obj;
            return this.f5804a.equals(iVar.f5804a) && this.f5805b == iVar.f5805b && this.f5806c.equals(iVar.f5806c);
        }

        public int hashCode() {
            return (((this.f5805b * 31) + this.f5806c.hashCode()) * 31) + this.f5804a.hashCode();
        }
    }

    /* JADX INFO: compiled from: FastDatePrinter.java */
    public static class j implements q1.g.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.util.Locale f5807a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f5808b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final java.lang.String f5809c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final java.lang.String f5810d;

        public j(java.util.TimeZone timeZone, java.util.Locale locale, int i5) {
            this.f5807a = locale;
            this.f5808b = i5;
            this.f5809c = q1.g.M(timeZone, false, i5, locale);
            this.f5810d = q1.g.M(timeZone, true, i5, locale);
        }

        @Override // q1.g.f
        public void b(java.lang.Appendable appendable, java.util.Calendar calendar) throws java.io.IOException {
            java.util.TimeZone timeZone = calendar.getTimeZone();
            if (calendar.get(16) != 0) {
                appendable.append(q1.g.M(timeZone, true, this.f5808b, this.f5807a));
            } else {
                appendable.append(q1.g.M(timeZone, false, this.f5808b, this.f5807a));
            }
        }

        @Override // q1.g.f
        public int c() {
            return java.lang.Math.max(this.f5809c.length(), this.f5810d.length());
        }
    }

    /* JADX INFO: compiled from: FastDatePrinter.java */
    public static class k implements q1.g.f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final q1.g.k f5811b = new q1.g.k(true);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final q1.g.k f5812c = new q1.g.k(false);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f5813a;

        public k(boolean z4) {
            this.f5813a = z4;
        }

        @Override // q1.g.f
        public void b(java.lang.Appendable appendable, java.util.Calendar calendar) throws java.io.IOException {
            int i5 = calendar.get(15) + calendar.get(16);
            if (i5 < 0) {
                appendable.append('-');
                i5 = -i5;
            } else {
                appendable.append('+');
            }
            int i6 = i5 / 3600000;
            q1.g.q(appendable, i6);
            if (this.f5813a) {
                appendable.append(':');
            }
            q1.g.q(appendable, (i5 / 60000) - (i6 * 60));
        }

        @Override // q1.g.f
        public int c() {
            return 5;
        }
    }

    /* JADX INFO: compiled from: FastDatePrinter.java */
    public static class l implements q1.g.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final q1.g.d f5814a;

        public l(q1.g.d dVar) {
            this.f5814a = dVar;
        }

        @Override // q1.g.d
        public void a(java.lang.Appendable appendable, int i5) throws java.io.IOException {
            this.f5814a.a(appendable, i5);
        }

        @Override // q1.g.f
        public void b(java.lang.Appendable appendable, java.util.Calendar calendar) throws java.io.IOException {
            int leastMaximum = calendar.get(10);
            if (leastMaximum == 0) {
                leastMaximum = calendar.getLeastMaximum(10) + 1;
            }
            this.f5814a.a(appendable, leastMaximum);
        }

        @Override // q1.g.f
        public int c() {
            return this.f5814a.c();
        }
    }

    /* JADX INFO: compiled from: FastDatePrinter.java */
    public static class m implements q1.g.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final q1.g.d f5815a;

        public m(q1.g.d dVar) {
            this.f5815a = dVar;
        }

        @Override // q1.g.d
        public void a(java.lang.Appendable appendable, int i5) throws java.io.IOException {
            this.f5815a.a(appendable, i5);
        }

        @Override // q1.g.f
        public void b(java.lang.Appendable appendable, java.util.Calendar calendar) throws java.io.IOException {
            int maximum = calendar.get(11);
            if (maximum == 0) {
                maximum = calendar.getMaximum(11) + 1;
            }
            this.f5815a.a(appendable, maximum);
        }

        @Override // q1.g.f
        public int c() {
            return this.f5815a.c();
        }
    }

    /* JADX INFO: compiled from: FastDatePrinter.java */
    public static class n implements q1.g.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final q1.g.n f5816a = new q1.g.n();

        @Override // q1.g.d
        public final void a(java.lang.Appendable appendable, int i5) throws java.io.IOException {
            q1.g.q(appendable, i5);
        }

        @Override // q1.g.f
        public void b(java.lang.Appendable appendable, java.util.Calendar calendar) throws java.io.IOException {
            a(appendable, calendar.get(2) + 1);
        }

        @Override // q1.g.f
        public int c() {
            return 2;
        }
    }

    /* JADX INFO: compiled from: FastDatePrinter.java */
    public static class o implements q1.g.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f5817a;

        public o(int i5) {
            this.f5817a = i5;
        }

        @Override // q1.g.d
        public final void a(java.lang.Appendable appendable, int i5) throws java.io.IOException {
            if (i5 < 100) {
                q1.g.q(appendable, i5);
            } else {
                q1.g.u(appendable, i5, 2);
            }
        }

        @Override // q1.g.f
        public void b(java.lang.Appendable appendable, java.util.Calendar calendar) throws java.io.IOException {
            a(appendable, calendar.get(this.f5817a));
        }

        @Override // q1.g.f
        public int c() {
            return 2;
        }
    }

    /* JADX INFO: compiled from: FastDatePrinter.java */
    public static class p implements q1.g.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final q1.g.p f5818a = new q1.g.p();

        @Override // q1.g.d
        public final void a(java.lang.Appendable appendable, int i5) throws java.io.IOException {
            q1.g.q(appendable, i5);
        }

        @Override // q1.g.f
        public void b(java.lang.Appendable appendable, java.util.Calendar calendar) throws java.io.IOException {
            a(appendable, calendar.get(1) % 100);
        }

        @Override // q1.g.f
        public int c() {
            return 2;
        }
    }

    /* JADX INFO: compiled from: FastDatePrinter.java */
    public static class q implements q1.g.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final q1.g.q f5819a = new q1.g.q();

        @Override // q1.g.d
        public final void a(java.lang.Appendable appendable, int i5) throws java.io.IOException {
            if (i5 < 10) {
                appendable.append((char) (i5 + 48));
            } else {
                q1.g.q(appendable, i5);
            }
        }

        @Override // q1.g.f
        public void b(java.lang.Appendable appendable, java.util.Calendar calendar) throws java.io.IOException {
            a(appendable, calendar.get(2) + 1);
        }

        @Override // q1.g.f
        public int c() {
            return 2;
        }
    }

    /* JADX INFO: compiled from: FastDatePrinter.java */
    public static class r implements q1.g.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f5820a;

        public r(int i5) {
            this.f5820a = i5;
        }

        @Override // q1.g.d
        public final void a(java.lang.Appendable appendable, int i5) throws java.io.IOException {
            if (i5 < 10) {
                appendable.append((char) (i5 + 48));
            } else if (i5 < 100) {
                q1.g.q(appendable, i5);
            } else {
                q1.g.u(appendable, i5, 1);
            }
        }

        @Override // q1.g.f
        public void b(java.lang.Appendable appendable, java.util.Calendar calendar) throws java.io.IOException {
            a(appendable, calendar.get(this.f5820a));
        }

        @Override // q1.g.f
        public int c() {
            return 4;
        }
    }

    /* JADX INFO: compiled from: FastDatePrinter.java */
    public static class s implements q1.g.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final q1.g.d f5821a;

        public s(q1.g.d dVar) {
            this.f5821a = dVar;
        }

        @Override // q1.g.d
        public void a(java.lang.Appendable appendable, int i5) throws java.io.IOException {
            this.f5821a.a(appendable, i5);
        }

        @Override // q1.g.f
        public void b(java.lang.Appendable appendable, java.util.Calendar calendar) throws java.io.IOException {
            this.f5821a.a(appendable, calendar.getWeekYear());
        }

        @Override // q1.g.f
        public int c() {
            return this.f5821a.c();
        }
    }

    public g(java.lang.String str, java.util.TimeZone timeZone, java.util.Locale locale) {
        super(str, timeZone, locale);
        P();
    }

    public static java.lang.String M(java.util.TimeZone timeZone, boolean z4, int i5, java.util.Locale locale) {
        q1.g.i iVar = new q1.g.i(timeZone, z4, i5, locale);
        java.util.concurrent.ConcurrentMap<q1.g.i, java.lang.String> concurrentMap = f5790f;
        java.lang.String str = concurrentMap.get(iVar);
        if (str != null) {
            return str;
        }
        java.lang.String displayName = timeZone.getDisplayName(z4, i5, locale);
        java.lang.String strPutIfAbsent = concurrentMap.putIfAbsent(iVar, displayName);
        return strPutIfAbsent != null ? strPutIfAbsent : displayName;
    }

    public static void q(java.lang.Appendable appendable, int i5) throws java.io.IOException {
        appendable.append((char) ((i5 / 10) + 48));
        appendable.append((char) ((i5 % 10) + 48));
    }

    public static void u(java.lang.Appendable appendable, int i5, int i6) throws java.io.IOException {
        int i7;
        if (i5 < 10000) {
            if (i5 >= 1000) {
                i7 = 4;
            } else if (i5 < 100) {
                i7 = i5 < 10 ? 1 : 2;
            } else {
                i7 = 3;
            }
            for (int i8 = i6 - i7; i8 > 0; i8--) {
                appendable.append('0');
            }
            if (i7 != 1) {
                if (i7 != 2) {
                    if (i7 != 3) {
                        if (i7 != 4) {
                            return;
                        }
                        appendable.append((char) ((i5 / com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO) + 48));
                        i5 %= com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO;
                    }
                    if (i5 >= 100) {
                        appendable.append((char) ((i5 / 100) + 48));
                        i5 %= 100;
                    } else {
                        appendable.append('0');
                    }
                }
                if (i5 >= 10) {
                    appendable.append((char) ((i5 / 10) + 48));
                    i5 %= 10;
                } else {
                    appendable.append('0');
                }
            }
            appendable.append((char) (i5 + 48));
            return;
        }
        char[] cArr = new char[10];
        int i9 = 0;
        while (i5 != 0) {
            cArr[i9] = (char) ((i5 % 10) + 48);
            i5 /= 10;
            i9++;
        }
        while (i9 < i6) {
            appendable.append('0');
            i6--;
        }
        while (true) {
            i9--;
            if (i9 < 0) {
                return;
            } else {
                appendable.append(cArr[i9]);
            }
        }
    }

    public <B extends java.lang.Appendable> B D(java.util.Calendar calendar, B b5) {
        if (!calendar.getTimeZone().equals(this.f5749b)) {
            calendar = (java.util.Calendar) calendar.clone();
            calendar.setTimeZone(this.f5749b);
        }
        return (B) x(calendar, b5);
    }

    public java.lang.String F(long j5) {
        java.util.Calendar calendar = java.util.Calendar.getInstance(this.f5749b, this.f5750c);
        calendar.setTimeInMillis(j5);
        return y(calendar);
    }

    public java.lang.String H(java.lang.Object obj) {
        if (obj instanceof java.util.Date) {
            return e((java.util.Date) obj);
        }
        if (obj instanceof java.util.Calendar) {
            return I((java.util.Calendar) obj);
        }
        if (obj instanceof java.lang.Long) {
            return F(((java.lang.Long) obj).longValue());
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("Unknown class: ");
        sb.append(obj == null ? "<null>" : obj.getClass().getName());
        throw new java.lang.IllegalArgumentException(sb.toString());
    }

    public java.lang.String I(java.util.Calendar calendar) {
        return ((java.lang.StringBuilder) D(calendar, new java.lang.StringBuilder(this.f5792e))).toString();
    }

    public final void P() {
        int iC = 0;
        q1.g.f[] fVarArr = (q1.g.f[]) T().toArray(new q1.g.f[0]);
        this.f5791d = fVarArr;
        int length = fVarArr.length;
        while (true) {
            length--;
            if (length < 0) {
                this.f5792e = iC;
                return;
            }
            iC += this.f5791d[length].c();
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0082  */
    /* JADX WARN: Code duplicated, block: B:64:0x0163  */
    /* JADX WARN: Code duplicated, block: B:65:0x0167  */
    /* JADX WARN: Code duplicated, block: B:68:0x0174  */
    /* JADX WARN: Code duplicated, block: B:77:0x017a A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v11, types: [q1.g$j] */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v4, types: [q1.g$d] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v80 */
    /* JADX WARN: Type inference failed for: r9v81 */
    /* JADX WARN: Type inference failed for: r9v82 */
    /* JADX WARN: Type inference failed for: r9v83 */
    /* JADX WARN: Type inference failed for: r9v84 */
    public java.util.List<q1.g.f> T() {
        boolean z4;
        ?? sVar;
        java.lang.Object hVar;
        java.text.DateFormatSymbols dateFormatSymbols = new java.text.DateFormatSymbols(this.f5750c);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.lang.String[] eras = dateFormatSymbols.getEras();
        java.lang.String[] months = dateFormatSymbols.getMonths();
        java.lang.String[] shortMonths = dateFormatSymbols.getShortMonths();
        java.lang.String[] weekdays = dateFormatSymbols.getWeekdays();
        java.lang.String[] shortWeekdays = dateFormatSymbols.getShortWeekdays();
        java.lang.String[] amPmStrings = dateFormatSymbols.getAmPmStrings();
        int length = this.f5748a.length();
        int[] iArr = new int[1];
        int i5 = 0;
        int i6 = 0;
        while (i6 < length) {
            iArr[i5] = i6;
            java.lang.String strU = U(this.f5748a, iArr);
            int i7 = iArr[i5];
            int length2 = strU.length();
            if (length2 == 0) {
                return arrayList;
            }
            char cCharAt = strU.charAt(i5);
            if (cCharAt == 'y') {
                i5 = 0;
                if (length2 == 2) {
                    z4 = true;
                    sVar = q1.g.p.f5818a;
                } else {
                    z4 = true;
                    sVar = V(1, java.lang.Math.max(length2, 4));
                }
                if (cCharAt == 'Y') {
                    sVar = new q1.g.s(sVar);
                    continue;
                }
            } else {
                if (cCharAt != 'z') {
                    switch (cCharAt) {
                        case '\'':
                            java.lang.String strSubstring = strU.substring(1);
                            hVar = strSubstring.length() == 1 ? new q1.g.a(strSubstring.charAt(0)) : new q1.g.C0073g(strSubstring);
                            i5 = 0;
                            sVar = hVar;
                            break;
                        case 'K':
                            hVar = V(10, length2);
                            i5 = 0;
                            sVar = hVar;
                            break;
                        case 'M':
                            if (length2 >= 4) {
                                hVar = new q1.g.h(2, months);
                            } else if (length2 == 3) {
                                hVar = new q1.g.h(2, shortMonths);
                            } else {
                                hVar = length2 == 2 ? q1.g.n.f5816a : q1.g.q.f5819a;
                            }
                            i5 = 0;
                            sVar = hVar;
                            break;
                        case 'S':
                            hVar = V(14, length2);
                            i5 = 0;
                            sVar = hVar;
                            break;
                        case 'a':
                            hVar = new q1.g.h(9, amPmStrings);
                            i5 = 0;
                            sVar = hVar;
                            break;
                        case 'd':
                            hVar = V(5, length2);
                            i5 = 0;
                            sVar = hVar;
                            break;
                        case 'h':
                            hVar = new q1.g.l(V(10, length2));
                            i5 = 0;
                            sVar = hVar;
                            break;
                        case 'k':
                            hVar = new q1.g.m(V(11, length2));
                            i5 = 0;
                            sVar = hVar;
                            break;
                        case 'm':
                            hVar = V(12, length2);
                            i5 = 0;
                            sVar = hVar;
                            break;
                        case 's':
                            hVar = V(13, length2);
                            i5 = 0;
                            sVar = hVar;
                            break;
                        case 'u':
                            hVar = new q1.g.b(V(7, length2));
                            i5 = 0;
                            sVar = hVar;
                            break;
                        case 'w':
                            hVar = V(3, length2);
                            i5 = 0;
                            sVar = hVar;
                            break;
                        default:
                            switch (cCharAt) {
                                case 'D':
                                    hVar = V(6, length2);
                                    i5 = 0;
                                    sVar = hVar;
                                    break;
                                case 'E':
                                    hVar = new q1.g.h(7, length2 < 4 ? shortWeekdays : weekdays);
                                    i5 = 0;
                                    sVar = hVar;
                                    break;
                                case 'F':
                                    hVar = V(8, length2);
                                    i5 = 0;
                                    sVar = hVar;
                                    break;
                                case 'G':
                                    i5 = 0;
                                    sVar = new q1.g.h(0, eras);
                                    break;
                                case 'H':
                                    hVar = V(11, length2);
                                    i5 = 0;
                                    sVar = hVar;
                                    break;
                                default:
                                    switch (cCharAt) {
                                        case 'W':
                                            hVar = V(4, length2);
                                            break;
                                        case 'X':
                                            hVar = q1.g.c.d(length2);
                                            break;
                                        case 'Y':
                                            i5 = 0;
                                            if (length2 == 2) {
                                                z4 = true;
                                                sVar = q1.g.p.f5818a;
                                            } else {
                                                z4 = true;
                                                sVar = V(1, java.lang.Math.max(length2, 4));
                                            }
                                            if (cCharAt == 'Y') {
                                                sVar = new q1.g.s(sVar);
                                                continue;
                                            }
                                            break;
                                        case 'Z':
                                            if (length2 != 1) {
                                                hVar = length2 != 2 ? q1.g.k.f5811b : q1.g.c.f5797d;
                                            } else {
                                                hVar = q1.g.k.f5812c;
                                            }
                                            break;
                                        default:
                                            throw new java.lang.IllegalArgumentException("Illegal pattern component: " + strU);
                                    }
                                    i5 = 0;
                                    sVar = hVar;
                                    break;
                            }
                            break;
                    }
                } else if (length2 >= 4) {
                    sVar = new q1.g.j(this.f5749b, this.f5750c, 1);
                    z4 = true;
                    i5 = 0;
                } else {
                    i5 = 0;
                    sVar = new q1.g.j(this.f5749b, this.f5750c, 0);
                }
                z4 = true;
            }
            arrayList.add(sVar);
            i6 = i7 + 1;
        }
        return arrayList;
    }

    public java.lang.String U(java.lang.String str, int[] iArr) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        int i5 = iArr[0];
        int length = str.length();
        char cCharAt = str.charAt(i5);
        if ((cCharAt < 'A' || cCharAt > 'Z') && (cCharAt < 'a' || cCharAt > 'z')) {
            sb.append('\'');
            boolean z4 = false;
            while (i5 < length) {
                char cCharAt2 = str.charAt(i5);
                if (cCharAt2 != '\'') {
                    if (!z4 && ((cCharAt2 >= 'A' && cCharAt2 <= 'Z') || (cCharAt2 >= 'a' && cCharAt2 <= 'z'))) {
                        i5--;
                        break;
                    }
                    sb.append(cCharAt2);
                } else {
                    int i6 = i5 + 1;
                    if (i6 >= length || str.charAt(i6) != '\'') {
                        z4 = !z4;
                    } else {
                        sb.append(cCharAt2);
                        i5 = i6;
                    }
                }
                i5++;
            }
        } else {
            sb.append(cCharAt);
            while (true) {
                int i7 = i5 + 1;
                if (i7 >= length || str.charAt(i7) != cCharAt) {
                    break;
                }
                sb.append(cCharAt);
                i5 = i7;
            }
        }
        iArr[0] = i5;
        return sb.toString();
    }

    public q1.g.d V(int i5, int i6) {
        if (i6 != 1) {
            return i6 != 2 ? new q1.g.e(i5, i6) : new q1.g.o(i5);
        }
        return new q1.g.r(i5);
    }

    @Override // q1.d
    public java.lang.String e(java.util.Date date) {
        java.util.Calendar calendar = java.util.Calendar.getInstance(this.f5749b, this.f5750c);
        calendar.setTime(date);
        return y(calendar);
    }

    public final <B extends java.lang.Appendable> B x(java.util.Calendar calendar, B b5) {
        try {
            for (q1.g.f fVar : this.f5791d) {
                fVar.b(b5, calendar);
            }
            return b5;
        } catch (java.io.IOException e5) {
            throw new p1.b(e5);
        }
    }

    public final java.lang.String y(java.util.Calendar calendar) {
        return ((java.lang.StringBuilder) x(calendar, new java.lang.StringBuilder(this.f5792e))).toString();
    }
}
