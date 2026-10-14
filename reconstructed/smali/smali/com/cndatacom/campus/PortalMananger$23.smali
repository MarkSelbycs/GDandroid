.class Lcom/cndatacom/campus/PortalMananger$23;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger;->n1(ZLcom/cndatacom/campus/uni/UniJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/uni/UniJSCallback;

.field public final synthetic b:Lcom/cndatacom/campus/PortalMananger;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$23;->b:Lcom/cndatacom/campus/PortalMananger;

    iput-object p2, p0, Lcom/cndatacom/campus/PortalMananger$23;->a:Lcom/cndatacom/campus/uni/UniJSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$23;->b:Lcom/cndatacom/campus/PortalMananger;

    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$23;->a:Lcom/cndatacom/campus/uni/UniJSCallback;

    invoke-static {v0, v1}, Lcom/cndatacom/campus/PortalMananger;->X(Lcom/cndatacom/campus/PortalMananger;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    return-void
.end method
