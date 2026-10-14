.class Lcom/cndatacom/campus/PortalMananger$46$1;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger$46;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/PortalMananger$46;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger$46;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$46$1;->a:Lcom/cndatacom/campus/PortalMananger$46;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$46$1;->a:Lcom/cndatacom/campus/PortalMananger$46;

    iget-object v0, v0, Lcom/cndatacom/campus/PortalMananger$46;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->B0(Lcom/cndatacom/campus/PortalMananger;)V

    return-void
.end method
