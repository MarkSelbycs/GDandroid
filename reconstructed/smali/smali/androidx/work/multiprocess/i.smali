.class public Landroidx/work/multiprocess/i;
.super Ljava/lang/Object;
.source "RemoteProgressUpdater.java"

# interfaces
.implements Lq0/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/UUID;Landroidx/work/b;)Lr2/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Landroidx/work/b;",
            ")",
            "Lr2/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroidx/work/multiprocess/j;->a(Landroid/content/Context;)Landroidx/work/multiprocess/j;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroidx/work/multiprocess/j;->c(Ljava/util/UUID;Landroidx/work/b;)Lr2/a;

    move-result-object p1

    return-object p1
.end method
