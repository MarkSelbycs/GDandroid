package com.cndatacom.sdk.portal.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ImageUtil {

    public interface ImageCallback {
        void success();
    }

    private static int computeInitialSampleSize(android.graphics.BitmapFactory.Options options, int i5, int i6) {
        int iMin;
        double d5 = options.outWidth;
        double d6 = options.outHeight;
        int iCeil = i6 == -1 ? 1 : (int) java.lang.Math.ceil(java.lang.Math.sqrt((d5 * d6) / ((double) i6)));
        if (i5 == -1) {
            iMin = com.alibaba.fastjson.asm.Opcodes.IOR;
        } else {
            double d7 = i5;
            iMin = (int) java.lang.Math.min(java.lang.Math.floor(d5 / d7), java.lang.Math.floor(d6 / d7));
        }
        if (iMin < iCeil) {
            return iCeil;
        }
        if (i6 == -1 && i5 == -1) {
            return 1;
        }
        return i5 == -1 ? iCeil : iMin;
    }

    private static int computeSampleSize(android.graphics.BitmapFactory.Options options, int i5, int i6) {
        int iComputeInitialSampleSize = computeInitialSampleSize(options, i5, i6);
        if (iComputeInitialSampleSize > 8) {
            return 8 * ((iComputeInitialSampleSize + 7) / 8);
        }
        int i7 = 1;
        while (i7 < iComputeInitialSampleSize) {
            i7 <<= 1;
        }
        return i7;
    }

    private static void copy(java.io.InputStream inputStream, java.io.OutputStream outputStream) throws java.io.IOException {
        copy(inputStream, outputStream, 2048);
    }

    private static byte[] getBytes(java.io.InputStream inputStream) throws java.io.IOException {
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        copy(inputStream, byteArrayOutputStream);
        byteArrayOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public static void loadImage(final android.content.Context context, final java.lang.String str, final java.lang.String str2, final android.widget.ImageView imageView, final int i5, final int i6, final com.cndatacom.sdk.portal.util.ImageUtil.ImageCallback imageCallback) {
        final java.lang.String str3 = str.hashCode() + "";
        if (imageView == null || imageView.getTag() == null || !imageView.getTag().equals(str3)) {
            imageView.setTag(str3);
            new android.os.AsyncTask<java.lang.String, java.lang.Integer, android.graphics.Bitmap>() { // from class: com.cndatacom.sdk.portal.util.ImageUtil.1
                @Override // android.os.AsyncTask
                public android.graphics.Bitmap doInBackground(java.lang.String... strArr) {
                    return com.cndatacom.sdk.portal.util.ImageUtil.loadImageFormFile(context, str, str2, i5, i6);
                }

                @Override // android.os.AsyncTask
                public void onPostExecute(android.graphics.Bitmap bitmap) {
                    super.onPostExecute(bitmap);
                    android.widget.ImageView imageView2 = imageView;
                    if (imageView2 == null) {
                        return;
                    }
                    if (bitmap == null || imageView2.getTag() == null || !imageView.getTag().equals(str3)) {
                        imageView.setTag(null);
                    } else {
                        imageView.setImageDrawable(new android.graphics.drawable.BitmapDrawable(bitmap));
                    }
                    com.cndatacom.sdk.portal.util.ImageUtil.ImageCallback imageCallback2 = imageCallback;
                    if (imageCallback2 != null) {
                        imageCallback2.success();
                    }
                }
            }.execute("");
        }
    }

    public static android.graphics.Bitmap loadImageFormFile(android.content.Context context, java.lang.String str, java.lang.String str2, int i5, int i6) {
        android.graphics.Bitmap bitmapFromFile = readBitmapFromFile(str, i5, i6);
        if (bitmapFromFile == null && (bitmapFromFile = loadImageFormUrl(context, str2, i5, i6)) != null) {
            writeBitmapToFile(str, bitmapFromFile, 100);
        }
        return bitmapFromFile;
    }

    public static android.graphics.Bitmap loadImageFormUrl(android.content.Context context, java.lang.String str, int i5, int i6) {
        if (android.text.TextUtils.isEmpty(str)) {
            return null;
        }
        com.cndatacom.sdk.portal.http.HttpClient.Result result = new com.cndatacom.sdk.portal.http.HttpClient().get(str);
        if (!result.isSuccessful() || result.getData() == null || result.getData().length == 0) {
            return null;
        }
        return readBitmapFromByteArray(result.getData(), i5, i6);
    }

    private static android.graphics.Bitmap readBitmapFromByteArray(byte[] bArr, int i5, int i6) {
        try {
            android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            android.graphics.BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            options.inSampleSize = computeSampleSize(options, -1, (i5 * i6) / 2);
            options.inJustDecodeBounds = false;
            return android.graphics.BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            return null;
        }
    }

    private static android.graphics.Bitmap readBitmapFromFile(java.lang.String str, int i5, int i6) {
        try {
            android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
            options.inJustDecodeBounds = false;
            options.inSampleSize = computeSampleSize(options, -1, (i5 * i6) / 2);
            options.inJustDecodeBounds = false;
            try {
                return android.graphics.BitmapFactory.decodeFile(str, options);
            } catch (java.lang.OutOfMemoryError e5) {
                e5.printStackTrace();
                return null;
            }
        } catch (java.lang.Exception e6) {
            e6.printStackTrace();
            return null;
        }
    }

    private static android.graphics.Bitmap readBitmapFromInputStream(java.io.InputStream inputStream, int i5, int i6) {
        try {
            byte[] bytes = getBytes(inputStream);
            android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            android.graphics.BitmapFactory.decodeByteArray(bytes, 0, bytes.length, options);
            options.inSampleSize = computeSampleSize(options, -1, (i5 * i6) / 2);
            options.inJustDecodeBounds = false;
            android.graphics.Bitmap bitmapDecodeByteArray = android.graphics.BitmapFactory.decodeByteArray(bytes, 0, bytes.length, options);
            inputStream.close();
            return bitmapDecodeByteArray;
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            return null;
        }
    }

    public static void writeBitmapToFile(java.lang.String str, android.graphics.Bitmap bitmap, int i5) {
        try {
            java.io.File file = new java.io.File(str);
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            java.io.BufferedOutputStream bufferedOutputStream = new java.io.BufferedOutputStream(new java.io.FileOutputStream(file));
            bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, i5, bufferedOutputStream);
            bufferedOutputStream.flush();
            bufferedOutputStream.close();
        } catch (java.io.IOException e5) {
            e5.printStackTrace();
        }
    }

    private static void copy(java.io.InputStream inputStream, java.io.OutputStream outputStream, int i5) throws java.io.IOException {
        byte[] bArr = new byte[i5];
        while (true) {
            int i6 = inputStream.read(bArr);
            if (i6 == -1) {
                outputStream.flush();
                return;
            }
            outputStream.write(bArr, 0, i6);
        }
    }
}
