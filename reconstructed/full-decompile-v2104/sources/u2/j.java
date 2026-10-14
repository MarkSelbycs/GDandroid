package u2;

/* JADX INFO: compiled from: Streams.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class j {
    public static s2.i a(y2.a aVar) throws s2.m {
        boolean z4;
        try {
            try {
                aVar.V();
                z4 = false;
                try {
                    return v2.m.X.b(aVar);
                } catch (java.io.EOFException e5) {
                    e = e5;
                    if (z4) {
                        return s2.k.f6067a;
                    }
                    throw new s2.q(e);
                }
            } catch (java.io.EOFException e6) {
                e = e6;
                z4 = true;
            }
        } catch (java.lang.NumberFormatException e7) {
            throw new s2.q(e7);
        } catch (y2.d e8) {
            throw new s2.q(e8);
        } catch (java.io.IOException e9) {
            throw new s2.j(e9);
        }
    }

    public static void b(s2.i iVar, y2.c cVar) throws java.io.IOException {
        v2.m.X.d(cVar, iVar);
    }

    public static java.io.Writer c(java.lang.Appendable appendable) {
        return appendable instanceof java.io.Writer ? (java.io.Writer) appendable : new u2.j.a(appendable);
    }

    /* JADX INFO: compiled from: Streams.java */
    public static final class a extends java.io.Writer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.Appendable f6366a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final u2.j.a.C0088a f6367b = new u2.j.a.C0088a();

        /* JADX INFO: renamed from: u2.j$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Streams.java */
        public static class C0088a implements java.lang.CharSequence {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public char[] f6368a;

            @Override // java.lang.CharSequence
            public char charAt(int i5) {
                return this.f6368a[i5];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.f6368a.length;
            }

            @Override // java.lang.CharSequence
            public java.lang.CharSequence subSequence(int i5, int i6) {
                return new java.lang.String(this.f6368a, i5, i6 - i5);
            }
        }

        public a(java.lang.Appendable appendable) {
            this.f6366a = appendable;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i5, int i6) throws java.io.IOException {
            u2.j.a.C0088a c0088a = this.f6367b;
            c0088a.f6368a = cArr;
            this.f6366a.append(c0088a, i5, i6 + i5);
        }

        @Override // java.io.Writer
        public void write(int i5) throws java.io.IOException {
            this.f6366a.append((char) i5);
        }
    }
}
