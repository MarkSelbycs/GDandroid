.class public Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;
.super Ljava/lang/Object;
.source "ParcelableWorkContinuationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lq0/g;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lq0/b0;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lq0/g;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lq0/g;",
            "Ljava/util/List<",
            "+",
            "Lq0/b0;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;->b:Lq0/g;

    .line 4
    iput-object p3, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;->c:Ljava/util/List;

    .line 5
    iput-object p4, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;->d:Ljava/util/List;

    return-void
.end method

.method public static e(Lr0/p0;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr0/p0;",
            "Ljava/util/List<",
            "Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;",
            ">;)",
            "Ljava/util/List<",
            "Lr0/c0;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;

    .line 3
    new-instance v8, Lr0/c0;

    .line 4
    invoke-virtual {v1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;->b()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;->a()Lq0/g;

    move-result-object v5

    .line 6
    invoke-virtual {v1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;->d()Ljava/util/List;

    move-result-object v6

    .line 7
    invoke-virtual {v1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;->e(Lr0/p0;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lr0/c0;-><init>(Lr0/p0;Ljava/lang/String;Lq0/g;Ljava/util/List;Ljava/util/List;)V

    .line 8
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a()Lq0/g;
    .locals 1

    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;->b:Lq0/g;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;->d:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lq0/b0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;->c:Ljava/util/List;

    return-object v0
.end method

.method public f(Lr0/p0;)Lr0/c0;
    .locals 7

    .line 1
    new-instance v6, Lr0/c0;

    .line 2
    invoke-virtual {p0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;->b()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;->a()Lq0/g;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;->d()Ljava/util/List;

    move-result-object v4

    .line 5
    invoke-virtual {p0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;->e(Lr0/p0;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lr0/c0;-><init>(Lr0/p0;Ljava/lang/String;Lq0/g;Ljava/util/List;Ljava/util/List;)V

    return-object v6
.end method
