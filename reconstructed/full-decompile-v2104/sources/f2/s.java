package f2;

/* JADX INFO: compiled from: XMLTokener.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class s extends f2.o {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final java.util.HashMap<java.lang.String, java.lang.Character> f4229i;

    static {
        java.util.HashMap<java.lang.String, java.lang.Character> map = new java.util.HashMap<>(8);
        f4229i = map;
        map.put("amp", f2.r.f4220a);
        map.put("apos", f2.r.f4221b);
        map.put("gt", f2.r.f4224e);
        map.put("lt", f2.r.f4225f);
        map.put("quot", f2.r.f4227h);
    }

    public s(java.lang.CharSequence charSequence, f2.f fVar) {
        super(charSequence, fVar);
    }

    public static java.lang.String q(java.lang.String str) {
        if (str == null || str.isEmpty()) {
            return "";
        }
        if (str.charAt(0) == '#') {
            return new java.lang.String(new int[]{(str.charAt(1) == 'x' || str.charAt(1) == 'X') ? java.lang.Integer.parseInt(str.substring(2), 16) : java.lang.Integer.parseInt(str.substring(1))}, 0, 1);
        }
        java.lang.Character ch = f4229i.get(str);
        if (ch != null) {
            return ch.toString();
        }
        return '&' + str + ';';
    }

    public java.lang.String k() throws f2.h {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        while (true) {
            char cE = e();
            if (b()) {
                throw j("Unclosed CDATA");
            }
            sb.append(cE);
            int length = sb.length() - 3;
            if (length >= 0 && sb.charAt(length) == ']' && sb.charAt(length + 1) == ']' && sb.charAt(length + 2) == '>') {
                sb.setLength(length);
                return sb.toString();
            }
        }
    }

    public java.lang.Object l() throws f2.h {
        char cE;
        do {
            cE = e();
        } while (java.lang.Character.isWhitespace(cE));
        if (cE == 0) {
            return null;
        }
        if (cE == '<') {
            return f2.r.f4225f;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        while (cE != '<' && cE != 0) {
            if (cE == '&') {
                sb.append(m(cE));
            } else {
                sb.append(cE);
            }
            cE = e();
        }
        a();
        return sb.toString().trim();
    }

    public java.lang.Object m(char c5) throws f2.h {
        char cE;
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        while (true) {
            cE = e();
            if (!java.lang.Character.isLetterOrDigit(cE) && cE != '#') {
                break;
            }
            sb.append(java.lang.Character.toLowerCase(cE));
        }
        if (cE == ';') {
            return q(sb.toString());
        }
        throw j("Missing ';' in XML entity: &" + ((java.lang.Object) sb));
    }

    public java.lang.Object n() throws f2.h {
        char cE;
        char cE2;
        do {
            cE = e();
        } while (java.lang.Character.isWhitespace(cE));
        if (cE == 0) {
            throw j("Misshaped meta tag");
        }
        if (cE != '\'') {
            if (cE == '/') {
                return f2.r.f4228i;
            }
            if (cE == '!') {
                return f2.r.f4222c;
            }
            if (cE != '\"') {
                switch (cE) {
                    case '<':
                        return f2.r.f4225f;
                    case '=':
                        return f2.r.f4223d;
                    case '>':
                        return f2.r.f4224e;
                    case '?':
                        return f2.r.f4226g;
                }
                while (true) {
                    char cE3 = e();
                    if (!java.lang.Character.isWhitespace(cE3)) {
                        if (cE3 != 0 && cE3 != '\'' && cE3 != '/' && cE3 != '!' && cE3 != '\"') {
                            switch (cE3) {
                                case '<':
                                case '=':
                                case '>':
                                case '?':
                                    break;
                                default:
                                    break;
                            }
                        }
                    } else {
                        return java.lang.Boolean.TRUE;
                    }
                }
                a();
                return java.lang.Boolean.TRUE;
            }
        }
        do {
            cE2 = e();
            if (cE2 == 0) {
                throw j("Unterminated string");
            }
        } while (cE2 != cE);
        return java.lang.Boolean.TRUE;
    }

    public java.lang.Object o() throws f2.h {
        char cE;
        do {
            cE = e();
        } while (java.lang.Character.isWhitespace(cE));
        if (cE == 0) {
            throw j("Misshaped element");
        }
        if (cE != '\'') {
            if (cE == '/') {
                return f2.r.f4228i;
            }
            if (cE == '!') {
                return f2.r.f4222c;
            }
            if (cE != '\"') {
                switch (cE) {
                    case '<':
                        throw j("Misplaced '<'");
                    case '=':
                        return f2.r.f4223d;
                    case '>':
                        return f2.r.f4224e;
                    case '?':
                        return f2.r.f4226g;
                    default:
                        java.lang.StringBuilder sb = new java.lang.StringBuilder();
                        while (true) {
                            sb.append(cE);
                            cE = e();
                            if (java.lang.Character.isWhitespace(cE)) {
                                return sb.toString();
                            }
                            if (cE == 0) {
                                return sb.toString();
                            }
                            if (cE != '\'') {
                                if (cE != '/' && cE != '[' && cE != ']' && cE != '!') {
                                    if (cE != '\"') {
                                        switch (cE) {
                                            case '<':
                                                break;
                                            case '=':
                                            case '>':
                                            case '?':
                                                break;
                                            default:
                                                break;
                                        }
                                    }
                                }
                                a();
                                return sb.toString();
                            }
                            throw j("Bad character in a name");
                        }
                }
            }
        }
        java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
        while (true) {
            char cE2 = e();
            if (cE2 == 0) {
                throw j("Unterminated string");
            }
            if (cE2 == cE) {
                return sb2.toString();
            }
            if (cE2 == '&') {
                sb2.append(m(cE2));
            } else {
                sb2.append(cE2);
            }
        }
    }

    public boolean p(java.lang.String str) throws f2.h {
        boolean z4;
        int length = str.length();
        char[] cArr = new char[length];
        for (int i5 = 0; i5 < length; i5++) {
            char cE = e();
            if (cE == 0) {
                return false;
            }
            cArr[i5] = cE;
        }
        int i6 = 0;
        while (true) {
            int i7 = 0;
            int i8 = i6;
            while (true) {
                if (i7 >= length) {
                    z4 = true;
                    break;
                }
                if (cArr[i8] != str.charAt(i7)) {
                    z4 = false;
                    break;
                }
                i8++;
                if (i8 >= length) {
                    i8 -= length;
                }
                i7++;
            }
            if (z4) {
                return true;
            }
            char cE2 = e();
            if (cE2 == 0) {
                return false;
            }
            cArr[i6] = cE2;
            i6++;
            if (i6 >= length) {
                i6 -= length;
            }
        }
    }
}
