.class public final synthetic Lcom/cndatacom/campus/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/PortalMananger;


# direct methods
.method public synthetic constructor <init>(Lcom/cndatacom/campus/PortalMananger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cndatacom/campus/m;->a:Lcom/cndatacom/campus/PortalMananger;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/campus/m;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->f(Lcom/cndatacom/campus/PortalMananger;)V

    return-void
.end method
