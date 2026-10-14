.class public final synthetic Lcom/cndatacom/campus/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/MainActivity$JavaScriptInterface;


# direct methods
.method public synthetic constructor <init>(Lcom/cndatacom/campus/MainActivity$JavaScriptInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cndatacom/campus/c;->a:Lcom/cndatacom/campus/MainActivity$JavaScriptInterface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/campus/c;->a:Lcom/cndatacom/campus/MainActivity$JavaScriptInterface;

    invoke-static {v0}, Lcom/cndatacom/campus/MainActivity$JavaScriptInterface;->a(Lcom/cndatacom/campus/MainActivity$JavaScriptInterface;)V

    return-void
.end method
