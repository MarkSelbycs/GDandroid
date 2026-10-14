.class public Lu2/d$a;
.super Ls2/s;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu2/d;->a(Ls2/e;Lx2/a;)Ls2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls2/s<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Ls2/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls2/s<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Ls2/e;

.field public final synthetic e:Lx2/a;

.field public final synthetic f:Lu2/d;


# direct methods
.method public constructor <init>(Lu2/d;ZZLs2/e;Lx2/a;)V
    .locals 0

    iput-object p1, p0, Lu2/d$a;->f:Lu2/d;

    iput-boolean p2, p0, Lu2/d$a;->b:Z

    iput-boolean p3, p0, Lu2/d$a;->c:Z

    iput-object p4, p0, Lu2/d$a;->d:Ls2/e;

    iput-object p5, p0, Lu2/d$a;->e:Lx2/a;

    invoke-direct {p0}, Ls2/s;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ly2/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lu2/d$a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ly2/a;->m0()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lu2/d$a;->e()Ls2/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls2/s;->b(Ly2/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ly2/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lu2/d$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ly2/c;->u()Ly2/c;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lu2/d$a;->e()Ls2/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ls2/s;->d(Ly2/c;Ljava/lang/Object;)V

    return-void
.end method

.method public final e()Ls2/s;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls2/s<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu2/d$a;->a:Ls2/s;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lu2/d$a;->d:Ls2/e;

    iget-object v1, p0, Lu2/d$a;->f:Lu2/d;

    iget-object v2, p0, Lu2/d$a;->e:Lx2/a;

    .line 3
    invoke-virtual {v0, v1, v2}, Ls2/e;->h(Ls2/t;Lx2/a;)Ls2/s;

    move-result-object v0

    iput-object v0, p0, Lu2/d$a;->a:Ls2/s;

    :goto_0
    return-object v0
.end method
