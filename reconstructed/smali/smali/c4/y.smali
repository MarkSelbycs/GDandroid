.class public final Lc4/y;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc4/y$b;
    }
.end annotation


# instance fields
.field public final a:Lc4/r;

.field public final b:Ljava/lang/String;

.field public final c:Lc4/q;

.field public final d:Lc4/z;

.field public final e:Ljava/lang/Object;

.field public volatile f:Lc4/d;


# direct methods
.method public constructor <init>(Lc4/y$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lc4/y$b;->a(Lc4/y$b;)Lc4/r;

    move-result-object v0

    iput-object v0, p0, Lc4/y;->a:Lc4/r;

    .line 4
    invoke-static {p1}, Lc4/y$b;->b(Lc4/y$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc4/y;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lc4/y$b;->c(Lc4/y$b;)Lc4/q$b;

    move-result-object v0

    invoke-virtual {v0}, Lc4/q$b;->e()Lc4/q;

    move-result-object v0

    iput-object v0, p0, Lc4/y;->c:Lc4/q;

    .line 6
    invoke-static {p1}, Lc4/y$b;->d(Lc4/y$b;)Lc4/z;

    move-result-object v0

    iput-object v0, p0, Lc4/y;->d:Lc4/z;

    .line 7
    invoke-static {p1}, Lc4/y$b;->e(Lc4/y$b;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lc4/y$b;->e(Lc4/y$b;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    iput-object p1, p0, Lc4/y;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lc4/y$b;Lc4/y$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc4/y;-><init>(Lc4/y$b;)V

    return-void
.end method

.method public static synthetic a(Lc4/y;)Lc4/q;
    .locals 0

    iget-object p0, p0, Lc4/y;->c:Lc4/q;

    return-object p0
.end method

.method public static synthetic b(Lc4/y;)Lc4/r;
    .locals 0

    iget-object p0, p0, Lc4/y;->a:Lc4/r;

    return-object p0
.end method

.method public static synthetic c(Lc4/y;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc4/y;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lc4/y;)Lc4/z;
    .locals 0

    iget-object p0, p0, Lc4/y;->d:Lc4/z;

    return-object p0
.end method

.method public static synthetic e(Lc4/y;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lc4/y;->e:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public f()Lc4/z;
    .locals 1

    iget-object v0, p0, Lc4/y;->d:Lc4/z;

    return-object v0
.end method

.method public g()Lc4/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lc4/y;->f:Lc4/d;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lc4/y;->c:Lc4/q;

    invoke-static {v0}, Lc4/d;->k(Lc4/q;)Lc4/d;

    move-result-object v0

    iput-object v0, p0, Lc4/y;->f:Lc4/d;

    :goto_0
    return-object v0
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc4/y;->c:Lc4/q;

    invoke-virtual {v0, p1}, Lc4/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public i()Lc4/q;
    .locals 1

    iget-object v0, p0, Lc4/y;->c:Lc4/q;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lc4/y;->a:Lc4/r;

    invoke-virtual {v0}, Lc4/r;->p()Z

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc4/y;->b:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lc4/y$b;
    .locals 2

    new-instance v0, Lc4/y$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc4/y$b;-><init>(Lc4/y;Lc4/y$a;)V

    return-object v0
.end method

.method public m()Lc4/r;
    .locals 1

    iget-object v0, p0, Lc4/y;->a:Lc4/r;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc4/y;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc4/y;->a:Lc4/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc4/y;->e:Ljava/lang/Object;

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
