.class public abstract Lq0/z;
.super Ljava/lang/Object;
.source "WorkManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AddedAbstractMethod"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/z$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Landroid/content/Context;)Lq0/z;
    .locals 0

    invoke-static {p0}, Lr0/p0;->o(Landroid/content/Context;)Lr0/p0;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Landroidx/work/a;)V
    .locals 0

    invoke-static {p0, p1}, Lr0/p0;->f(Landroid/content/Context;Landroidx/work/a;)V

    return-void
.end method

.method public static g()Z
    .locals 1

    invoke-static {}, Lr0/p0;->g()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Lq0/r;
.end method

.method public abstract b(Ljava/util/List;)Lq0/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lq0/b0;",
            ">;)",
            "Lq0/r;"
        }
    .end annotation
.end method

.method public final c(Lq0/b0;)Lq0/r;
    .locals 0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lq0/z;->b(Ljava/util/List;)Lq0/r;

    move-result-object p1

    return-object p1
.end method

.method public abstract d(Ljava/lang/String;Lq0/f;Lq0/t;)Lq0/r;
.end method
