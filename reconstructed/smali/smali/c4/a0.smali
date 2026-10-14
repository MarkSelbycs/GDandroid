.class public final Lc4/a0;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc4/a0$b;
    }
.end annotation


# instance fields
.field public final a:Lc4/y;

.field public final b:Lc4/w;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Lc4/p;

.field public final f:Lc4/q;

.field public final g:Lc4/b0;

.field public final h:Lc4/a0;

.field public final i:Lc4/a0;

.field public final o:Lc4/a0;

.field public final p:J

.field public final q:J

.field public volatile r:Lc4/d;


# direct methods
.method public constructor <init>(Lc4/a0$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lc4/a0$b;->a(Lc4/a0$b;)Lc4/y;

    move-result-object v0

    iput-object v0, p0, Lc4/a0;->a:Lc4/y;

    .line 4
    invoke-static {p1}, Lc4/a0$b;->b(Lc4/a0$b;)Lc4/w;

    move-result-object v0

    iput-object v0, p0, Lc4/a0;->b:Lc4/w;

    .line 5
    invoke-static {p1}, Lc4/a0$b;->e(Lc4/a0$b;)I

    move-result v0

    iput v0, p0, Lc4/a0;->c:I

    .line 6
    invoke-static {p1}, Lc4/a0$b;->f(Lc4/a0$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc4/a0;->d:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lc4/a0$b;->g(Lc4/a0$b;)Lc4/p;

    move-result-object v0

    iput-object v0, p0, Lc4/a0;->e:Lc4/p;

    .line 8
    invoke-static {p1}, Lc4/a0$b;->h(Lc4/a0$b;)Lc4/q$b;

    move-result-object v0

    invoke-virtual {v0}, Lc4/q$b;->e()Lc4/q;

    move-result-object v0

    iput-object v0, p0, Lc4/a0;->f:Lc4/q;

    .line 9
    invoke-static {p1}, Lc4/a0$b;->i(Lc4/a0$b;)Lc4/b0;

    move-result-object v0

    iput-object v0, p0, Lc4/a0;->g:Lc4/b0;

    .line 10
    invoke-static {p1}, Lc4/a0$b;->j(Lc4/a0$b;)Lc4/a0;

    move-result-object v0

    iput-object v0, p0, Lc4/a0;->h:Lc4/a0;

    .line 11
    invoke-static {p1}, Lc4/a0$b;->k(Lc4/a0$b;)Lc4/a0;

    move-result-object v0

    iput-object v0, p0, Lc4/a0;->i:Lc4/a0;

    .line 12
    invoke-static {p1}, Lc4/a0$b;->l(Lc4/a0$b;)Lc4/a0;

    move-result-object v0

    iput-object v0, p0, Lc4/a0;->o:Lc4/a0;

    .line 13
    invoke-static {p1}, Lc4/a0$b;->c(Lc4/a0$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lc4/a0;->p:J

    .line 14
    invoke-static {p1}, Lc4/a0$b;->d(Lc4/a0$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lc4/a0;->q:J

    return-void
.end method

.method public synthetic constructor <init>(Lc4/a0$b;Lc4/a0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc4/a0;-><init>(Lc4/a0$b;)V

    return-void
.end method

.method public static synthetic c(Lc4/a0;)Lc4/y;
    .locals 0

    iget-object p0, p0, Lc4/a0;->a:Lc4/y;

    return-object p0
.end method

.method public static synthetic e(Lc4/a0;)Lc4/w;
    .locals 0

    iget-object p0, p0, Lc4/a0;->b:Lc4/w;

    return-object p0
.end method

.method public static synthetic f(Lc4/a0;)I
    .locals 0

    iget p0, p0, Lc4/a0;->c:I

    return p0
.end method

.method public static synthetic h(Lc4/a0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc4/a0;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic i(Lc4/a0;)Lc4/p;
    .locals 0

    iget-object p0, p0, Lc4/a0;->e:Lc4/p;

    return-object p0
.end method

.method public static synthetic j(Lc4/a0;)Lc4/q;
    .locals 0

    iget-object p0, p0, Lc4/a0;->f:Lc4/q;

    return-object p0
.end method

.method public static synthetic l(Lc4/a0;)Lc4/b0;
    .locals 0

    iget-object p0, p0, Lc4/a0;->g:Lc4/b0;

    return-object p0
.end method

.method public static synthetic n(Lc4/a0;)Lc4/a0;
    .locals 0

    iget-object p0, p0, Lc4/a0;->h:Lc4/a0;

    return-object p0
.end method

.method public static synthetic o(Lc4/a0;)Lc4/a0;
    .locals 0

    iget-object p0, p0, Lc4/a0;->i:Lc4/a0;

    return-object p0
.end method

.method public static synthetic q(Lc4/a0;)Lc4/a0;
    .locals 0

    iget-object p0, p0, Lc4/a0;->o:Lc4/a0;

    return-object p0
.end method

.method public static synthetic r(Lc4/a0;)J
    .locals 2

    iget-wide v0, p0, Lc4/a0;->p:J

    return-wide v0
.end method

.method public static synthetic s(Lc4/a0;)J
    .locals 2

    iget-wide v0, p0, Lc4/a0;->q:J

    return-wide v0
.end method


# virtual methods
.method public C(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc4/a0;->H(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public H(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc4/a0;->f:Lc4/q;

    invoke-virtual {v0, p1}, Lc4/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public I()Lc4/q;
    .locals 1

    iget-object v0, p0, Lc4/a0;->f:Lc4/q;

    return-object v0
.end method

.method public K()Lc4/a0$b;
    .locals 2

    new-instance v0, Lc4/a0$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc4/a0$b;-><init>(Lc4/a0;Lc4/a0$a;)V

    return-object v0
.end method

.method public M()J
    .locals 2

    iget-wide v0, p0, Lc4/a0;->q:J

    return-wide v0
.end method

.method public P()Lc4/y;
    .locals 1

    iget-object v0, p0, Lc4/a0;->a:Lc4/y;

    return-object v0
.end method

.method public R()J
    .locals 2

    iget-wide v0, p0, Lc4/a0;->p:J

    return-wide v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lc4/a0;->g:Lc4/b0;

    invoke-virtual {v0}, Lc4/b0;->close()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc4/a0;->b:Lc4/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc4/a0;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc4/a0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc4/a0;->a:Lc4/y;

    .line 2
    invoke-virtual {v1}, Lc4/y;->m()Lc4/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lc4/b0;
    .locals 1

    iget-object v0, p0, Lc4/a0;->g:Lc4/b0;

    return-object v0
.end method

.method public x()Lc4/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lc4/a0;->r:Lc4/d;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lc4/a0;->f:Lc4/q;

    invoke-static {v0}, Lc4/d;->k(Lc4/q;)Lc4/d;

    move-result-object v0

    iput-object v0, p0, Lc4/a0;->r:Lc4/d;

    :goto_0
    return-object v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lc4/a0;->c:I

    return v0
.end method

.method public z()Lc4/p;
    .locals 1

    iget-object v0, p0, Lc4/a0;->e:Lc4/p;

    return-object v0
.end method
