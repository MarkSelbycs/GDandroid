package d4;

/* JADX INFO: compiled from: Util.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f3965a = new byte[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.lang.String[] f3966b = new java.lang.String[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final java.nio.charset.Charset f3967c = java.nio.charset.Charset.forName("UTF-8");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final java.util.TimeZone f3968d = java.util.TimeZone.getTimeZone("GMT");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.util.regex.Pattern f3969e = java.util.regex.Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    /* JADX INFO: compiled from: Util.java */
    public static class a implements java.util.concurrent.ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.lang.String f3970a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ boolean f3971b;

        public a(java.lang.String str, boolean z4) {
            this.f3970a = str;
            this.f3971b = z4;
        }

        @Override // java.util.concurrent.ThreadFactory
        public java.lang.Thread newThread(java.lang.Runnable runnable) {
            java.lang.Thread thread = new java.lang.Thread(runnable, this.f3970a);
            thread.setDaemon(this.f3971b);
            return thread;
        }
    }

    public static boolean A(java.lang.String str) {
        return f3969e.matcher(str).matches();
    }

    public static void a(long j5, long j6, long j7) {
        if ((j6 | j7) < 0 || j6 > j5 || j5 - j6 < j7) {
            throw new java.lang.ArrayIndexOutOfBoundsException();
        }
    }

    public static void b(java.io.Closeable closeable, java.io.Closeable closeable2) throws java.io.IOException {
        closeable.close();
        th = null;
        try {
            closeable2.close();
        } catch (java.lang.Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        if (th == null) {
            return;
        }
        if (th instanceof java.io.IOException) {
            throw ((java.io.IOException) th);
        }
        if (th instanceof java.lang.RuntimeException) {
            throw ((java.lang.RuntimeException) th);
        }
        if (!(th instanceof java.lang.Error)) {
            throw new java.lang.AssertionError(th);
        }
        throw ((java.lang.Error) th);
    }

    public static void c(java.io.Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (java.lang.RuntimeException e5) {
                throw e5;
            } catch (java.lang.Exception unused) {
            }
        }
    }

    public static void d(java.net.Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (java.lang.AssertionError e5) {
                if (!s(e5)) {
                    throw e5;
                }
            } catch (java.lang.RuntimeException e6) {
                throw e6;
            } catch (java.lang.Exception unused) {
            }
        }
    }

    public static java.lang.String[] e(java.lang.String[] strArr, java.lang.String str) {
        int length = strArr.length + 1;
        java.lang.String[] strArr2 = new java.lang.String[length];
        java.lang.System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[length - 1] = str;
        return strArr2;
    }

    public static boolean f(java.lang.String str) {
        for (int i5 = 0; i5 < str.length(); i5++) {
            char cCharAt = str.charAt(i5);
            if (cCharAt <= 31 || cCharAt >= 127 || " #%/:?@[\\]".indexOf(cCharAt) != -1) {
                return true;
            }
        }
        return false;
    }

    public static int g(java.lang.String str, int i5, int i6, char c5) {
        while (i5 < i6) {
            if (str.charAt(i5) == c5) {
                return i5;
            }
            i5++;
        }
        return i6;
    }

    public static int h(java.lang.String str, int i5, int i6, java.lang.String str2) {
        while (i5 < i6) {
            if (str2.indexOf(str.charAt(i5)) != -1) {
                return i5;
            }
            i5++;
        }
        return i6;
    }

    public static boolean i(okio.Source source, int i5, java.util.concurrent.TimeUnit timeUnit) {
        try {
            return v(source, i5, timeUnit);
        } catch (java.io.IOException unused) {
            return false;
        }
    }

    public static java.lang.String j(java.lang.String str) {
        try {
            java.lang.String lowerCase = java.net.IDN.toASCII(str).toLowerCase(java.util.Locale.US);
            if (lowerCase.isEmpty() || f(lowerCase)) {
                return null;
            }
            return lowerCase;
        } catch (java.lang.IllegalArgumentException unused) {
            return null;
        }
    }

    public static boolean k(java.lang.Object obj, java.lang.Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static java.lang.String l(java.lang.String str, java.lang.Object... objArr) {
        return java.lang.String.format(java.util.Locale.US, str, objArr);
    }

    public static java.lang.String m(c4.r rVar, boolean z4) {
        java.lang.String strO;
        if (rVar.o().contains(":")) {
            strO = "[" + rVar.o() + "]";
        } else {
            strO = rVar.o();
        }
        if (!z4 && rVar.A() == c4.r.h(rVar.E())) {
            return strO;
        }
        return strO + ":" + rVar.A();
    }

    public static <T> java.util.List<T> n(java.util.List<T> list) {
        return java.util.Collections.unmodifiableList(new java.util.ArrayList(list));
    }

    public static <T> java.util.List<T> o(T... tArr) {
        return java.util.Collections.unmodifiableList(java.util.Arrays.asList((java.lang.Object[]) tArr.clone()));
    }

    public static <T> int p(T[] tArr, T t5) {
        int length = tArr.length;
        for (int i5 = 0; i5 < length; i5++) {
            if (k(tArr[i5], t5)) {
                return i5;
            }
        }
        return -1;
    }

    public static <T> java.util.List<T> q(T[] tArr, T[] tArr2) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (T t5 : tArr) {
            for (T t6 : tArr2) {
                if (t5.equals(t6)) {
                    arrayList.add(t6);
                    break;
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T[] r(java.lang.Class<T> cls, T[] tArr, T[] tArr2) {
        java.util.List listQ = q(tArr, tArr2);
        return (T[]) listQ.toArray((java.lang.Object[]) java.lang.reflect.Array.newInstance((java.lang.Class<?>) cls, listQ.size()));
    }

    public static boolean s(java.lang.AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static okio.ByteString t(okio.ByteString byteString) {
        try {
            return okio.ByteString.of(java.security.MessageDigest.getInstance("SHA-1").digest(byteString.toByteArray()));
        } catch (java.security.NoSuchAlgorithmException e5) {
            throw new java.lang.AssertionError(e5);
        }
    }

    public static okio.ByteString u(okio.ByteString byteString) {
        try {
            return okio.ByteString.of(java.security.MessageDigest.getInstance("SHA-256").digest(byteString.toByteArray()));
        } catch (java.security.NoSuchAlgorithmException e5) {
            throw new java.lang.AssertionError(e5);
        }
    }

    public static boolean v(okio.Source source, int i5, java.util.concurrent.TimeUnit timeUnit) throws java.io.IOException {
        long jNanoTime = java.lang.System.nanoTime();
        long jDeadlineNanoTime = source.timeout().hasDeadline() ? source.timeout().deadlineNanoTime() - jNanoTime : Long.MAX_VALUE;
        source.timeout().deadlineNanoTime(java.lang.Math.min(jDeadlineNanoTime, timeUnit.toNanos(i5)) + jNanoTime);
        try {
            okio.Buffer buffer = new okio.Buffer();
            while (source.read(buffer, 8192L) != -1) {
                buffer.clear();
            }
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
            } else {
                source.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            }
            return true;
        } catch (java.io.InterruptedIOException unused) {
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
            } else {
                source.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            }
            return false;
        } catch (java.lang.Throwable th) {
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
            } else {
                source.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            }
            throw th;
        }
    }

    public static int w(java.lang.String str, int i5, int i6) {
        while (i5 < i6) {
            char cCharAt = str.charAt(i5);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i5;
            }
            i5++;
        }
        return i6;
    }

    public static int x(java.lang.String str, int i5, int i6) {
        for (int i7 = i6 - 1; i7 >= i5; i7--) {
            char cCharAt = str.charAt(i7);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i7 + 1;
            }
        }
        return i5;
    }

    public static java.util.concurrent.ThreadFactory y(java.lang.String str, boolean z4) {
        return new d4.c.a(str, z4);
    }

    public static java.lang.String z(java.lang.String str, int i5, int i6) {
        int iW = w(str, i5, i6);
        return str.substring(iW, x(str, iW, i6));
    }
}
