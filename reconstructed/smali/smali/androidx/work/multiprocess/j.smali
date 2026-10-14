.class public abstract Landroidx/work/multiprocess/j;
.super Ljava/lang/Object;
.source "RemoteWorkManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroidx/work/multiprocess/j;
    .locals 1

    .line 1
    invoke-static {p0}, Lr0/p0;->o(Landroid/content/Context;)Lr0/p0;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lr0/p0;->r()Landroidx/work/multiprocess/j;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to initialize RemoteWorkManager"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract b(Ljava/lang/String;Lq0/h;)Lr2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lq0/h;",
            ")",
            "Lr2/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c(Ljava/util/UUID;Landroidx/work/b;)Lr2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/work/b;",
            ")",
            "Lr2/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method
