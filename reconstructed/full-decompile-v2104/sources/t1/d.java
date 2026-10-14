package t1;

/* JADX INFO: compiled from: IoUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d extends t1.e {
    public static void a(java.io.Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (java.lang.Exception unused) {
            }
        }
    }

    public static long b(java.io.InputStream inputStream, java.io.OutputStream outputStream) throws t1.c {
        return c(inputStream, outputStream, 8192);
    }

    public static long c(java.io.InputStream inputStream, java.io.OutputStream outputStream, int i5) throws t1.c {
        return e(inputStream, outputStream, i5, null);
    }

    public static long d(java.io.InputStream inputStream, java.io.OutputStream outputStream, int i5, long j5, t1.f fVar) throws t1.c {
        return new u1.b(i5, j5, fVar).b(inputStream, outputStream);
    }

    public static long e(java.io.InputStream inputStream, java.io.OutputStream outputStream, int i5, t1.f fVar) throws t1.c {
        return d(inputStream, outputStream, i5, -1L, fVar);
    }

    public static java.io.BufferedReader f(java.io.InputStream inputStream, java.nio.charset.Charset charset) {
        if (inputStream == null) {
            return null;
        }
        return new java.io.BufferedReader(charset == null ? new java.io.InputStreamReader(inputStream) : new java.io.InputStreamReader(inputStream, charset));
    }

    public static java.io.BufferedReader g(java.io.InputStream inputStream) {
        return f(inputStream, e2.g.f4074b);
    }

    public static java.lang.String h(java.io.InputStream inputStream, java.nio.charset.Charset charset) throws t1.c {
        return e2.b0.h0(l(inputStream), charset);
    }

    public static java.lang.String i(java.io.Reader reader) throws t1.c {
        return j(reader, true);
    }

    public static java.lang.String j(java.io.Reader reader, boolean z4) throws t1.c {
        java.lang.StringBuilder sbC0 = e2.b0.c0();
        java.nio.CharBuffer charBufferAllocate = java.nio.CharBuffer.allocate(8192);
        while (-1 != reader.read(charBufferAllocate)) {
            try {
                try {
                    sbC0.append(charBufferAllocate.flip());
                } catch (java.io.IOException e5) {
                    throw new t1.c(e5);
                }
            } catch (java.lang.Throwable th) {
                if (z4) {
                    a(reader);
                }
                throw th;
            }
        }
        if (z4) {
            a(reader);
        }
        return sbC0.toString();
    }

    public static t1.a k(java.io.InputStream inputStream, boolean z4) throws t1.c {
        t1.a aVar;
        if (inputStream instanceof java.io.FileInputStream) {
            try {
                aVar = new t1.a(inputStream.available());
            } catch (java.io.IOException e5) {
                throw new t1.c(e5);
            }
        } else {
            aVar = new t1.a();
        }
        try {
            b(inputStream, aVar);
            return aVar;
        } finally {
            if (z4) {
                a(inputStream);
            }
        }
    }

    public static byte[] l(java.io.InputStream inputStream) throws t1.c {
        return m(inputStream, true);
    }

    public static byte[] m(java.io.InputStream inputStream, boolean z4) throws t1.c {
        return k(inputStream, z4).c();
    }

    public static <T> T n(java.io.InputStream inputStream) throws r1.c, t1.c {
        return (T) o(inputStream, null);
    }

    public static <T> T o(java.io.InputStream inputStream, java.lang.Class<T> cls) throws r1.c, t1.c {
        try {
            return (T) p(inputStream instanceof t1.g ? (t1.g) inputStream : new t1.g(inputStream, new java.lang.Class[0]), cls);
        } catch (java.io.IOException e5) {
            throw new t1.c(e5);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T p(t1.g gVar, java.lang.Class<T> cls) throws r1.c, t1.c {
        if (gVar == 0) {
            throw new java.lang.IllegalArgumentException("The InputStream must not be null");
        }
        if (cls != null) {
            gVar.c(cls);
        }
        try {
            return (T) gVar.readObject();
        } catch (java.io.IOException e5) {
            throw new t1.c(e5);
        } catch (java.lang.ClassNotFoundException e6) {
            throw new r1.c(e6);
        }
    }

    public static java.io.ByteArrayInputStream q(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return new java.io.ByteArrayInputStream(bArr);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0026 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void r(java.io.OutputStream outputStream, boolean z4, java.io.Serializable... serializableArr) throws t1.c {
        java.io.ObjectOutputStream objectOutputStream = null;
        try {
            objectOutputStream = outputStream instanceof java.io.ObjectOutputStream ? (java.io.ObjectOutputStream) outputStream : new java.io.ObjectOutputStream(outputStream);
            for (java.io.Serializable serializable : serializableArr) {
                if (serializable != null) {
                    objectOutputStream.writeObject(serializable);
                }
            }
            objectOutputStream.flush();
            if (z4) {
                a(objectOutputStream);
            }
        } catch (java.io.IOException e5) {
            throw new t1.c(e5);
        }
    }
}
