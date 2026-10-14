.class public Lcom/cndatacom/sdk/portal/util/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cndatacom/sdk/portal/util/ImageUtil$ImageCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 9

    .line 1
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    .line 2
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, p0

    const/4 p0, 0x1

    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    move v5, p0

    goto :goto_0

    :cond_0
    mul-double v5, v0, v2

    int-to-double v7, p2

    div-double/2addr v5, v7

    .line 3
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 4
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    :goto_0
    if-ne p1, v4, :cond_1

    const/16 v0, 0x80

    goto :goto_1

    :cond_1
    int-to-double v6, p1

    div-double/2addr v0, v6

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 6
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_1
    if-ge v0, v5, :cond_2

    return v5

    :cond_2
    if-ne p2, v4, :cond_3

    if-ne p1, v4, :cond_3

    return p0

    :cond_3
    if-ne p1, v4, :cond_4

    return v5

    :cond_4
    return v0
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cndatacom/sdk/portal/util/ImageUtil;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p0

    const/16 p1, 0x8

    if-gt p0, p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    if-ge p1, p0, :cond_1

    shl-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x7

    .line 2
    div-int/2addr p0, p1

    mul-int/2addr p1, p0

    :cond_1
    return p1
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x800

    .line 1
    invoke-static {p0, p1, v0}, Lcom/cndatacom/sdk/portal/util/ImageUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-void
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-array p2, p2, [B

    .line 3
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private static getBytes(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    invoke-static {p0, v0}, Lcom/cndatacom/sdk/portal/util/ImageUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;IILcom/cndatacom/sdk/portal/util/ImageUtil$ImageCallback;)V
    .locals 11

    move-object v6, p3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_0

    .line 2
    invoke-virtual {p3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p3, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 4
    new-instance v10, Lcom/cndatacom/sdk/portal/util/ImageUtil$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move/from16 v5, p5

    move-object v6, p3

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/cndatacom/sdk/portal/util/ImageUtil$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/widget/ImageView;Ljava/lang/String;Lcom/cndatacom/sdk/portal/util/ImageUtil$ImageCallback;)V

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v10, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static loadImageFormFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-static {p1, p3, p4}, Lcom/cndatacom/sdk/portal/util/ImageUtil;->readBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0, p2, p3, p4}, Lcom/cndatacom/sdk/portal/util/ImageUtil;->loadImageFormUrl(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 p0, 0x64

    .line 3
    invoke-static {p1, v0, p0}, Lcom/cndatacom/sdk/portal/util/ImageUtil;->writeBitmapToFile(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    :cond_0
    return-object v0
.end method

.method public static loadImageFormUrl(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance p0, Lcom/cndatacom/sdk/portal/http/HttpClient;

    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient;-><init>()V

    invoke-virtual {p0, p1}, Lcom/cndatacom/sdk/portal/http/HttpClient;->get(Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getData()[B

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getData()[B

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getData()[B

    move-result-object p0

    .line 5
    invoke-static {p0, p2, p3}, Lcom/cndatacom/sdk/portal/util/ImageUtil;->readBitmapFromByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static readBitmapFromByteArray([BII)Landroid/graphics/Bitmap;
    .locals 2

    mul-int/2addr p1, p2

    .line 1
    :try_start_0
    div-int/lit8 p1, p1, 0x2

    .line 2
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    .line 5
    invoke-static {p2, v0, p1}, Lcom/cndatacom/sdk/portal/util/ImageUtil;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 6
    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7
    array-length p1, p0

    .line 8
    invoke-static {p0, v1, p1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static readBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    mul-int/2addr p1, p2

    .line 3
    div-int/lit8 p1, p1, 0x2

    const/4 p2, -0x1

    .line 4
    invoke-static {v0, p2, p1}, Lcom/cndatacom/sdk/portal/util/ImageUtil;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 5
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static readBitmapFromInputStream(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    .locals 3

    mul-int/2addr p1, p2

    .line 1
    :try_start_0
    div-int/lit8 p1, p1, 0x2

    .line 2
    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ImageUtil;->getBytes(Ljava/io/InputStream;)[B

    move-result-object p2

    .line 3
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    .line 6
    invoke-static {v0, v1, p1}, Lcom/cndatacom/sdk/portal/util/ImageUtil;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 7
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8
    array-length p1, p2

    .line 9
    invoke-static {p2, v2, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static writeBitmapToFile(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 4
    :cond_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 5
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p0, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 7
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 8
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
