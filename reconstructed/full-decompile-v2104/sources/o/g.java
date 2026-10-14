package o;

/* JADX INFO: compiled from: TypefaceCompatApi29Impl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g extends o.h {
    public static int h(android.graphics.fonts.FontStyle fontStyle, android.graphics.fonts.FontStyle fontStyle2) {
        return (java.lang.Math.abs(fontStyle.getWeight() - fontStyle2.getWeight()) / 100) + (fontStyle.getSlant() == fontStyle2.getSlant() ? 0 : 2);
    }

    @Override // o.h
    public android.graphics.Typeface a(android.content.Context context, n.a.c cVar, android.content.res.Resources resources, int i5) {
        try {
            android.graphics.fonts.FontFamily.Builder builder = null;
            for (n.a.d dVar : cVar.a()) {
                try {
                    android.graphics.fonts.Font fontBuild = new android.graphics.fonts.Font.Builder(resources, dVar.b()).setWeight(dVar.e()).setSlant(dVar.f() ? 1 : 0).setTtcIndex(dVar.c()).setFontVariationSettings(dVar.d()).build();
                    if (builder == null) {
                        builder = new android.graphics.fonts.FontFamily.Builder(fontBuild);
                    } else {
                        builder.addFont(fontBuild);
                    }
                } catch (java.io.IOException unused) {
                }
            }
            if (builder == null) {
                return null;
            }
            android.graphics.fonts.FontFamily fontFamilyBuild = builder.build();
            return new android.graphics.Typeface.CustomFallbackBuilder(fontFamilyBuild).setStyle(g(fontFamilyBuild, i5).getStyle()).build();
        } catch (java.lang.Exception unused2) {
            return null;
        }
    }

    @Override // o.h
    public android.graphics.Typeface b(android.content.Context context, android.os.CancellationSignal cancellationSignal, t.g.b[] bVarArr, int i5) {
        android.content.ContentResolver contentResolver = context.getContentResolver();
        try {
            android.graphics.fonts.FontFamily.Builder builder = null;
            for (t.g.b bVar : bVarArr) {
                try {
                    android.os.ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor(bVar.d(), "r", cancellationSignal);
                    if (parcelFileDescriptorOpenFileDescriptor == null) {
                        if (parcelFileDescriptorOpenFileDescriptor != null) {
                        }
                    } else {
                        try {
                            android.graphics.fonts.Font fontBuild = new android.graphics.fonts.Font.Builder(parcelFileDescriptorOpenFileDescriptor).setWeight(bVar.e()).setSlant(bVar.f() ? 1 : 0).setTtcIndex(bVar.c()).build();
                            if (builder == null) {
                                builder = new android.graphics.fonts.FontFamily.Builder(fontBuild);
                            } else {
                                builder.addFont(fontBuild);
                            }
                        } catch (java.lang.Throwable th) {
                            try {
                                parcelFileDescriptorOpenFileDescriptor.close();
                            } catch (java.lang.Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    }
                    parcelFileDescriptorOpenFileDescriptor.close();
                } catch (java.io.IOException unused) {
                }
            }
            if (builder == null) {
                return null;
            }
            android.graphics.fonts.FontFamily fontFamilyBuild = builder.build();
            return new android.graphics.Typeface.CustomFallbackBuilder(fontFamilyBuild).setStyle(g(fontFamilyBuild, i5).getStyle()).build();
        } catch (java.lang.Exception unused2) {
            return null;
        }
    }

    @Override // o.h
    public android.graphics.Typeface c(android.content.Context context, android.content.res.Resources resources, int i5, java.lang.String str, int i6) {
        try {
            android.graphics.fonts.Font fontBuild = new android.graphics.fonts.Font.Builder(resources, i5).build();
            return new android.graphics.Typeface.CustomFallbackBuilder(new android.graphics.fonts.FontFamily.Builder(fontBuild).build()).setStyle(fontBuild.getStyle()).build();
        } catch (java.lang.Exception unused) {
            return null;
        }
    }

    @Override // o.h
    public t.g.b f(t.g.b[] bVarArr, int i5) {
        throw new java.lang.RuntimeException("Do not use this function in API 29 or later.");
    }

    public final android.graphics.fonts.Font g(android.graphics.fonts.FontFamily fontFamily, int i5) {
        android.graphics.fonts.FontStyle fontStyle = new android.graphics.fonts.FontStyle((i5 & 1) != 0 ? 700 : 400, (i5 & 2) != 0 ? 1 : 0);
        android.graphics.fonts.Font font = fontFamily.getFont(0);
        int iH = h(fontStyle, font.getStyle());
        for (int i6 = 1; i6 < fontFamily.getSize(); i6++) {
            android.graphics.fonts.Font font2 = fontFamily.getFont(i6);
            int iH2 = h(fontStyle, font2.getStyle());
            if (iH2 < iH) {
                font = font2;
                iH = iH2;
            }
        }
        return font;
    }
}
