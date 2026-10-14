.class public final synthetic Lcom/cndatacom/campus/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/PortalMananger;

.field public final synthetic b:Landroid/graphics/Bitmap;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/cndatacom/campus/PortalMananger;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cndatacom/campus/o;->a:Lcom/cndatacom/campus/PortalMananger;

    iput-object p2, p0, Lcom/cndatacom/campus/o;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/cndatacom/campus/o;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/cndatacom/campus/o;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/cndatacom/campus/o;->a:Lcom/cndatacom/campus/PortalMananger;

    iget-object v1, p0, Lcom/cndatacom/campus/o;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/cndatacom/campus/o;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/cndatacom/campus/o;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/cndatacom/campus/PortalMananger;->c(Lcom/cndatacom/campus/PortalMananger;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
