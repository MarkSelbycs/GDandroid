.class Lcom/cndatacom/sdk/portal/util/ImageUtil$1;
.super Landroid/os/AsyncTask;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/sdk/portal/util/ImageUtil;->loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;IILcom/cndatacom/sdk/portal/util/ImageUtil$ImageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$filePath:Ljava/lang/String;

.field public final synthetic val$height:I

.field public final synthetic val$imageCallback:Lcom/cndatacom/sdk/portal/util/ImageUtil$ImageCallback;

.field public final synthetic val$imageUrl:Ljava/lang/String;

.field public final synthetic val$imageView:Landroid/widget/ImageView;

.field public final synthetic val$key:Ljava/lang/String;

.field public final synthetic val$width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/widget/ImageView;Ljava/lang/String;Lcom/cndatacom/sdk/portal/util/ImageUtil$ImageCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/util/ImageUtil$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/cndatacom/sdk/portal/util/ImageUtil$1;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/cndatacom/sdk/portal/util/ImageUtil$1;->val$imageUrl:Ljava/lang/String;

    iput p4, p0, Lcom/cndatacom/sdk/portal/util/ImageUtil$1;->val$width:I

    iput p5, p0, Lcom/cndatacom/sdk/portal/util/ImageUtil$1;->val$height:I

    iput-object p6, p0, Lcom/cndatacom/sdk/portal/util/ImageUtil$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/cndatacom/sdk/portal/util/ImageUtil$1;->val$key:Ljava/lang/String;

    iput-object p8, p0, Lcom/cndatacom/sdk/portal/util/ImageUtil$1;->val$imageCallback:Lcom/cndatacom/sdk/portal/util/ImageUtil$ImageCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .line 2
    iget-object p1, p0, Lcom/cndatacom/sdk/portal/util/ImageUtil$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/util/ImageUtil$1;->val$filePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/cndatacom/sdk/portal/util/ImageUtil$1;->val$imageUrl:Ljava/lang/String;

    iget v2, p0, Lcom/cndatacom/sdk/portal/util/ImageUtil$1;->val$width:I

    iget v3, p0, Lcom/cndatacom/sdk/portal/util/ImageUtil$1;->val$height:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/cndatacom/sdk/portal/util/ImageUtil;->loadImageFormFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cndatacom/sdk/portal/util/ImageUtil$1;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/util/ImageUtil$1;->val$imageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/util/ImageUtil$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/cndatacom/sdk/portal/util/ImageUtil$1;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/util/ImageUtil$1;->val$imageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/cndatacom/sdk/portal/util/ImageUtil$1;->val$imageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/cndatacom/sdk/portal/util/ImageUtil$1;->val$imageCallback:Lcom/cndatacom/sdk/portal/util/ImageUtil$ImageCallback;

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p1}, Lcom/cndatacom/sdk/portal/util/ImageUtil$ImageCallback;->success()V

    :cond_2
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/cndatacom/sdk/portal/util/ImageUtil$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
