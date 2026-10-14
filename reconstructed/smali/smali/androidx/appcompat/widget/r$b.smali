.class public Landroidx/appcompat/widget/r$b;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/r;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/r;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/r$b;->a:Landroidx/appcompat/widget/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/r$b;->a:Landroidx/appcompat/widget/r;

    invoke-virtual {v0}, Landroidx/appcompat/widget/r;->e()V

    return-void
.end method
