package p1;

/* JADX INFO: compiled from: DateUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class f extends p1.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.String[] f5475a = {"sun", "mon", "tue", "wed", "thu", "fri", "sat", "jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec", "gmt", "ut", "utc", "est", "edt", "cst", "cdt", "mst", "mdt", "pst", "pdt"};

    public static p1.e e(long j5) {
        return new p1.e(j5);
    }

    public static p1.e f(java.time.temporal.TemporalAccessor temporalAccessor) {
        if (temporalAccessor == null) {
            return null;
        }
        return new p1.e(temporalAccessor);
    }

    public static p1.e g(java.util.Calendar calendar) {
        if (calendar == null) {
            return null;
        }
        return new p1.e(calendar);
    }

    public static p1.e h(java.util.Date date) {
        if (date == null) {
            return null;
        }
        return date instanceof p1.e ? (p1.e) date : i(date);
    }

    public static p1.e i(java.util.Date date) {
        if (date == null) {
            return null;
        }
        return new p1.e(date);
    }

    public static java.lang.String j(java.util.Date date, java.lang.String str) {
        if (date == null || b2.c.q(str)) {
            return null;
        }
        if (q1.m.g(str)) {
            return q1.m.f(date, str);
        }
        return k(date, n(str, null, date instanceof p1.e ? ((p1.e) date).b() : null));
    }

    public static java.lang.String k(java.util.Date date, java.text.DateFormat dateFormat) {
        if (dateFormat == null || date == null) {
            return null;
        }
        return dateFormat.format(date);
    }

    public static java.lang.String l(java.util.Date date) {
        if (date == null) {
            return null;
        }
        return p1.c.f5448f.e(date);
    }

    public static java.text.SimpleDateFormat m(java.lang.String str) {
        return n(str, null, null);
    }

    public static java.text.SimpleDateFormat n(java.lang.String str, java.util.Locale locale, java.util.TimeZone timeZone) {
        if (locale == null) {
            locale = java.util.Locale.getDefault(java.util.Locale.Category.FORMAT);
        }
        java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(str, locale);
        if (timeZone != null) {
            simpleDateFormat.setTimeZone(timeZone);
        }
        simpleDateFormat.setLenient(false);
        return simpleDateFormat;
    }

    public static java.lang.String o(java.lang.CharSequence charSequence) {
        if (b2.c.q(charSequence)) {
            return b2.c.L(charSequence);
        }
        java.util.List<java.lang.String> listF = b2.c.F(charSequence, ' ');
        int size = listF.size();
        if (size < 1 || size > 2) {
            return b2.c.L(charSequence);
        }
        java.lang.StringBuilder sbC0 = e2.b0.c0();
        sbC0.append(b2.c.A(listF.get(0).replaceAll("[/.年月]", "-"), "日"));
        if (size == 2) {
            sbC0.append(' ');
            sbC0.append(b2.c.A(listF.get(1).replaceAll("[时分秒]", ":"), ":").replace(',', '.'));
        }
        return sbC0.toString();
    }

    public static java.lang.String p(java.lang.String str, java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2) {
        if (b2.c.q(charSequence2)) {
            return b2.c.Q(str, charSequence, true) + ((java.lang.Object) charSequence) + b2.c.S(b2.c.O(str, charSequence, true), 3);
        }
        return b2.c.Q(str, charSequence, true) + ((java.lang.Object) charSequence) + b2.c.S(b2.c.R(str, charSequence, charSequence2), 3) + ((java.lang.Object) charSequence2) + b2.c.O(str, charSequence2, true);
    }

    public static p1.e q(java.lang.CharSequence charSequence) {
        if (b2.c.q(charSequence)) {
            return null;
        }
        java.lang.String strX = b2.c.x(charSequence.toString().trim(), 26085, 31186);
        int length = strX.length();
        if (e2.o.d(strX)) {
            if (length == 14) {
                return s(strX, p1.c.f5468z);
            }
            if (length == 17) {
                return s(strX, p1.c.B);
            }
            if (length == 8) {
                return s(strX, p1.c.f5464v);
            }
            if (length == 6) {
                return s(strX, p1.c.f5466x);
            }
        } else {
            if (e2.r.c(v1.o.A, strX)) {
                return u(strX);
            }
            if (b2.c.d(strX, f5475a)) {
                return t(strX);
            }
            if (b2.c.b(strX, 'T')) {
                return v(strX);
            }
        }
        java.lang.String strO = o(strX);
        if (e2.r.c(p1.c.f5443a, strO)) {
            int iF = b2.c.f(strO, ':');
            if (iF == 0) {
                return s(strO, p1.c.f5448f);
            }
            if (iF == 1) {
                return s(strO, p1.c.f5452j);
            }
            if (iF == 2) {
                int iK = b2.c.k(strO, '.');
                if (iK <= 0) {
                    return s(strO, p1.c.f5454l);
                }
                if (strO.length() - iK > 4) {
                    strO = b2.c.S(strO, iK + 4);
                }
                return s(strO, p1.c.f5456n);
            }
        }
        throw new p1.b("No format fit for date String [{}] !", strO);
    }

    public static p1.e r(java.lang.CharSequence charSequence, java.lang.String str) {
        return new p1.e(charSequence, str);
    }

    public static p1.e s(java.lang.CharSequence charSequence, q1.c cVar) {
        return new p1.e(charSequence, cVar);
    }

    public static p1.e t(java.lang.CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        return s(charSequence, p1.c.E);
    }

    public static p1.e u(java.lang.CharSequence charSequence) {
        java.lang.String strI = b2.c.i("{} {}", x(), charSequence);
        return 1 == b2.c.f(strI, ':') ? r(strI, "yyyy-MM-dd HH:mm") : s(strI, p1.c.f5454l);
    }

    public static p1.e v(java.lang.String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (b2.c.b(str, 'Z')) {
            if (length == 20) {
                return s(str, p1.c.H);
            }
            if (length <= 24 && length >= 22) {
                return s(str, p1.c.K);
            }
        } else {
            if (b2.c.b(str, '+')) {
                java.lang.String strReplace = str.replace(" +", "+");
                java.lang.String strN = b2.c.N(strReplace, '+', true);
                if (b2.c.q(strN)) {
                    throw new p1.b("Invalid format: [{}]", strReplace);
                }
                if (!b2.c.b(strN, ':')) {
                    strReplace = b2.c.P(strReplace, '+', true) + "+" + strN.substring(0, 2) + ":00";
                }
                return b2.c.b(strReplace, '.') ? s(p(strReplace, ".", "+"), p1.c.M) : s(strReplace, p1.c.J);
            }
            if (e2.r.a("-\\d{2}:?00", str)) {
                java.lang.String strReplace2 = str.replace(" -", "-");
                if (':' != strReplace2.charAt(strReplace2.length() - 3)) {
                    strReplace2 = strReplace2.substring(0, strReplace2.length() - 2) + ":00";
                }
                return b2.c.b(strReplace2, '.') ? new p1.e(p(strReplace2, ".", "-"), p1.c.M) : new p1.e(strReplace2, p1.c.J);
            }
            if (length == 19) {
                return s(str, p1.c.F);
            }
            if (length == 16) {
                return s(str + ":00", p1.c.F);
            }
            if (b2.c.b(str, '.')) {
                return s(p(str, ".", null), p1.c.G);
            }
        }
        throw new p1.b("No format fit for date String [{}] !", str);
    }

    public static java.time.Instant w(java.time.temporal.TemporalAccessor temporalAccessor) {
        return p1.h.e(temporalAccessor);
    }

    public static java.lang.String x() {
        return l(new p1.e());
    }
}
