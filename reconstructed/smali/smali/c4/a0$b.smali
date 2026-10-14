.class public Lc4/a0$b;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lc4/y;

.field public b:Lc4/w;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lc4/p;

.field public f:Lc4/q$b;

.field public g:Lc4/b0;

.field public h:Lc4/a0;

.field public i:Lc4/a0;

.field public j:Lc4/a0;

.field public k:J

.field public l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lc4/a0$b;->c:I

    .line 4
    new-instance v0, Lc4/q$b;

    invoke-direct {v0}, Lc4/q$b;-><init>()V

    iput-object v0, p0, Lc4/a0$b;->f:Lc4/q$b;

    return-void
.end method

.method public constructor <init>(Lc4/a0;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lc4/a0$b;->c:I

    .line 7
    invoke-static {p1}, Lc4/a0;->c(Lc4/a0;)Lc4/y;

    move-result-object v0

    iput-object v0, p0, Lc4/a0$b;->a:Lc4/y;

    .line 8
    invoke-static {p1}, Lc4/a0;->e(Lc4/a0;)Lc4/w;

    move-result-object v0

    iput-object v0, p0, Lc4/a0$b;->b:Lc4/w;

    .line 9
    invoke-static {p1}, Lc4/a0;->f(Lc4/a0;)I

    move-result v0

    iput v0, p0, Lc4/a0$b;->c:I

    .line 10
    invoke-static {p1}, Lc4/a0;->h(Lc4/a0;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc4/a0$b;->d:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lc4/a0;->i(Lc4/a0;)Lc4/p;

    move-result-object v0

    iput-object v0, p0, Lc4/a0$b;->e:Lc4/p;

    .line 12
    invoke-static {p1}, Lc4/a0;->j(Lc4/a0;)Lc4/q;

    move-result-object v0

    invoke-virtual {v0}, Lc4/q;->e()Lc4/q$b;

    move-result-object v0

    iput-object v0, p0, Lc4/a0$b;->f:Lc4/q$b;

    .line 13
    invoke-static {p1}, Lc4/a0;->l(Lc4/a0;)Lc4/b0;

    move-result-object v0

    iput-object v0, p0, Lc4/a0$b;->g:Lc4/b0;

    .line 14
    invoke-static {p1}, Lc4/a0;->n(Lc4/a0;)Lc4/a0;

    move-result-object v0

    iput-object v0, p0, Lc4/a0$b;->h:Lc4/a0;

    .line 15
    invoke-static {p1}, Lc4/a0;->o(Lc4/a0;)Lc4/a0;

    move-result-object v0

    iput-object v0, p0, Lc4/a0$b;->i:Lc4/a0;

    .line 16
    invoke-static {p1}, Lc4/a0;->q(Lc4/a0;)Lc4/a0;

    move-result-object v0

    iput-object v0, p0, Lc4/a0$b;->j:Lc4/a0;

    .line 17
    invoke-static {p1}, Lc4/a0;->r(Lc4/a0;)J

    move-result-wide v0

    iput-wide v0, p0, Lc4/a0$b;->k:J

    .line 18
    invoke-static {p1}, Lc4/a0;->s(Lc4/a0;)J

    move-result-wide v0

    iput-wide v0, p0, Lc4/a0$b;->l:J

    return-void
.end method

.method public synthetic constructor <init>(Lc4/a0;Lc4/a0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc4/a0$b;-><init>(Lc4/a0;)V

    return-void
.end method

.method public static synthetic a(Lc4/a0$b;)Lc4/y;
    .locals 0

    iget-object p0, p0, Lc4/a0$b;->a:Lc4/y;

    return-object p0
.end method

.method public static synthetic b(Lc4/a0$b;)Lc4/w;
    .locals 0

    iget-object p0, p0, Lc4/a0$b;->b:Lc4/w;

    return-object p0
.end method

.method public static synthetic c(Lc4/a0$b;)J
    .locals 2

    iget-wide v0, p0, Lc4/a0$b;->k:J

    return-wide v0
.end method

.method public static synthetic d(Lc4/a0$b;)J
    .locals 2

    iget-wide v0, p0, Lc4/a0$b;->l:J

    return-wide v0
.end method

.method public static synthetic e(Lc4/a0$b;)I
    .locals 0

    iget p0, p0, Lc4/a0$b;->c:I

    return p0
.end method

.method public static synthetic f(Lc4/a0$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc4/a0$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g(Lc4/a0$b;)Lc4/p;
    .locals 0

    iget-object p0, p0, Lc4/a0$b;->e:Lc4/p;

    return-object p0
.end method

.method public static synthetic h(Lc4/a0$b;)Lc4/q$b;
    .locals 0

    iget-object p0, p0, Lc4/a0$b;->f:Lc4/q$b;

    return-object p0
.end method

.method public static synthetic i(Lc4/a0$b;)Lc4/b0;
    .locals 0

    iget-object p0, p0, Lc4/a0$b;->g:Lc4/b0;

    return-object p0
.end method

.method public static synthetic j(Lc4/a0$b;)Lc4/a0;
    .locals 0

    iget-object p0, p0, Lc4/a0$b;->h:Lc4/a0;

    return-object p0
.end method

.method public static synthetic k(Lc4/a0$b;)Lc4/a0;
    .locals 0

    iget-object p0, p0, Lc4/a0$b;->i:Lc4/a0;

    return-object p0
.end method

.method public static synthetic l(Lc4/a0$b;)Lc4/a0;
    .locals 0

    iget-object p0, p0, Lc4/a0$b;->j:Lc4/a0;

    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lc4/a0$b;
    .locals 1

    iget-object v0, p0, Lc4/a0$b;->f:Lc4/q$b;

    invoke-virtual {v0, p1}, Lc4/q$b;->g(Ljava/lang/String;)Lc4/q$b;

    return-object p0
.end method

.method public B(Lc4/y;)Lc4/a0$b;
    .locals 0

    iput-object p1, p0, Lc4/a0$b;->a:Lc4/y;

    return-object p0
.end method

.method public C(J)Lc4/a0$b;
    .locals 0

    iput-wide p1, p0, Lc4/a0$b;->k:J

    return-object p0
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)Lc4/a0$b;
    .locals 1

    iget-object v0, p0, Lc4/a0$b;->f:Lc4/q$b;

    invoke-virtual {v0, p1, p2}, Lc4/q$b;->b(Ljava/lang/String;Ljava/lang/String;)Lc4/q$b;

    return-object p0
.end method

.method public n(Lc4/b0;)Lc4/a0$b;
    .locals 0

    iput-object p1, p0, Lc4/a0$b;->g:Lc4/b0;

    return-object p0
.end method

.method public o()Lc4/a0;
    .locals 3

    .line 1
    iget-object v0, p0, Lc4/a0$b;->a:Lc4/y;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lc4/a0$b;->b:Lc4/w;

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lc4/a0$b;->c:I

    if-ltz v0, :cond_0

    .line 4
    new-instance v0, Lc4/a0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc4/a0;-><init>(Lc4/a0$b;Lc4/a0$a;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lc4/a0$b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public p(Lc4/a0;)Lc4/a0$b;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    .line 1
    invoke-virtual {p0, v0, p1}, Lc4/a0$b;->r(Ljava/lang/String;Lc4/a0;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lc4/a0$b;->i:Lc4/a0;

    return-object p0
.end method

.method public final q(Lc4/a0;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lc4/a0;->l(Lc4/a0;)Lc4/b0;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final r(Ljava/lang/String;Lc4/a0;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lc4/a0;->l(Lc4/a0;)Lc4/b0;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2
    invoke-static {p2}, Lc4/a0;->n(Lc4/a0;)Lc4/a0;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3
    invoke-static {p2}, Lc4/a0;->o(Lc4/a0;)Lc4/a0;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {p2}, Lc4/a0;->q(Lc4/a0;)Lc4/a0;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public s(I)Lc4/a0$b;
    .locals 0

    iput p1, p0, Lc4/a0$b;->c:I

    return-object p0
.end method

.method public t(Lc4/p;)Lc4/a0$b;
    .locals 0

    iput-object p1, p0, Lc4/a0$b;->e:Lc4/p;

    return-object p0
.end method

.method public u(Lc4/q;)Lc4/a0$b;
    .locals 0

    invoke-virtual {p1}, Lc4/q;->e()Lc4/q$b;

    move-result-object p1

    iput-object p1, p0, Lc4/a0$b;->f:Lc4/q$b;

    return-object p0
.end method

.method public v(Ljava/lang/String;)Lc4/a0$b;
    .locals 0

    iput-object p1, p0, Lc4/a0$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public w(Lc4/a0;)Lc4/a0$b;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    .line 1
    invoke-virtual {p0, v0, p1}, Lc4/a0$b;->r(Ljava/lang/String;Lc4/a0;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lc4/a0$b;->h:Lc4/a0;

    return-object p0
.end method

.method public x(Lc4/a0;)Lc4/a0$b;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lc4/a0$b;->q(Lc4/a0;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lc4/a0$b;->j:Lc4/a0;

    return-object p0
.end method

.method public y(Lc4/w;)Lc4/a0$b;
    .locals 0

    iput-object p1, p0, Lc4/a0$b;->b:Lc4/w;

    return-object p0
.end method

.method public z(J)Lc4/a0$b;
    .locals 0

    iput-wide p1, p0, Lc4/a0$b;->l:J

    return-object p0
.end method
