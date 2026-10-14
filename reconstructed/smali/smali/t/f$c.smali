.class public Lt/f$c;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable<",
        "Lt/f$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lt/e;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lt/e;I)V
    .locals 0

    iput-object p1, p0, Lt/f$c;->a:Ljava/lang/String;

    iput-object p2, p0, Lt/f$c;->b:Landroid/content/Context;

    iput-object p3, p0, Lt/f$c;->c:Lt/e;

    iput p4, p0, Lt/f$c;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lt/f$e;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lt/f$c;->a:Ljava/lang/String;

    iget-object v1, p0, Lt/f$c;->b:Landroid/content/Context;

    iget-object v2, p0, Lt/f$c;->c:Lt/e;

    iget v3, p0, Lt/f$c;->d:I

    invoke-static {v0, v1, v2, v3}, Lt/f;->c(Ljava/lang/String;Landroid/content/Context;Lt/e;I)Lt/f$e;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 2
    :catchall_0
    new-instance v0, Lt/f$e;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Lt/f$e;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lt/f$c;->a()Lt/f$e;

    move-result-object v0

    return-object v0
.end method
