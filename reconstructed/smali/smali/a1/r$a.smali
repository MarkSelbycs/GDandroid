.class public La1/r$a;
.super La1/r;
.source "StatusRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La1/r;->a(Lr0/p0;Lq0/a0;)La1/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La1/r<",
        "Ljava/util/List<",
        "Lq0/y;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lr0/p0;

.field public final synthetic c:Lq0/a0;


# direct methods
.method public constructor <init>(Lr0/p0;Lq0/a0;)V
    .locals 0

    iput-object p1, p0, La1/r$a;->b:Lr0/p0;

    iput-object p2, p0, La1/r$a;->c:Lq0/a0;

    invoke-direct {p0}, La1/r;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, La1/r$a;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lq0/y;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La1/r$a;->b:Lr0/p0;

    invoke-virtual {v0}, Lr0/p0;->u()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->F()Lz0/g;

    move-result-object v0

    iget-object v1, p0, La1/r$a;->c:Lq0/a0;

    .line 3
    invoke-static {v1}, La1/o;->b(Lq0/a0;)Lf0/j;

    move-result-object v1

    .line 4
    invoke-interface {v0, v1}, Lz0/g;->a(Lf0/j;)Ljava/util/List;

    move-result-object v0

    .line 5
    sget-object v1, Lz0/u;->z:Li/a;

    invoke-interface {v1, v0}, Li/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
