.class Lcom/cndatacom/campus/PortalMananger$PermissionRunnable;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cndatacom/campus/PortalMananger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PermissionRunnable"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/cndatacom/campus/PortalMananger;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger;I)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$PermissionRunnable;->b:Lcom/cndatacom/campus/PortalMananger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Lcom/cndatacom/campus/PortalMananger$PermissionRunnable;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cndatacom/campus/PortalMananger;ILcom/cndatacom/campus/PortalMananger$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cndatacom/campus/PortalMananger$PermissionRunnable;-><init>(Lcom/cndatacom/campus/PortalMananger;I)V

    return-void
.end method


# virtual methods
.method public getRequestCode()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/campus/PortalMananger$PermissionRunnable;->a:I

    return v0
.end method

.method public run()V
    .locals 0

    return-void
.end method
