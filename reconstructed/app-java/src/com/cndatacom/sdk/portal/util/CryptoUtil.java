package com.cndatacom.sdk.portal.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class CryptoUtil {
    private static final char[] HEX_TAG = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static java.lang.String byteArrayToHex(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder((bArr.length * 2) + 1);
        for (byte b5 : bArr) {
            char[] cArr = HEX_TAG;
            sb.append(cArr[(b5 >>> 4) & 15]);
            sb.append(cArr[b5 & 15]);
        }
        return sb.toString();
    }

    public static byte[] decrypt(byte[] bArr) {
        return handleAesGcm(2, bArr);
    }

    public static byte[] des3DecodeCBC(byte[] bArr, byte[] bArr2, byte[] bArr3) throws java.lang.Exception {
        javax.crypto.Cipher cipher = javax.crypto.Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(2, new javax.crypto.spec.SecretKeySpec(bArr, 0, 16, "AES"), new javax.crypto.spec.IvParameterSpec(bArr2, 0, 16));
        return cipher.doFinal(bArr3);
    }

    public static java.lang.String des3DecodeECB(java.lang.String str) throws java.lang.Exception {
        byte[] bArr = {-69, 113, 39, -127, -57, 0, 67, 10, -63, -121, -52, -46, -3, -85, 24, 120, 71, -54, -5, 63, -110, 54, 9, -105};
        bArr[4] = (byte) (bArr[4] ^ 170);
        bArr[1] = (byte) (bArr[1] ^ 21);
        bArr[19] = (byte) (bArr[19] ^ 80);
        bArr[20] = (byte) (bArr[20] ^ 222);
        bArr[15] = (byte) (bArr[15] ^ 31);
        bArr[9] = (byte) (bArr[9] ^ 222);
        bArr[22] = (byte) (bArr[22] ^ 69);
        bArr[6] = (byte) (bArr[6] ^ 36);
        bArr[0] = (byte) (bArr[0] ^ 138);
        bArr[7] = (byte) (bArr[7] ^ 107);
        bArr[17] = (byte) (bArr[17] ^ 251);
        bArr[8] = (byte) (bArr[8] ^ 147);
        bArr[5] = (byte) (bArr[5] ^ 52);
        bArr[12] = (byte) (bArr[12] ^ 180);
        bArr[23] = (byte) (bArr[23] ^ 213);
        bArr[13] = (byte) (bArr[13] ^ 229);
        bArr[11] = (byte) (bArr[11] ^ 133);
        bArr[16] = (byte) (17 ^ bArr[16]);
        bArr[2] = (byte) (bArr[2] ^ 68);
        bArr[3] = (byte) (bArr[3] ^ 243);
        bArr[10] = (byte) (bArr[10] ^ 244);
        bArr[21] = (byte) (bArr[21] ^ 126);
        bArr[18] = (byte) (bArr[18] ^ 183);
        bArr[14] = (byte) (bArr[14] ^ 107);
        return new java.lang.String(des3DecodeECB(bArr, android.util.Base64.decode(str, 2)), "utf-8");
    }

    public static byte[] des3EncodeCBC(byte[] bArr, byte[] bArr2, byte[] bArr3) throws java.lang.Exception {
        javax.crypto.Cipher cipher = javax.crypto.Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(1, new javax.crypto.spec.SecretKeySpec(bArr, 0, 16, "AES"), new javax.crypto.spec.IvParameterSpec(bArr2, 0, 16));
        return cipher.doFinal(bArr3);
    }

    public static java.lang.String des3EncodeECB(byte[] bArr) throws java.lang.Exception {
        byte[] bArr2 = {-69, 113, 39, -127, -57, 0, 67, 10, -63, -121, -52, -46, -3, -85, 24, 120, 71, -54, -5, 63, -110, 54, 9, -105};
        bArr2[4] = (byte) (bArr2[4] ^ 170);
        bArr2[1] = (byte) (bArr2[1] ^ 21);
        bArr2[19] = (byte) (bArr2[19] ^ 80);
        bArr2[20] = (byte) (bArr2[20] ^ 222);
        bArr2[15] = (byte) (bArr2[15] ^ 31);
        bArr2[9] = (byte) (bArr2[9] ^ 222);
        bArr2[22] = (byte) (bArr2[22] ^ 69);
        bArr2[6] = (byte) (bArr2[6] ^ 36);
        bArr2[0] = (byte) (bArr2[0] ^ 138);
        bArr2[7] = (byte) (bArr2[7] ^ 107);
        bArr2[17] = (byte) (bArr2[17] ^ 251);
        bArr2[8] = (byte) (bArr2[8] ^ 147);
        bArr2[5] = (byte) (bArr2[5] ^ 52);
        bArr2[12] = (byte) (bArr2[12] ^ 180);
        bArr2[23] = (byte) (bArr2[23] ^ 213);
        bArr2[13] = (byte) (bArr2[13] ^ 229);
        bArr2[11] = (byte) (bArr2[11] ^ 133);
        bArr2[16] = (byte) (17 ^ bArr2[16]);
        bArr2[2] = (byte) (bArr2[2] ^ 68);
        bArr2[3] = (byte) (bArr2[3] ^ 243);
        bArr2[10] = (byte) (bArr2[10] ^ 244);
        bArr2[21] = (byte) (bArr2[21] ^ 126);
        bArr2[18] = (byte) (bArr2[18] ^ 183);
        bArr2[14] = (byte) (bArr2[14] ^ 107);
        return android.util.Base64.encodeToString(des3EncodeECB(bArr2, bArr), 2);
    }

    public static byte[] encryp(byte[] bArr) {
        return handleAesGcm(1, bArr);
    }

    public static byte[] encryptByPublicKey(byte[] bArr) throws java.lang.Exception {
        java.security.interfaces.RSAPublicKey rSAPublicKey = (java.security.interfaces.RSAPublicKey) java.security.KeyFactory.getInstance("RSA").generatePublic(new java.security.spec.X509EncodedKeySpec(android.util.Base64.decode("MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAKzDO99FYDlQKslgsplrIun+QvV6mO1uXO6p3j6T13nEf4/hAJXEhEQSUZssuhu6yCca4BU+R7pV7P7FQmEs2XUCAwEAAQ==", 2)));
        javax.crypto.Cipher cipher = javax.crypto.Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(1, rSAPublicKey);
        return rsaSplitCodec(cipher, 1, bArr, rSAPublicKey.getModulus().bitLength());
    }

    private static javax.crypto.SecretKey getCryptKey() {
        try {
            java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance("MD5");
            messageDigest.update(android.os.Build.FINGERPRINT.getBytes());
            return new javax.crypto.spec.SecretKeySpec(messageDigest.digest(), "AES");
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            return null;
        }
    }

    public static java.lang.String getTextMD5(java.lang.String str) {
        try {
            java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            java.lang.String string = new java.math.BigInteger(1, messageDigest.digest()).toString(16);
            for (int i5 = 0; i5 < 32 - string.length(); i5++) {
                string = com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS + string;
            }
            return string.toLowerCase();
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            return "";
        }
    }

    private static byte[] handleAesGcm(int i5, byte[] bArr) {
        try {
            javax.crypto.Cipher cipher = javax.crypto.Cipher.getInstance("AES/GCM/NoPadding");
            javax.crypto.SecretKey cryptKey = getCryptKey();
            cipher.init(i5, cryptKey, new javax.crypto.spec.GCMParameterSpec(com.alibaba.fastjson.asm.Opcodes.IOR, cryptKey.getEncoded()));
            return cipher.doFinal(bArr);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            return new byte[0];
        }
    }

    public static byte[] hexToByteArray(java.lang.String str) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[(str.length() + 1) / 2];
        int i5 = 0;
        for (int i6 = 0; i6 < str.length(); i6++) {
            byte bCharAt = (byte) str.charAt(i6);
            if (i6 % 2 == 0) {
                bArr[i5] = (byte) (bCharAt >= 65 ? (bCharAt & 223) - 55 : bCharAt - 48);
            } else {
                bArr[i5] = (byte) (bArr[i5] << 4);
                bArr[i5] = (byte) (((byte) (bCharAt >= 65 ? (bCharAt & 223) - 55 : bCharAt - 48)) | bArr[i5]);
                i5++;
            }
        }
        return bArr;
    }

    private static byte[] rsaSplitCodec(javax.crypto.Cipher cipher, int i5, byte[] bArr, int i6) throws java.lang.Exception {
        int i7 = i5 == 2 ? i6 / 8 : (i6 / 8) - 11;
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        int i8 = 0;
        int i9 = 0;
        while (bArr.length > i8) {
            byte[] bArrDoFinal = bArr.length - i8 > i7 ? cipher.doFinal(bArr, i8, i7) : cipher.doFinal(bArr, i8, bArr.length - i8);
            byteArrayOutputStream.write(bArrDoFinal, 0, bArrDoFinal.length);
            i9++;
            i8 = i9 * i7;
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.close();
        return byteArray;
    }

    public static byte[] des3EncodeECB(byte[] bArr, byte[] bArr2) throws java.lang.Exception {
        javax.crypto.SecretKey secretKeyGenerateSecret = javax.crypto.SecretKeyFactory.getInstance("desede").generateSecret(new javax.crypto.spec.DESedeKeySpec(bArr));
        javax.crypto.Cipher cipher = javax.crypto.Cipher.getInstance("desede/ECB/PKCS5Padding");
        cipher.init(1, secretKeyGenerateSecret);
        return cipher.doFinal(bArr2);
    }

    public static byte[] des3DecodeECB(byte[] bArr, byte[] bArr2) throws java.lang.Exception {
        javax.crypto.SecretKey secretKeyGenerateSecret = javax.crypto.SecretKeyFactory.getInstance("desede").generateSecret(new javax.crypto.spec.DESedeKeySpec(bArr));
        javax.crypto.Cipher cipher = javax.crypto.Cipher.getInstance("desede/ECB/PKCS5Padding");
        cipher.init(2, secretKeyGenerateSecret);
        return cipher.doFinal(bArr2);
    }
}
