.class public Landroidx/work/multiprocess/g;
.super Ljava/lang/Object;
.source "RemoteForegroundUpdater.java"

# interfaces
.implements Lq0/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/UUID;Lq0/h;)Lr2/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Lq0/h;",
            ")",
            "Lr2/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/work/multiprocess/j;->a(Landroid/content/Context;)Landroidx/work/multiprocess/j;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Landroidx/work/multiprocess/j;->b(Ljava/lang/String;Lq0/h;)Lr2/a;

    move-result-object p1

    return-object p1
.end method
