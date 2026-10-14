package w2;

/* JADX INFO: compiled from: ISO8601Utils.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.util.TimeZone f6711a = java.util.TimeZone.getTimeZone("UTC");

    public static boolean a(java.lang.String str, int i5, char c5) {
        return i5 < str.length() && str.charAt(i5) == c5;
    }

    public static int b(java.lang.String str, int i5) {
        while (i5 < str.length()) {
            char cCharAt = str.charAt(i5);
            if (cCharAt < '0' || cCharAt > '9') {
                return i5;
            }
            i5++;
        }
        return str.length();
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00cd A[Catch: IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x01bc, NumberFormatException -> 0x01be, IndexOutOfBoundsException -> 0x01c0, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x01bc, blocks: (B:3:0x0006, B:5:0x0018, B:6:0x001a, B:8:0x0026, B:9:0x0028, B:11:0x0037, B:13:0x003d, B:17:0x0052, B:19:0x0062, B:20:0x0064, B:22:0x0070, B:23:0x0072, B:25:0x0078, B:29:0x0082, B:34:0x0092, B:36:0x009a, B:47:0x00c7, B:49:0x00cd, B:51:0x00d4, B:76:0x0182, B:56:0x00e0, B:57:0x00f9, B:58:0x00fa, B:62:0x0116, B:64:0x0123, B:67:0x012c, B:69:0x014b, B:72:0x015a, B:73:0x017c, B:75:0x017f, B:61:0x0105, B:78:0x01b4, B:79:0x01bb, B:40:0x00b2, B:41:0x00b5), top: B:95:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00d4 A[Catch: IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x01bc, NumberFormatException -> 0x01be, IndexOutOfBoundsException -> 0x01c0, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x01bc, blocks: (B:3:0x0006, B:5:0x0018, B:6:0x001a, B:8:0x0026, B:9:0x0028, B:11:0x0037, B:13:0x003d, B:17:0x0052, B:19:0x0062, B:20:0x0064, B:22:0x0070, B:23:0x0072, B:25:0x0078, B:29:0x0082, B:34:0x0092, B:36:0x009a, B:47:0x00c7, B:49:0x00cd, B:51:0x00d4, B:76:0x0182, B:56:0x00e0, B:57:0x00f9, B:58:0x00fa, B:62:0x0116, B:64:0x0123, B:67:0x012c, B:69:0x014b, B:72:0x015a, B:73:0x017c, B:75:0x017f, B:61:0x0105, B:78:0x01b4, B:79:0x01bb, B:40:0x00b2, B:41:0x00b5), top: B:95:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:60:0x0104  */
    /* JADX WARN: Code duplicated, block: B:61:0x0105 A[Catch: IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x01bc, NumberFormatException -> 0x01be, IndexOutOfBoundsException -> 0x01c0, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x01bc, blocks: (B:3:0x0006, B:5:0x0018, B:6:0x001a, B:8:0x0026, B:9:0x0028, B:11:0x0037, B:13:0x003d, B:17:0x0052, B:19:0x0062, B:20:0x0064, B:22:0x0070, B:23:0x0072, B:25:0x0078, B:29:0x0082, B:34:0x0092, B:36:0x009a, B:47:0x00c7, B:49:0x00cd, B:51:0x00d4, B:76:0x0182, B:56:0x00e0, B:57:0x00f9, B:58:0x00fa, B:62:0x0116, B:64:0x0123, B:67:0x012c, B:69:0x014b, B:72:0x015a, B:73:0x017c, B:75:0x017f, B:61:0x0105, B:78:0x01b4, B:79:0x01bb, B:40:0x00b2, B:41:0x00b5), top: B:95:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x017f A[Catch: IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x01bc, NumberFormatException -> 0x01be, IndexOutOfBoundsException -> 0x01c0, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x01bc, blocks: (B:3:0x0006, B:5:0x0018, B:6:0x001a, B:8:0x0026, B:9:0x0028, B:11:0x0037, B:13:0x003d, B:17:0x0052, B:19:0x0062, B:20:0x0064, B:22:0x0070, B:23:0x0072, B:25:0x0078, B:29:0x0082, B:34:0x0092, B:36:0x009a, B:47:0x00c7, B:49:0x00cd, B:51:0x00d4, B:76:0x0182, B:56:0x00e0, B:57:0x00f9, B:58:0x00fa, B:62:0x0116, B:64:0x0123, B:67:0x012c, B:69:0x014b, B:72:0x015a, B:73:0x017c, B:75:0x017f, B:61:0x0105, B:78:0x01b4, B:79:0x01bb, B:40:0x00b2, B:41:0x00b5), top: B:95:0x0006 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x01b4 A[Catch: IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x01bc, NumberFormatException -> 0x01be, IndexOutOfBoundsException -> 0x01c0, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x01bc, blocks: (B:3:0x0006, B:5:0x0018, B:6:0x001a, B:8:0x0026, B:9:0x0028, B:11:0x0037, B:13:0x003d, B:17:0x0052, B:19:0x0062, B:20:0x0064, B:22:0x0070, B:23:0x0072, B:25:0x0078, B:29:0x0082, B:34:0x0092, B:36:0x009a, B:47:0x00c7, B:49:0x00cd, B:51:0x00d4, B:76:0x0182, B:56:0x00e0, B:57:0x00f9, B:58:0x00fa, B:62:0x0116, B:64:0x0123, B:67:0x012c, B:69:0x014b, B:72:0x015a, B:73:0x017c, B:75:0x017f, B:61:0x0105, B:78:0x01b4, B:79:0x01bb, B:40:0x00b2, B:41:0x00b5), top: B:95:0x0006 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:61:0x0105, please report this as an issue */
    public static java.util.Date c(java.lang.String str, java.text.ParsePosition parsePosition) throws java.text.ParseException {
        java.lang.String str2;
        int i5;
        int iD;
        int i6;
        int iD2;
        char cCharAt;
        java.lang.String strSubstring;
        int length;
        java.util.TimeZone timeZone;
        char cCharAt2;
        try {
            int index = parsePosition.getIndex();
            int i7 = index + 4;
            int iD3 = d(str, index, i7);
            if (a(str, i7, '-')) {
                i7++;
            }
            int i8 = i7 + 2;
            int iD4 = d(str, i7, i8);
            if (a(str, i8, '-')) {
                i8++;
            }
            int i9 = i8 + 2;
            int iD5 = d(str, i8, i9);
            boolean zA = a(str, i9, 'T');
            if (!zA && str.length() <= i9) {
                java.util.GregorianCalendar gregorianCalendar = new java.util.GregorianCalendar(iD3, iD4 - 1, iD5);
                parsePosition.setIndex(i9);
                return gregorianCalendar.getTime();
            }
            if (zA) {
                int i10 = i9 + 1;
                int i11 = i10 + 2;
                int iD6 = d(str, i10, i11);
                if (a(str, i11, ':')) {
                    i11++;
                }
                int i12 = i11 + 2;
                iD = d(str, i11, i12);
                if (a(str, i12, ':')) {
                    i12++;
                }
                if (str.length() <= i12 || (cCharAt2 = str.charAt(i12)) == 'Z' || cCharAt2 == '+' || cCharAt2 == '-') {
                    i5 = iD6;
                    i9 = i12;
                } else {
                    int i13 = i12 + 2;
                    iD2 = d(str, i12, i13);
                    if (iD2 > 59 && iD2 < 63) {
                        iD2 = 59;
                    }
                    if (a(str, i13, '.')) {
                        int i14 = i13 + 1;
                        int iB = b(str, i14 + 1);
                        int iMin = java.lang.Math.min(iB, i14 + 3);
                        int iD7 = d(str, i14, iMin);
                        int i15 = iMin - i14;
                        if (i15 == 1) {
                            iD7 *= 100;
                        } else if (i15 == 2) {
                            iD7 *= 10;
                        }
                        i5 = iD6;
                        i9 = iB;
                        i6 = iD7;
                    } else {
                        i5 = iD6;
                        i9 = i13;
                        i6 = 0;
                    }
                }
                if (str.length() > i9) {
                    throw new java.lang.IllegalArgumentException("No time zone indicator");
                }
                cCharAt = str.charAt(i9);
                if (cCharAt == 'Z') {
                    timeZone = f6711a;
                    length = i9 + 1;
                } else {
                    if (cCharAt != '+' && cCharAt != '-') {
                        throw new java.lang.IndexOutOfBoundsException("Invalid time zone indicator '" + cCharAt + "'");
                    }
                    strSubstring = str.substring(i9);
                    if (strSubstring.length() >= 5) {
                        strSubstring = strSubstring + "00";
                    }
                    length = i9 + strSubstring.length();
                    if (!"+0000".equals(strSubstring) || "+00:00".equals(strSubstring)) {
                        timeZone = f6711a;
                    } else {
                        java.lang.String str3 = "GMT" + strSubstring;
                        java.util.TimeZone timeZone2 = java.util.TimeZone.getTimeZone(str3);
                        java.lang.String id = timeZone2.getID();
                        if (!id.equals(str3) && !id.replace(":", "").equals(str3)) {
                            throw new java.lang.IndexOutOfBoundsException("Mismatching time zone indicator: " + str3 + " given, resolves to " + timeZone2.getID());
                        }
                        timeZone = timeZone2;
                    }
                }
                java.util.GregorianCalendar gregorianCalendar2 = new java.util.GregorianCalendar(timeZone);
                gregorianCalendar2.setLenient(false);
                gregorianCalendar2.set(1, iD3);
                gregorianCalendar2.set(2, iD4 - 1);
                gregorianCalendar2.set(5, iD5);
                gregorianCalendar2.set(11, i5);
                gregorianCalendar2.set(12, iD);
                gregorianCalendar2.set(13, iD2);
                gregorianCalendar2.set(14, i6);
                parsePosition.setIndex(length);
                return gregorianCalendar2.getTime();
            }
            i5 = 0;
            iD = 0;
            i6 = 0;
            iD2 = 0;
            if (str.length() > i9) {
                throw new java.lang.IllegalArgumentException("No time zone indicator");
            }
            cCharAt = str.charAt(i9);
            if (cCharAt == 'Z') {
                timeZone = f6711a;
                length = i9 + 1;
            } else {
                if (cCharAt != '+') {
                    throw new java.lang.IndexOutOfBoundsException("Invalid time zone indicator '" + cCharAt + "'");
                }
                strSubstring = str.substring(i9);
                if (strSubstring.length() >= 5) {
                    strSubstring = strSubstring + "00";
                }
                length = i9 + strSubstring.length();
                if ("+0000".equals(strSubstring)) {
                    timeZone = f6711a;
                } else {
                    timeZone = f6711a;
                }
            }
            java.util.GregorianCalendar gregorianCalendar3 = new java.util.GregorianCalendar(timeZone);
            gregorianCalendar3.setLenient(false);
            gregorianCalendar3.set(1, iD3);
            gregorianCalendar3.set(2, iD4 - 1);
            gregorianCalendar3.set(5, iD5);
            gregorianCalendar3.set(11, i5);
            gregorianCalendar3.set(12, iD);
            gregorianCalendar3.set(13, iD2);
            gregorianCalendar3.set(14, i6);
            parsePosition.setIndex(length);
            return gregorianCalendar3.getTime();
        } catch (java.lang.IllegalArgumentException | java.lang.IndexOutOfBoundsException | java.lang.NumberFormatException e5) {
            if (str == null) {
                str2 = null;
            } else {
                str2 = '\"' + str + "'";
            }
            java.lang.String message = e5.getMessage();
            if (message == null || message.isEmpty()) {
                message = "(" + e5.getClass().getName() + ")";
            }
            java.text.ParseException parseException = new java.text.ParseException("Failed to parse date [" + str2 + "]: " + message, parsePosition.getIndex());
            parseException.initCause(e5);
            throw parseException;
        }
    }

    public static int d(java.lang.String str, int i5, int i6) throws java.lang.NumberFormatException {
        int i7;
        int i8;
        if (i5 < 0 || i6 > str.length() || i5 > i6) {
            throw new java.lang.NumberFormatException(str);
        }
        if (i5 < i6) {
            i8 = i5 + 1;
            int iDigit = java.lang.Character.digit(str.charAt(i5), 10);
            if (iDigit < 0) {
                throw new java.lang.NumberFormatException("Invalid number: " + str.substring(i5, i6));
            }
            i7 = -iDigit;
        } else {
            i7 = 0;
            i8 = i5;
        }
        while (i8 < i6) {
            int i9 = i8 + 1;
            int iDigit2 = java.lang.Character.digit(str.charAt(i8), 10);
            if (iDigit2 < 0) {
                throw new java.lang.NumberFormatException("Invalid number: " + str.substring(i5, i6));
            }
            i7 = (i7 * 10) - iDigit2;
            i8 = i9;
        }
        return -i7;
    }
}
