.class Lcom/cndatacom/campus/PortalMananger$15;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger;->n(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/cndatacom/campus/uni/UniJSCallback;

.field public final synthetic c:Lcom/cndatacom/campus/PortalMananger;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$15;->c:Lcom/cndatacom/campus/PortalMananger;

    iput-object p2, p0, Lcom/cndatacom/campus/PortalMananger$15;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cndatacom/campus/PortalMananger$15;->b:Lcom/cndatacom/campus/uni/UniJSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$15;->c:Lcom/cndatacom/campus/PortalMananger;

    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$15;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/cndatacom/campus/PortalMananger$15;->b:Lcom/cndatacom/campus/uni/UniJSCallback;

    invoke-static {v0, v1, v2}, Lcom/cndatacom/campus/PortalMananger;->S(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    return-void
.end method
