package c4;

/* JADX INFO: compiled from: Headers.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String[] f3195a;

    /* JADX INFO: compiled from: Headers.java */
    public static /* synthetic */ class a {
    }

    /* JADX INFO: compiled from: Headers.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.util.List<java.lang.String> f3196a = new java.util.ArrayList(20);

        public c4.q.b b(java.lang.String str, java.lang.String str2) {
            f(str, str2);
            return d(str, str2);
        }

        public c4.q.b c(java.lang.String str) {
            int iIndexOf = str.indexOf(":", 1);
            if (iIndexOf != -1) {
                return d(str.substring(0, iIndexOf), str.substring(iIndexOf + 1));
            }
            return str.startsWith(":") ? d("", str.substring(1)) : d("", str);
        }

        public c4.q.b d(java.lang.String str, java.lang.String str2) {
            this.f3196a.add(str);
            this.f3196a.add(str2.trim());
            return this;
        }

        public c4.q e() {
            return new c4.q(this, null);
        }

        public final void f(java.lang.String str, java.lang.String str2) {
            java.util.Objects.requireNonNull(str, "name == null");
            if (str.isEmpty()) {
                throw new java.lang.IllegalArgumentException("name is empty");
            }
            int length = str.length();
            for (int i5 = 0; i5 < length; i5++) {
                char cCharAt = str.charAt(i5);
                if (cCharAt <= 31 || cCharAt >= 127) {
                    throw new java.lang.IllegalArgumentException(d4.c.l("Unexpected char %#04x at %d in header name: %s", java.lang.Integer.valueOf(cCharAt), java.lang.Integer.valueOf(i5), str));
                }
            }
            java.util.Objects.requireNonNull(str2, "value == null");
            int length2 = str2.length();
            for (int i6 = 0; i6 < length2; i6++) {
                char cCharAt2 = str2.charAt(i6);
                if (cCharAt2 <= 31 || cCharAt2 >= 127) {
                    throw new java.lang.IllegalArgumentException(d4.c.l("Unexpected char %#04x at %d in %s value: %s", java.lang.Integer.valueOf(cCharAt2), java.lang.Integer.valueOf(i6), str, str2));
                }
            }
        }

        public c4.q.b g(java.lang.String str) {
            int i5 = 0;
            while (i5 < this.f3196a.size()) {
                if (str.equalsIgnoreCase(this.f3196a.get(i5))) {
                    this.f3196a.remove(i5);
                    this.f3196a.remove(i5);
                    i5 -= 2;
                }
                i5 += 2;
            }
            return this;
        }

        public c4.q.b h(java.lang.String str, java.lang.String str2) {
            f(str, str2);
            g(str);
            d(str, str2);
            return this;
        }
    }

    public /* synthetic */ q(c4.q.b bVar, c4.q.a aVar) {
        this(bVar);
    }

    public static java.lang.String b(java.lang.String[] strArr, java.lang.String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    public static c4.q f(java.lang.String... strArr) {
        java.util.Objects.requireNonNull(strArr, "namesAndValues == null");
        if (strArr.length % 2 != 0) {
            throw new java.lang.IllegalArgumentException("Expected alternating header names and values");
        }
        java.lang.String[] strArr2 = (java.lang.String[]) strArr.clone();
        for (int i5 = 0; i5 < strArr2.length; i5++) {
            if (strArr2[i5] == null) {
                throw new java.lang.IllegalArgumentException("Headers cannot be null");
            }
            strArr2[i5] = strArr2[i5].trim();
        }
        for (int i6 = 0; i6 < strArr2.length; i6 += 2) {
            java.lang.String str = strArr2[i6];
            java.lang.String str2 = strArr2[i6 + 1];
            if (str.length() == 0 || str.indexOf(0) != -1 || str2.indexOf(0) != -1) {
                throw new java.lang.IllegalArgumentException("Unexpected header: " + str + ": " + str2);
            }
        }
        return new c4.q(strArr2);
    }

    public java.lang.String a(java.lang.String str) {
        return b(this.f3195a, str);
    }

    public java.util.Date c(java.lang.String str) {
        java.lang.String strA = a(str);
        if (strA != null) {
            return h4.e.b(strA);
        }
        return null;
    }

    public java.lang.String d(int i5) {
        return this.f3195a[i5 * 2];
    }

    public c4.q.b e() {
        c4.q.b bVar = new c4.q.b();
        java.util.Collections.addAll(bVar.f3196a, this.f3195a);
        return bVar;
    }

    public boolean equals(java.lang.Object obj) {
        return (obj instanceof c4.q) && java.util.Arrays.equals(((c4.q) obj).f3195a, this.f3195a);
    }

    public int g() {
        return this.f3195a.length / 2;
    }

    public java.lang.String h(int i5) {
        return this.f3195a[(i5 * 2) + 1];
    }

    public int hashCode() {
        return java.util.Arrays.hashCode(this.f3195a);
    }

    public java.util.List<java.lang.String> i(java.lang.String str) {
        int iG = g();
        java.util.ArrayList arrayList = null;
        for (int i5 = 0; i5 < iG; i5++) {
            if (str.equalsIgnoreCase(d(i5))) {
                if (arrayList == null) {
                    arrayList = new java.util.ArrayList(2);
                }
                arrayList.add(h(i5));
            }
        }
        return arrayList != null ? java.util.Collections.unmodifiableList(arrayList) : java.util.Collections.emptyList();
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        int iG = g();
        for (int i5 = 0; i5 < iG; i5++) {
            sb.append(d(i5));
            sb.append(": ");
            sb.append(h(i5));
            sb.append("\n");
        }
        return sb.toString();
    }

    public q(c4.q.b bVar) {
        this.f3195a = (java.lang.String[]) bVar.f3196a.toArray(new java.lang.String[bVar.f3196a.size()]);
    }

    public q(java.lang.String[] strArr) {
        this.f3195a = strArr;
    }
}
