.class public Lt/f$b;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"

# interfaces
.implements Lv/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt/f;->d(Landroid/content/Context;Lt/e;ILjava/util/concurrent/Executor;Lt/a;)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv/a<",
        "Lt/f$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lt/a;


# direct methods
.method public constructor <init>(Lt/a;)V
    .locals 0

    iput-object p1, p0, Lt/f$b;->a:Lt/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lt/f$e;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lt/f$e;

    const/4 v0, -0x3

    invoke-direct {p1, v0}, Lt/f$e;-><init>(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lt/f$b;->a:Lt/a;

    invoke-virtual {v0, p1}, Lt/a;->b(Lt/f$e;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lt/f$e;

    invoke-virtual {p0, p1}, Lt/f$b;->a(Lt/f$e;)V

    return-void
.end method
