package f2;

/* JADX INFO: compiled from: JSONUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class p {
    public static f2.e a(f2.f fVar) {
        return new f2.e(fVar);
    }

    public static java.lang.String b(char c5) {
        switch (c5) {
            case '\b':
                return "\\b";
            case '\t':
                return "\\t";
            case '\n':
                return "\\n";
            case 11:
            default:
                return (c5 < ' ' || (c5 >= 128 && c5 <= 160) || ((c5 >= 8192 && c5 <= 8208) || ((c5 >= 8232 && c5 <= 8239) || (c5 >= 8294 && c5 <= 8303)))) ? e2.m.a(c5) : java.lang.Character.toString(c5);
            case '\f':
                return "\\f";
            case '\r':
                return "\\r";
        }
    }

    public static boolean c(java.lang.Object obj) {
        return obj == null || (obj instanceof f2.j);
    }

    public static boolean d(java.lang.String str) {
        if (b2.c.q(str)) {
            return false;
        }
        return b2.c.v(b2.c.W(str), '[', ']');
    }

    public static f2.b e(java.lang.Object obj) {
        return f(obj, null);
    }

    public static f2.b f(java.lang.Object obj, f2.f fVar) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof f2.b) {
            return (f2.b) obj;
        }
        if (obj instanceof java.lang.CharSequence) {
            java.lang.String strW = b2.c.W((java.lang.CharSequence) obj);
            return d(strW) ? g(strW, fVar) : i(strW, fVar);
        }
        if (obj instanceof a2.j) {
            return i(obj, fVar);
        }
        return ((obj instanceof java.lang.Iterable) || (obj instanceof java.util.Iterator) || e2.c.s(obj)) ? g(obj, fVar) : i(obj, fVar);
    }

    public static f2.e g(java.lang.Object obj, f2.f fVar) {
        return new f2.e(obj, fVar);
    }

    public static f2.l h(java.lang.String str) {
        return f2.r.b(str);
    }

    public static f2.l i(java.lang.Object obj, f2.f fVar) {
        return new f2.l(obj, (f2.f) e2.p.d(fVar, f2.c.f4193a));
    }

    public static java.io.Writer j(java.lang.String str, java.io.Writer writer) throws java.io.IOException {
        return k(str, writer, true);
    }

    public static java.io.Writer k(java.lang.String str, java.io.Writer writer, boolean z4) throws java.io.IOException {
        if (b2.c.r(str)) {
            if (z4) {
                writer.write("\"\"");
            }
            return writer;
        }
        int length = str.length();
        if (z4) {
            writer.write(34);
        }
        for (int i5 = 0; i5 < length; i5++) {
            char cCharAt = str.charAt(i5);
            if (cCharAt == '\"' || cCharAt == '\\') {
                writer.write("\\");
                writer.write(cCharAt);
            } else {
                writer.write(b(cCharAt));
            }
        }
        if (z4) {
            writer.write(34);
        }
        return writer;
    }

    public static java.lang.String l(java.lang.String str) {
        return m(str, true);
    }

    public static java.lang.String m(java.lang.String str, boolean z4) {
        try {
            return k(str, new java.io.StringWriter(), z4).toString();
        } catch (java.io.IOException unused) {
            return "";
        }
    }

    public static java.lang.Object n(java.lang.Object obj, f2.f fVar) {
        if (obj == null) {
            if (fVar.q()) {
                return null;
            }
            return f2.j.f4206a;
        }
        if ((obj instanceof f2.b) || e2.p.i(obj) || (obj instanceof f2.n) || (obj instanceof java.lang.CharSequence) || (obj instanceof java.lang.Number) || e2.p.h(obj)) {
            return (!(obj instanceof java.lang.Number) || fVar.c() == null) ? obj : new n1.h((java.lang.Number) obj, fVar.c());
        }
        try {
            if (obj instanceof java.sql.SQLException) {
                return obj.toString();
            }
            if (!(obj instanceof java.lang.Iterable) && !e2.c.s(obj)) {
                if (!(obj instanceof java.util.Map) && !(obj instanceof java.util.Map.Entry)) {
                    if (!(obj instanceof java.util.Date) && !(obj instanceof java.util.Calendar) && !(obj instanceof java.time.temporal.TemporalAccessor)) {
                        if (obj instanceof java.lang.Enum) {
                            return obj.toString();
                        }
                        return e2.k.l(obj.getClass()) ? obj.toString() : new f2.l(obj, fVar);
                    }
                    return obj;
                }
                return new f2.l(obj, fVar);
            }
            return new f2.e(obj, fVar);
        } catch (java.lang.Exception unused) {
            return null;
        }
    }
}
