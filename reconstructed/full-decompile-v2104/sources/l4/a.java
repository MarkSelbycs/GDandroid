package l4;

/* JADX INFO: compiled from: BER.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f5145a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f5146b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f5147c = true;

    /* JADX INFO: renamed from: l4.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BER.java */
    public static class C0066a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte f5148a = 0;

        public byte a() {
            return this.f5148a;
        }

        public void b(byte b5) {
            this.f5148a = b5;
        }
    }

    public static void a(l4.b bVar, int i5) throws java.io.IOException {
        if (f5146b) {
            if (i5 < 0 || i5 > bVar.c()) {
                throw new java.io.IOException("The encoded length " + i5 + " exceeds the number of bytes left in input" + w(bVar) + " which actually is " + bVar.c());
            }
        }
    }

    public static void b(int i5, int i6, l4.d dVar) throws java.io.IOException {
        if (!y() || i5 == i6) {
            return;
        }
        throw new java.io.IOException("The actual length of the SEQUENCE object " + dVar.getClass().getName() + " is " + i6 + ", but " + i5 + " was expected");
    }

    public static int c(l4.b bVar, l4.a.C0066a c0066a) throws java.io.IOException {
        return d(bVar, c0066a, true);
    }

    public static int d(l4.b bVar, l4.a.C0066a c0066a, boolean z4) throws java.io.IOException {
        byte b5 = (byte) bVar.read();
        if ((b5 & 31) != 31) {
            c0066a.b(b5);
            return g(bVar, z4);
        }
        throw new java.io.IOException("Cannot process extension IDs" + w(bVar));
    }

    public static int e(l4.b bVar, l4.a.C0066a c0066a) throws java.io.IOException {
        c0066a.b((byte) bVar.read());
        byte b5 = c0066a.f5148a;
        if (b5 != 2 && b5 != 67 && b5 != 65) {
            throw new java.io.IOException("Wrong ASN.1 type. Not an integer: " + ((int) c0066a.f5148a) + w(bVar));
        }
        int iF = f(bVar);
        if (iF > 4) {
            throw new java.io.IOException("Length greater than 32bit are not supported  for integers: " + w(bVar));
        }
        int i5 = bVar.read() & 255;
        int i6 = (i5 & com.alibaba.fastjson.asm.Opcodes.IOR) > 0 ? -1 : 0;
        while (true) {
            int i7 = iF - 1;
            if (iF <= 0) {
                return i6;
            }
            i6 = (i6 << 8) | i5;
            if (i7 > 0) {
                i5 = bVar.read();
            }
            iF = i7;
        }
    }

    public static int f(l4.b bVar) throws java.io.IOException {
        return g(bVar, true);
    }

    public static int g(l4.b bVar, boolean z4) throws java.io.IOException {
        int i5;
        int i6 = bVar.read();
        if ((i6 & (-128)) > 0) {
            int i7 = i6 & 127;
            if (i7 == 0) {
                throw new java.io.IOException("Indefinite lengths are not supported");
            }
            if (i7 > 4) {
                throw new java.io.IOException("Data length > 4 bytes are not supported!");
            }
            i5 = 0;
            for (int i8 = 0; i8 < i7; i8++) {
                i5 |= (bVar.read() & 255) << (((i7 - 1) - i8) * 8);
            }
            if (i5 < 0) {
                throw new java.io.IOException("SNMP does not support data lengths > 2^31");
            }
        } else {
            i5 = i6 & 255;
        }
        if (z4) {
            a(bVar, i5);
        }
        return i5;
    }

    public static void h(l4.b bVar, l4.a.C0066a c0066a) throws java.io.IOException {
        c0066a.b((byte) (bVar.read() & 255));
        byte b5 = c0066a.f5148a;
        if (b5 != 5 && b5 != -128 && b5 != -127 && b5 != -126) {
            throw new java.io.IOException("Wrong ASN.1 type. Is not null: " + ((int) c0066a.f5148a) + w(bVar));
        }
        int iF = f(bVar);
        if (iF == 0) {
            return;
        }
        throw new java.io.IOException("Invalid Null encoding, length is not zero: " + iF + w(bVar));
    }

    public static int[] i(l4.b bVar, l4.a.C0066a c0066a) throws java.io.IOException {
        int i5;
        c0066a.b((byte) bVar.read());
        if (c0066a.f5148a != 6) {
            throw new java.io.IOException("Wrong type. Not an OID: " + ((int) c0066a.f5148a) + w(bVar));
        }
        int iF = f(bVar);
        int[] iArr = new int[iF + 2];
        if (iF == 0) {
            iArr[1] = 0;
            iArr[0] = 0;
        }
        int i6 = 1;
        while (iF > 0) {
            int i7 = 0;
            do {
                int i8 = bVar.read();
                if (i8 < 0) {
                    throw new java.io.IOException("Unexpected end of input stream" + w(bVar));
                }
                i5 = i8 & 255;
                i7 = (i7 << 7) + (i5 & 127);
                iF--;
                if (iF <= 0) {
                    break;
                }
            } while ((i5 & (-128)) != 0);
            iArr[i6] = i7;
            i6++;
        }
        int i9 = iArr[1];
        if (i9 == 43) {
            iArr[0] = 1;
            iArr[1] = 3;
        } else if (i9 < 0 || i9 >= 80) {
            iArr[0] = 2;
            iArr[1] = i9 - 80;
        } else if (i9 < 40) {
            iArr[0] = 0;
            iArr[1] = i9;
        } else {
            iArr[0] = 1;
            iArr[1] = i9 - 40;
        }
        if (i6 < 2) {
            i6 = 2;
        }
        int[] iArr2 = new int[i6];
        java.lang.System.arraycopy(iArr, 0, iArr2, 0, i6);
        return iArr2;
    }

    public static byte[] j(l4.b bVar, l4.a.C0066a c0066a) throws java.io.IOException {
        int i5;
        c0066a.b((byte) bVar.read());
        byte b5 = c0066a.f5148a;
        if (b5 != 4 && b5 != 36 && b5 != 64 && b5 != 68 && b5 != 3 && b5 != 69) {
            throw new java.io.IOException("Wrong ASN.1 type. Not a string: " + ((int) c0066a.f5148a) + w(bVar));
        }
        int iF = f(bVar);
        byte[] bArr = new byte[iF];
        if (iF <= 0 || ((i5 = bVar.read(bArr, 0, iF)) >= 0 && i5 >= iF)) {
            return bArr;
        }
        throw new java.io.IOException("Wrong string length " + i5 + " < " + iF);
    }

    public static long k(l4.b bVar, l4.a.C0066a c0066a) throws java.io.IOException {
        c0066a.b((byte) bVar.read());
        byte b5 = c0066a.f5148a;
        if (b5 != 2 && b5 != 70) {
            throw new java.io.IOException("Wrong type. Not an integer 64: " + ((int) c0066a.f5148a) + w(bVar));
        }
        int iF = f(bVar);
        int i5 = bVar.read() & 255;
        if (iF > 9) {
            throw new java.io.IOException("Invalid 64bit unsigned integer length: " + iF + w(bVar));
        }
        if (i5 == 0) {
            if (iF > 1) {
                i5 = bVar.read();
            }
            iF--;
        }
        long j5 = 0;
        int i6 = 0;
        while (i6 < iF) {
            j5 = (j5 << 8) | ((long) (i5 & 255));
            i6++;
            if (i6 < iF) {
                i5 = bVar.read();
            }
        }
        return j5;
    }

    public static long l(l4.b bVar, l4.a.C0066a c0066a) throws java.io.IOException {
        c0066a.b((byte) bVar.read());
        byte b5 = c0066a.f5148a;
        if (b5 != 2 && b5 != 67 && b5 != 65 && b5 != 66 && b5 != 71) {
            throw new java.io.IOException("Wrong ASN.1 type. Not an unsigned integer: " + ((int) c0066a.f5148a) + w(bVar));
        }
        int iF = f(bVar);
        int i5 = bVar.read();
        if (iF > 5 || (iF > 4 && i5 != 0)) {
            throw new java.io.IOException("Only 32bit unsigned integers are supported" + w(bVar));
        }
        if (i5 == 0) {
            if (iF > 1) {
                i5 = bVar.read();
            }
            iF--;
        }
        int i6 = 0;
        long j5 = 0;
        while (i6 < iF) {
            j5 = (j5 << 8) | ((long) (i5 & 255));
            i6++;
            if (i6 < iF) {
                i5 = bVar.read();
            }
        }
        return j5;
    }

    public static void m(java.io.OutputStream outputStream, int i5, int i6) throws java.io.IOException {
        outputStream.write(i5);
        o(outputStream, i6);
    }

    public static void n(java.io.OutputStream outputStream, byte b5, int i5) throws java.io.IOException {
        int i6 = 4;
        while (true) {
            int i7 = i5 & (-8388608);
            if ((i7 != 0 && i7 != -8388608) || i6 <= 1) {
                break;
            }
            i6--;
            i5 <<= 8;
        }
        m(outputStream, b5, i6);
        while (true) {
            int i8 = i6 - 1;
            if (i6 <= 0) {
                return;
            }
            outputStream.write((i5 & (-16777216)) >> 24);
            i5 <<= 8;
            i6 = i8;
        }
    }

    public static void o(java.io.OutputStream outputStream, int i5) throws java.io.IOException {
        if (i5 < 0) {
            outputStream.write(-124);
            outputStream.write((i5 >> 24) & 255);
            outputStream.write((i5 >> 16) & 255);
            outputStream.write((i5 >> 8) & 255);
            outputStream.write(i5 & 255);
            return;
        }
        if (i5 < 128) {
            outputStream.write(i5);
            return;
        }
        if (i5 <= 255) {
            outputStream.write(com.cndatacom.sdk.portal.entity.NetInfo.INVALID_RSSI);
            outputStream.write(i5);
            return;
        }
        if (i5 <= 65535) {
            outputStream.write(com.cndatacom.sdk.portal.entity.NetInfo.MIN_RSSI);
            outputStream.write((i5 >> 8) & 255);
            outputStream.write(i5 & 255);
        } else {
            if (i5 <= 16777215) {
                outputStream.write(-125);
                outputStream.write((i5 >> 16) & 255);
                outputStream.write((i5 >> 8) & 255);
                outputStream.write(i5 & 255);
                return;
            }
            outputStream.write(-124);
            outputStream.write((i5 >> 24) & 255);
            outputStream.write((i5 >> 16) & 255);
            outputStream.write((i5 >> 8) & 255);
            outputStream.write(i5 & 255);
        }
    }

    public static void p(java.io.OutputStream outputStream, byte b5, int[] iArr) throws java.io.IOException {
        m(outputStream, b5, v(iArr));
        int length = iArr.length;
        int i5 = 2;
        int i6 = 0;
        if (iArr.length < 2) {
            outputStream.write(0);
            i5 = 0;
        } else {
            int i7 = iArr[0];
            if (f5147c && (i7 < 0 || i7 > 2)) {
                throw new java.io.IOException("Invalid first sub-identifier (must be 0, 1, or 2)");
            }
            r(outputStream, iArr[1] + (i7 * 40));
            i6 = length - 2;
        }
        while (true) {
            int i8 = i6 - 1;
            if (i6 <= 0) {
                return;
            }
            r(outputStream, iArr[i5]);
            i6 = i8;
            i5++;
        }
    }

    public static void q(java.io.OutputStream outputStream, byte b5, byte[] bArr) throws java.io.IOException {
        m(outputStream, b5, bArr.length);
        outputStream.write(bArr);
    }

    public static void r(java.io.OutputStream outputStream, int i5) throws java.io.IOException {
        long j5 = ((long) i5) & 4294967295L;
        if (j5 < 127) {
            outputStream.write(((int) j5) & 255);
            return;
        }
        long j6 = 127;
        long j7 = 127;
        long j8 = 0;
        long j9 = 0;
        while (j6 != 0) {
            if ((j5 & j6) > 0) {
                j7 = j6;
                j9 = j8;
            }
            j6 <<= 7;
            j8 += 7;
        }
        while (j7 != 127) {
            if (j7 == 31457280) {
                j7 = 266338304;
            }
            outputStream.write((int) (((j5 & j7) >> ((int) j9)) | (-128)));
            j7 >>= 7;
            j9 -= 7;
        }
        outputStream.write((int) (j5 & j7));
    }

    public static void s(java.io.OutputStream outputStream, byte b5, long j5) throws java.io.IOException {
        int i5 = 8;
        while (i5 > 1 && ((j5 >> ((i5 - 1) * 8)) & 255) == 0) {
            i5--;
        }
        if (((j5 >> ((i5 - 1) * 8)) & 128) != 0) {
            i5++;
        }
        m(outputStream, b5, i5);
        if (i5 == 9) {
            outputStream.write(0);
            i5--;
        }
        for (int i6 = 0; i6 < i5; i6++) {
            outputStream.write((int) (j5 >> ((((i5 - 1) - i6) * 8) & 255)));
        }
    }

    public static void t(java.io.OutputStream outputStream, byte b5, long j5) throws java.io.IOException {
        int i5;
        if (((j5 >> 24) & 255) != 0) {
            i5 = 4;
        } else if (((j5 >> 16) & 255) != 0) {
            i5 = 3;
        } else {
            i5 = (255 & (j5 >> 8)) != 0 ? 2 : 1;
        }
        if (((j5 >> ((i5 - 1) * 8)) & 128) != 0) {
            i5++;
        }
        m(outputStream, b5, i5);
        if (i5 != 5) {
            for (int i6 = 0; i6 < i5; i6++) {
                outputStream.write((int) (j5 >> ((((i5 - 1) - i6) * 8) & 255)));
            }
        } else {
            outputStream.write(0);
            for (int i7 = 1; i7 < i5; i7++) {
                outputStream.write((int) (j5 >> (((4 - i7) * 8) & 255)));
            }
        }
    }

    public static int u(int i5) {
        if (i5 < 0) {
            return 5;
        }
        if (i5 < 128) {
            return 1;
        }
        if (i5 <= 255) {
            return 2;
        }
        if (i5 <= 65535) {
            return 3;
        }
        return i5 <= 16777215 ? 4 : 5;
    }

    public static int v(int[] iArr) {
        int iX = iArr.length > 1 ? x((iArr[0] * 40) + iArr[1]) : 1;
        for (int i5 = 2; i5 < iArr.length; i5++) {
            iX += x(iArr[i5]);
        }
        return iX;
    }

    public static java.lang.String w(l4.b bVar) {
        return " at position " + bVar.e();
    }

    public static int x(int i5) {
        long j5 = ((long) i5) & 4294967295L;
        if (j5 < 128) {
            return 1;
        }
        if (j5 < 16384) {
            return 2;
        }
        if (j5 < 2097152) {
            return 3;
        }
        return j5 < 268435456 ? 4 : 5;
    }

    public static boolean y() {
        return f5145a;
    }
}
