package j4;

/* JADX INFO: compiled from: DistinguishedNameParser.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f4788a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4789b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4790c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4791d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4792e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4793f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public char[] f4794g;

    public c(javax.security.auth.x500.X500Principal x500Principal) {
        java.lang.String name = x500Principal.getName("RFC2253");
        this.f4788a = name;
        this.f4789b = name.length();
    }

    public final java.lang.String a() {
        int i5;
        int i6;
        int i7 = this.f4790c;
        this.f4791d = i7;
        this.f4792e = i7;
        while (true) {
            int i8 = this.f4790c;
            if (i8 >= this.f4789b) {
                char[] cArr = this.f4794g;
                int i9 = this.f4791d;
                return new java.lang.String(cArr, i9, this.f4792e - i9);
            }
            char[] cArr2 = this.f4794g;
            char c5 = cArr2[i8];
            if (c5 != ' ') {
                if (c5 != ';') {
                    if (c5 == '\\') {
                        int i10 = this.f4792e;
                        this.f4792e = i10 + 1;
                        cArr2[i10] = d();
                        this.f4790c++;
                    } else if (c5 != '+' && c5 != ',') {
                        int i11 = this.f4792e;
                        this.f4792e = i11 + 1;
                        cArr2[i11] = cArr2[i8];
                        this.f4790c = i8 + 1;
                    }
                }
                int i12 = this.f4791d;
                return new java.lang.String(cArr2, i12, this.f4792e - i12);
            }
            int i13 = this.f4792e;
            this.f4793f = i13;
            this.f4790c = i8 + 1;
            this.f4792e = i13 + 1;
            cArr2[i13] = ' ';
            while (true) {
                i5 = this.f4790c;
                i6 = this.f4789b;
                if (i5 >= i6) {
                    break;
                }
                char[] cArr3 = this.f4794g;
                if (cArr3[i5] != ' ') {
                    break;
                }
                int i14 = this.f4792e;
                this.f4792e = i14 + 1;
                cArr3[i14] = ' ';
                this.f4790c = i5 + 1;
            }
            if (i5 != i6) {
                char[] cArr4 = this.f4794g;
                if (cArr4[i5] == ',' || cArr4[i5] == '+' || cArr4[i5] == ';') {
                }
            }
            char[] cArr5 = this.f4794g;
            int i15 = this.f4791d;
            return new java.lang.String(cArr5, i15, this.f4793f - i15);
        }
    }

    public java.lang.String b(java.lang.String str) {
        java.lang.String strH;
        this.f4790c = 0;
        this.f4791d = 0;
        this.f4792e = 0;
        this.f4793f = 0;
        this.f4794g = this.f4788a.toCharArray();
        java.lang.String strG = g();
        if (strG == null) {
            return null;
        }
        do {
            int i5 = this.f4790c;
            if (i5 == this.f4789b) {
                return null;
            }
            char c5 = this.f4794g[i5];
            if (c5 == '\"') {
                strH = h();
            } else if (c5 != '#') {
                strH = (c5 == '+' || c5 == ',' || c5 == ';') ? "" : a();
            } else {
                strH = f();
            }
            if (str.equalsIgnoreCase(strG)) {
                return strH;
            }
            int i6 = this.f4790c;
            if (i6 >= this.f4789b) {
                return null;
            }
            char[] cArr = this.f4794g;
            if (cArr[i6] != ',' && cArr[i6] != ';' && cArr[i6] != '+') {
                throw new java.lang.IllegalStateException("Malformed DN: " + this.f4788a);
            }
            this.f4790c = i6 + 1;
            strG = g();
        } while (strG != null);
        throw new java.lang.IllegalStateException("Malformed DN: " + this.f4788a);
    }

    public final int c(int i5) {
        int i6;
        int i7;
        int i8 = i5 + 1;
        if (i8 >= this.f4789b) {
            throw new java.lang.IllegalStateException("Malformed DN: " + this.f4788a);
        }
        char[] cArr = this.f4794g;
        char c5 = cArr[i5];
        if (c5 >= '0' && c5 <= '9') {
            i6 = c5 - '0';
        } else if (c5 >= 'a' && c5 <= 'f') {
            i6 = c5 - 'W';
        } else {
            if (c5 < 'A' || c5 > 'F') {
                throw new java.lang.IllegalStateException("Malformed DN: " + this.f4788a);
            }
            i6 = c5 - '7';
        }
        char c6 = cArr[i8];
        if (c6 >= '0' && c6 <= '9') {
            i7 = c6 - '0';
        } else if (c6 >= 'a' && c6 <= 'f') {
            i7 = c6 - 'W';
        } else {
            if (c6 < 'A' || c6 > 'F') {
                throw new java.lang.IllegalStateException("Malformed DN: " + this.f4788a);
            }
            i7 = c6 - '7';
        }
        return (i6 << 4) + i7;
    }

    public final char d() {
        int i5 = this.f4790c + 1;
        this.f4790c = i5;
        if (i5 == this.f4789b) {
            throw new java.lang.IllegalStateException("Unexpected end of DN: " + this.f4788a);
        }
        char[] cArr = this.f4794g;
        char c5 = cArr[i5];
        if (c5 != ' ' && c5 != '%' && c5 != '\\' && c5 != '_' && c5 != '\"' && c5 != '#') {
            switch (c5) {
                case '*':
                case '+':
                case ',':
                    break;
                default:
                    switch (c5) {
                        case ';':
                        case '<':
                        case '=':
                        case '>':
                            break;
                        default:
                            return e();
                    }
                    break;
            }
        }
        return cArr[i5];
    }

    public final char e() {
        int i5;
        int i6;
        int iC = c(this.f4790c);
        this.f4790c++;
        if (iC < 128) {
            return (char) iC;
        }
        if (iC < 192 || iC > 247) {
            return '?';
        }
        if (iC <= 223) {
            i6 = iC & 31;
            i5 = 1;
        } else if (iC <= 239) {
            i5 = 2;
            i6 = iC & 15;
        } else {
            i5 = 3;
            i6 = iC & 7;
        }
        for (int i7 = 0; i7 < i5; i7++) {
            int i8 = this.f4790c + 1;
            this.f4790c = i8;
            if (i8 == this.f4789b || this.f4794g[i8] != '\\') {
                return '?';
            }
            int i9 = i8 + 1;
            this.f4790c = i9;
            int iC2 = c(i9);
            this.f4790c++;
            if ((iC2 & com.alibaba.fastjson.asm.Opcodes.CHECKCAST) != 128) {
                return '?';
            }
            i6 = (i6 << 6) + (iC2 & 63);
        }
        return (char) i6;
    }

    public final java.lang.String f() {
        int i5 = this.f4790c;
        if (i5 + 4 >= this.f4789b) {
            throw new java.lang.IllegalStateException("Unexpected end of DN: " + this.f4788a);
        }
        this.f4791d = i5;
        this.f4790c = i5 + 1;
        while (true) {
            int i6 = this.f4790c;
            if (i6 != this.f4789b) {
                char[] cArr = this.f4794g;
                if (cArr[i6] != '+' && cArr[i6] != ',' && cArr[i6] != ';') {
                    if (cArr[i6] == ' ') {
                        this.f4792e = i6;
                        this.f4790c = i6 + 1;
                        while (true) {
                            int i7 = this.f4790c;
                            if (i7 >= this.f4789b || this.f4794g[i7] != ' ') {
                                break;
                            }
                            this.f4790c = i7 + 1;
                        }
                    } else {
                        if (cArr[i6] >= 'A' && cArr[i6] <= 'F') {
                            cArr[i6] = (char) (cArr[i6] + ' ');
                        }
                        this.f4790c = i6 + 1;
                    }
                }
            }
            this.f4792e = i6;
            break;
        }
        int i8 = this.f4792e;
        int i9 = this.f4791d;
        int i10 = i8 - i9;
        if (i10 < 5 || (i10 & 1) == 0) {
            throw new java.lang.IllegalStateException("Unexpected end of DN: " + this.f4788a);
        }
        int i11 = i10 / 2;
        byte[] bArr = new byte[i11];
        int i12 = i9 + 1;
        for (int i13 = 0; i13 < i11; i13++) {
            bArr[i13] = (byte) c(i12);
            i12 += 2;
        }
        return new java.lang.String(this.f4794g, this.f4791d, i10);
    }

    public final java.lang.String g() {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        while (true) {
            i5 = this.f4790c;
            i6 = this.f4789b;
            if (i5 >= i6 || this.f4794g[i5] != ' ') {
                break;
            }
            this.f4790c = i5 + 1;
        }
        if (i5 == i6) {
            return null;
        }
        this.f4791d = i5;
        this.f4790c = i5 + 1;
        while (true) {
            i7 = this.f4790c;
            i8 = this.f4789b;
            if (i7 >= i8) {
                break;
            }
            char[] cArr = this.f4794g;
            if (cArr[i7] == '=' || cArr[i7] == ' ') {
                break;
            }
            this.f4790c = i7 + 1;
        }
        if (i7 >= i8) {
            throw new java.lang.IllegalStateException("Unexpected end of DN: " + this.f4788a);
        }
        this.f4792e = i7;
        if (this.f4794g[i7] == ' ') {
            while (true) {
                i9 = this.f4790c;
                i10 = this.f4789b;
                if (i9 >= i10) {
                    break;
                }
                char[] cArr2 = this.f4794g;
                if (cArr2[i9] == '=' || cArr2[i9] != ' ') {
                    break;
                }
                this.f4790c = i9 + 1;
            }
            if (this.f4794g[i9] != '=' || i9 == i10) {
                throw new java.lang.IllegalStateException("Unexpected end of DN: " + this.f4788a);
            }
        }
        this.f4790c++;
        while (true) {
            int i11 = this.f4790c;
            if (i11 >= this.f4789b || this.f4794g[i11] != ' ') {
                break;
            }
            this.f4790c = i11 + 1;
        }
        int i12 = this.f4792e;
        int i13 = this.f4791d;
        if (i12 - i13 > 4) {
            char[] cArr3 = this.f4794g;
            if (cArr3[i13 + 3] == '.' && ((cArr3[i13] == 'O' || cArr3[i13] == 'o') && ((cArr3[i13 + 1] == 'I' || cArr3[i13 + 1] == 'i') && (cArr3[i13 + 2] == 'D' || cArr3[i13 + 2] == 'd')))) {
                this.f4791d = i13 + 4;
            }
        }
        char[] cArr4 = this.f4794g;
        int i14 = this.f4791d;
        return new java.lang.String(cArr4, i14, i12 - i14);
    }

    public final java.lang.String h() {
        int i5 = this.f4790c + 1;
        this.f4790c = i5;
        this.f4791d = i5;
        this.f4792e = i5;
        while (true) {
            int i6 = this.f4790c;
            if (i6 == this.f4789b) {
                throw new java.lang.IllegalStateException("Unexpected end of DN: " + this.f4788a);
            }
            char[] cArr = this.f4794g;
            if (cArr[i6] == '\"') {
                this.f4790c = i6 + 1;
                while (true) {
                    int i7 = this.f4790c;
                    if (i7 >= this.f4789b || this.f4794g[i7] != ' ') {
                        break;
                    }
                    this.f4790c = i7 + 1;
                }
                char[] cArr2 = this.f4794g;
                int i8 = this.f4791d;
                return new java.lang.String(cArr2, i8, this.f4792e - i8);
            }
            if (cArr[i6] == '\\') {
                cArr[this.f4792e] = d();
            } else {
                cArr[this.f4792e] = cArr[i6];
            }
            this.f4790c++;
            this.f4792e++;
        }
    }
}
