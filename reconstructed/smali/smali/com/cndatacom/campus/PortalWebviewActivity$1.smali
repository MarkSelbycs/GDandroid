.class Lcom/cndatacom/campus/PortalWebviewActivity$1;
.super Landroid/webkit/WebViewClient;
.source "PortalWebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalWebviewActivity;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/PortalWebviewActivity;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalWebviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalWebviewActivity$1;->a:Lcom/cndatacom/campus/PortalWebviewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/cndatacom/campus/PortalWebviewActivity$1;->a:Lcom/cndatacom/campus/PortalWebviewActivity;

    invoke-static {p1}, Lcom/cndatacom/campus/PortalWebviewActivity;->s(Lcom/cndatacom/campus/PortalWebviewActivity;)V

    .line 3
    iget-object p1, p0, Lcom/cndatacom/campus/PortalWebviewActivity$1;->a:Lcom/cndatacom/campus/PortalWebviewActivity;

    invoke-static {p1}, Lcom/cndatacom/campus/PortalWebviewActivity;->t(Lcom/cndatacom/campus/PortalWebviewActivity;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
