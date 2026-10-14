.class public final Lb4/a$a;
.super Ljava/lang/Object;
.source "Select.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ll3/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/q<",
            "Lb4/b<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ll3/l<",
            "Ljava/lang/Throwable;",
            "La3/o;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Lb4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb4/a<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb4/b;Ljava/lang/Object;)Ll3/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb4/b<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ll3/l<",
            "Ljava/lang/Throwable;",
            "La3/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb4/a$a;->c:Ll3/q;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lb4/a$a;->b:Ljava/lang/Object;

    invoke-interface {v0, p1, v1, p2}, Ll3/q;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll3/l;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb4/a$a;->d:Ljava/lang/Object;

    iget-object v1, p0, Lb4/a$a;->f:Lb4/a;

    .line 2
    instance-of v2, v0, Ly3/e0;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    check-cast v0, Ly3/e0;

    iget v2, p0, Lb4/a$a;->e:I

    invoke-virtual {v1}, Lb4/a;->b()Ld3/g;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Ly3/e0;->o(ILjava/lang/Throwable;Ld3/g;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Lt3/r0;

    if-eqz v1, :cond_1

    move-object v3, v0

    check-cast v3, Lt3/r0;

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lt3/r0;->d()V

    :cond_2
    :goto_0
    return-void
.end method
