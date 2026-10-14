.class Lcom/cndatacom/campus/PortalMananger$42;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger;->O0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/cndatacom/campus/PortalMananger;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger;Z)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$42;->b:Lcom/cndatacom/campus/PortalMananger;

    iput-boolean p2, p0, Lcom/cndatacom/campus/PortalMananger$42;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$42;->b:Lcom/cndatacom/campus/PortalMananger;

    iget-boolean v1, p0, Lcom/cndatacom/campus/PortalMananger$42;->a:Z

    invoke-static {v0, v1}, Lcom/cndatacom/campus/PortalMananger;->A0(Lcom/cndatacom/campus/PortalMananger;Z)V

    return-void
.end method
