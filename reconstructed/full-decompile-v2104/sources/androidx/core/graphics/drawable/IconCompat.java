package androidx.core.graphics.drawable;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class IconCompat extends androidx.versionedparcelable.CustomVersionedParcelable {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final android.graphics.PorterDuff.Mode f1378k = android.graphics.PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1379a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public java.lang.Object f1380b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f1381c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public android.os.Parcelable f1382d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1383e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1384f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public android.content.res.ColorStateList f1385g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public android.graphics.PorterDuff.Mode f1386h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public java.lang.String f1387i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public java.lang.String f1388j;

    public static class a {
        public static androidx.core.graphics.drawable.IconCompat a(java.lang.Object obj) {
            v.h.b(obj);
            int iD = d(obj);
            if (iD == 2) {
                return androidx.core.graphics.drawable.IconCompat.f(null, c(obj), b(obj));
            }
            if (iD == 4) {
                return androidx.core.graphics.drawable.IconCompat.d(e(obj));
            }
            if (iD == 6) {
                return androidx.core.graphics.drawable.IconCompat.b(e(obj));
            }
            androidx.core.graphics.drawable.IconCompat iconCompat = new androidx.core.graphics.drawable.IconCompat(-1);
            iconCompat.f1380b = obj;
            return iconCompat;
        }

        public static int b(java.lang.Object obj) {
            return androidx.core.graphics.drawable.IconCompat.c.a(obj);
        }

        public static java.lang.String c(java.lang.Object obj) {
            return androidx.core.graphics.drawable.IconCompat.c.b(obj);
        }

        public static int d(java.lang.Object obj) {
            return androidx.core.graphics.drawable.IconCompat.c.c(obj);
        }

        public static android.net.Uri e(java.lang.Object obj) {
            return androidx.core.graphics.drawable.IconCompat.c.d(obj);
        }

        public static android.graphics.drawable.Drawable f(android.graphics.drawable.Icon icon, android.content.Context context) {
            return icon.loadDrawable(context);
        }

        public static android.graphics.drawable.Icon g(androidx.core.graphics.drawable.IconCompat iconCompat, android.content.Context context) {
            android.graphics.drawable.Icon iconCreateWithBitmap;
            switch (iconCompat.f1379a) {
                case -1:
                    return (android.graphics.drawable.Icon) iconCompat.f1380b;
                case 0:
                default:
                    throw new java.lang.IllegalArgumentException("Unknown type");
                case 1:
                    iconCreateWithBitmap = android.graphics.drawable.Icon.createWithBitmap((android.graphics.Bitmap) iconCompat.f1380b);
                    break;
                case 2:
                    iconCreateWithBitmap = android.graphics.drawable.Icon.createWithResource(iconCompat.h(), iconCompat.f1383e);
                    break;
                case 3:
                    iconCreateWithBitmap = android.graphics.drawable.Icon.createWithData((byte[]) iconCompat.f1380b, iconCompat.f1383e, iconCompat.f1384f);
                    break;
                case 4:
                    iconCreateWithBitmap = android.graphics.drawable.Icon.createWithContentUri((java.lang.String) iconCompat.f1380b);
                    break;
                case 5:
                    iconCreateWithBitmap = androidx.core.graphics.drawable.IconCompat.b.b((android.graphics.Bitmap) iconCompat.f1380b);
                    break;
                case 6:
                    if (android.os.Build.VERSION.SDK_INT >= 30) {
                        iconCreateWithBitmap = androidx.core.graphics.drawable.IconCompat.d.a(iconCompat.i());
                    } else {
                        if (context == null) {
                            throw new java.lang.IllegalArgumentException("Context is required to resolve the file uri of the icon: " + iconCompat.i());
                        }
                        java.io.InputStream inputStreamJ = iconCompat.j(context);
                        if (inputStreamJ == null) {
                            throw new java.lang.IllegalStateException("Cannot load adaptive icon from uri: " + iconCompat.i());
                        }
                        iconCreateWithBitmap = androidx.core.graphics.drawable.IconCompat.b.b(android.graphics.BitmapFactory.decodeStream(inputStreamJ));
                    }
                    break;
            }
            android.content.res.ColorStateList colorStateList = iconCompat.f1385g;
            if (colorStateList != null) {
                iconCreateWithBitmap.setTintList(colorStateList);
            }
            android.graphics.PorterDuff.Mode mode = iconCompat.f1386h;
            if (mode != androidx.core.graphics.drawable.IconCompat.f1378k) {
                iconCreateWithBitmap.setTintMode(mode);
            }
            return iconCreateWithBitmap;
        }
    }

    public static class b {
        public static android.graphics.drawable.Drawable a(android.graphics.drawable.Drawable drawable, android.graphics.drawable.Drawable drawable2) {
            return new android.graphics.drawable.AdaptiveIconDrawable(drawable, drawable2);
        }

        public static android.graphics.drawable.Icon b(android.graphics.Bitmap bitmap) {
            return android.graphics.drawable.Icon.createWithAdaptiveBitmap(bitmap);
        }
    }

    public static class c {
        public static int a(java.lang.Object obj) {
            return ((android.graphics.drawable.Icon) obj).getResId();
        }

        public static java.lang.String b(java.lang.Object obj) {
            return ((android.graphics.drawable.Icon) obj).getResPackage();
        }

        public static int c(java.lang.Object obj) {
            return ((android.graphics.drawable.Icon) obj).getType();
        }

        public static android.net.Uri d(java.lang.Object obj) {
            return ((android.graphics.drawable.Icon) obj).getUri();
        }
    }

    public static class d {
        public static android.graphics.drawable.Icon a(android.net.Uri uri) {
            return android.graphics.drawable.Icon.createWithAdaptiveBitmapContentUri(uri);
        }
    }

    public IconCompat() {
        this.f1379a = -1;
        this.f1381c = null;
        this.f1382d = null;
        this.f1383e = 0;
        this.f1384f = 0;
        this.f1385g = null;
        this.f1386h = f1378k;
        this.f1387i = null;
    }

    public static androidx.core.graphics.drawable.IconCompat a(android.graphics.drawable.Icon icon) {
        return androidx.core.graphics.drawable.IconCompat.a.a(icon);
    }

    public static androidx.core.graphics.drawable.IconCompat b(android.net.Uri uri) {
        v.d.c(uri);
        return c(uri.toString());
    }

    public static androidx.core.graphics.drawable.IconCompat c(java.lang.String str) {
        v.d.c(str);
        androidx.core.graphics.drawable.IconCompat iconCompat = new androidx.core.graphics.drawable.IconCompat(6);
        iconCompat.f1380b = str;
        return iconCompat;
    }

    public static androidx.core.graphics.drawable.IconCompat d(android.net.Uri uri) {
        v.d.c(uri);
        return e(uri.toString());
    }

    public static androidx.core.graphics.drawable.IconCompat e(java.lang.String str) {
        v.d.c(str);
        androidx.core.graphics.drawable.IconCompat iconCompat = new androidx.core.graphics.drawable.IconCompat(4);
        iconCompat.f1380b = str;
        return iconCompat;
    }

    public static androidx.core.graphics.drawable.IconCompat f(android.content.res.Resources resources, java.lang.String str, int i5) {
        v.d.c(str);
        if (i5 == 0) {
            throw new java.lang.IllegalArgumentException("Drawable resource ID must not be 0");
        }
        androidx.core.graphics.drawable.IconCompat iconCompat = new androidx.core.graphics.drawable.IconCompat(2);
        iconCompat.f1383e = i5;
        if (resources != null) {
            try {
                iconCompat.f1380b = resources.getResourceName(i5);
            } catch (android.content.res.Resources.NotFoundException unused) {
                throw new java.lang.IllegalArgumentException("Icon resource cannot be found");
            }
        } else {
            iconCompat.f1380b = str;
        }
        iconCompat.f1388j = str;
        return iconCompat;
    }

    public static java.lang.String o(int i5) {
        switch (i5) {
            case 1:
                return "BITMAP";
            case 2:
                return "RESOURCE";
            case 3:
                return "DATA";
            case 4:
                return "URI";
            case 5:
                return "BITMAP_MASKABLE";
            case 6:
                return "URI_MASKABLE";
            default:
                return "UNKNOWN";
        }
    }

    public int g() {
        int i5 = this.f1379a;
        if (i5 == -1) {
            return androidx.core.graphics.drawable.IconCompat.a.b(this.f1380b);
        }
        if (i5 == 2) {
            return this.f1383e;
        }
        throw new java.lang.IllegalStateException("called getResId() on " + this);
    }

    public java.lang.String h() {
        int i5 = this.f1379a;
        if (i5 == -1) {
            return androidx.core.graphics.drawable.IconCompat.a.c(this.f1380b);
        }
        if (i5 == 2) {
            java.lang.String str = this.f1388j;
            return (str == null || android.text.TextUtils.isEmpty(str)) ? ((java.lang.String) this.f1380b).split(":", -1)[0] : this.f1388j;
        }
        throw new java.lang.IllegalStateException("called getResPackage() on " + this);
    }

    public android.net.Uri i() {
        int i5 = this.f1379a;
        if (i5 == -1) {
            return androidx.core.graphics.drawable.IconCompat.a.e(this.f1380b);
        }
        if (i5 == 4 || i5 == 6) {
            return android.net.Uri.parse((java.lang.String) this.f1380b);
        }
        throw new java.lang.IllegalStateException("called getUri() on " + this);
    }

    public java.io.InputStream j(android.content.Context context) {
        android.net.Uri uriI = i();
        java.lang.String scheme = uriI.getScheme();
        if ("content".equals(scheme) || "file".equals(scheme)) {
            try {
                return context.getContentResolver().openInputStream(uriI);
            } catch (java.lang.Exception e5) {
                android.util.Log.w("IconCompat", "Unable to load image from URI: " + uriI, e5);
                return null;
            }
        }
        try {
            return new java.io.FileInputStream(new java.io.File((java.lang.String) this.f1380b));
        } catch (java.io.FileNotFoundException e6) {
            android.util.Log.w("IconCompat", "Unable to load image from path: " + uriI, e6);
            return null;
        }
    }

    public void k() {
        this.f1386h = android.graphics.PorterDuff.Mode.valueOf(this.f1387i);
        switch (this.f1379a) {
            case -1:
                android.os.Parcelable parcelable = this.f1382d;
                if (parcelable == null) {
                    throw new java.lang.IllegalArgumentException("Invalid icon");
                }
                this.f1380b = parcelable;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                android.os.Parcelable parcelable2 = this.f1382d;
                if (parcelable2 != null) {
                    this.f1380b = parcelable2;
                    return;
                }
                byte[] bArr = this.f1381c;
                this.f1380b = bArr;
                this.f1379a = 3;
                this.f1383e = 0;
                this.f1384f = bArr.length;
                return;
            case 2:
            case 4:
            case 6:
                java.lang.String str = new java.lang.String(this.f1381c, java.nio.charset.Charset.forName("UTF-16"));
                this.f1380b = str;
                if (this.f1379a == 2 && this.f1388j == null) {
                    this.f1388j = str.split(":", -1)[0];
                    return;
                }
                return;
            case 3:
                this.f1380b = this.f1381c;
                return;
        }
    }

    public void l(boolean z4) {
        this.f1387i = this.f1386h.name();
        switch (this.f1379a) {
            case -1:
                if (z4) {
                    throw new java.lang.IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
                }
                this.f1382d = (android.os.Parcelable) this.f1380b;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                if (!z4) {
                    this.f1382d = (android.os.Parcelable) this.f1380b;
                    return;
                }
                android.graphics.Bitmap bitmap = (android.graphics.Bitmap) this.f1380b;
                java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
                bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                this.f1381c = byteArrayOutputStream.toByteArray();
                return;
            case 2:
                this.f1381c = ((java.lang.String) this.f1380b).getBytes(java.nio.charset.Charset.forName("UTF-16"));
                return;
            case 3:
                this.f1381c = (byte[]) this.f1380b;
                return;
            case 4:
            case 6:
                this.f1381c = this.f1380b.toString().getBytes(java.nio.charset.Charset.forName("UTF-16"));
                return;
        }
    }

    @java.lang.Deprecated
    public android.graphics.drawable.Icon m() {
        return n(null);
    }

    public android.graphics.drawable.Icon n(android.content.Context context) {
        return androidx.core.graphics.drawable.IconCompat.a.g(this, context);
    }

    public java.lang.String toString() {
        if (this.f1379a == -1) {
            return java.lang.String.valueOf(this.f1380b);
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder("Icon(typ=");
        sb.append(o(this.f1379a));
        switch (this.f1379a) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((android.graphics.Bitmap) this.f1380b).getWidth());
                sb.append("x");
                sb.append(((android.graphics.Bitmap) this.f1380b).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(this.f1388j);
                sb.append(" id=");
                sb.append(java.lang.String.format("0x%08x", java.lang.Integer.valueOf(g())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f1383e);
                if (this.f1384f != 0) {
                    sb.append(" off=");
                    sb.append(this.f1384f);
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.f1380b);
                break;
        }
        if (this.f1385g != null) {
            sb.append(" tint=");
            sb.append(this.f1385g);
        }
        if (this.f1386h != f1378k) {
            sb.append(" mode=");
            sb.append(this.f1386h);
        }
        sb.append(")");
        return sb.toString();
    }

    public IconCompat(int i5) {
        this.f1381c = null;
        this.f1382d = null;
        this.f1383e = 0;
        this.f1384f = 0;
        this.f1385g = null;
        this.f1386h = f1378k;
        this.f1387i = null;
        this.f1379a = i5;
    }
}
