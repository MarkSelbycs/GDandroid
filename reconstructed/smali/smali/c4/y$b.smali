.class public Lc4/y$b;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lc4/r;

.field public b:Ljava/lang/String;

.field public c:Lc4/q$b;

.field public d:Lc4/z;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    .line 3
    iput-object v0, p0, Lc4/y$b;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Lc4/q$b;

    invoke-direct {v0}, Lc4/q$b;-><init>()V

    iput-object v0, p0, Lc4/y$b;->c:Lc4/q$b;

    return-void
.end method

.method public constructor <init>(Lc4/y;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Lc4/y;->b(Lc4/y;)Lc4/r;

    move-result-object v0

    iput-object v0, p0, Lc4/y$b;->a:Lc4/r;

    .line 7
    invoke-static {p1}, Lc4/y;->c(Lc4/y;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc4/y$b;->b:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lc4/y;->d(Lc4/y;)Lc4/z;

    move-result-object v0

    iput-object v0, p0, Lc4/y$b;->d:Lc4/z;

    .line 9
    invoke-static {p1}, Lc4/y;->e(Lc4/y;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc4/y$b;->e:Ljava/lang/Object;

    .line 10
    invoke-static {p1}, Lc4/y;->a(Lc4/y;)Lc4/q;

    move-result-object p1

    invoke-virtual {p1}, Lc4/q;->e()Lc4/q$b;

    move-result-object p1

    iput-object p1, p0, Lc4/y$b;->c:Lc4/q$b;

    return-void
.end method

.method public synthetic constructor <init>(Lc4/y;Lc4/y$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc4/y$b;-><init>(Lc4/y;)V

    return-void
.end method

.method public static synthetic a(Lc4/y$b;)Lc4/r;
    .locals 0

    iget-object p0, p0, Lc4/y$b;->a:Lc4/r;

    return-object p0
.end method

.method public static synthetic b(Lc4/y$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc4/y$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lc4/y$b;)Lc4/q$b;
    .locals 0

    iget-object p0, p0, Lc4/y$b;->c:Lc4/q$b;

    return-object p0
.end method

.method public static synthetic d(Lc4/y$b;)Lc4/z;
    .locals 0

    iget-object p0, p0, Lc4/y$b;->d:Lc4/z;

    return-object p0
.end method

.method public static synthetic e(Lc4/y$b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lc4/y$b;->e:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public f(Ljava/lang/String;Ljava/lang/String;)Lc4/y$b;
    .locals 1

    iget-object v0, p0, Lc4/y$b;->c:Lc4/q$b;

    invoke-virtual {v0, p1, p2}, Lc4/q$b;->b(Ljava/lang/String;Ljava/lang/String;)Lc4/q$b;

    return-object p0
.end method

.method public g()Lc4/y;
    .locals 2

    .line 1
    iget-object v0, p0, Lc4/y$b;->a:Lc4/r;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lc4/y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc4/y;-><init>(Lc4/y$b;Lc4/y$a;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Lc4/y$b;
    .locals 2

    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lc4/y$b;->k(Ljava/lang/String;Lc4/z;)Lc4/y$b;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)Lc4/y$b;
    .locals 1

    iget-object v0, p0, Lc4/y$b;->c:Lc4/q$b;

    invoke-virtual {v0, p1, p2}, Lc4/q$b;->h(Ljava/lang/String;Ljava/lang/String;)Lc4/q$b;

    return-object p0
.end method

.method public j(Lc4/q;)Lc4/y$b;
    .locals 0

    invoke-virtual {p1}, Lc4/q;->e()Lc4/q$b;

    move-result-object p1

    iput-object p1, p0, Lc4/y$b;->c:Lc4/q$b;

    return-object p0
.end method

.method public k(Ljava/lang/String;Lc4/z;)Lc4/y$b;
    .locals 2

    const-string v0, "method == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "method "

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p1}, Lh4/g;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    .line 5
    invoke-static {p1}, Lh4/g;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_3
    :goto_1
    iput-object p1, p0, Lc4/y$b;->b:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lc4/y$b;->d:Lc4/z;

    return-object p0

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(Lc4/z;)Lc4/y$b;
    .locals 1

    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lc4/y$b;->k(Ljava/lang/String;Lc4/z;)Lc4/y$b;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/String;)Lc4/y$b;
    .locals 1

    iget-object v0, p0, Lc4/y$b;->c:Lc4/q$b;

    invoke-virtual {v0, p1}, Lc4/q$b;->g(Ljava/lang/String;)Lc4/q$b;

    return-object p0
.end method

.method public n(Lc4/r;)Lc4/y$b;
    .locals 1

    const-string v0, "url == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lc4/y$b;->a:Lc4/r;

    return-object p0
.end method

.method public o(Ljava/lang/String;)Lc4/y$b;
    .locals 7

    const-string v0, "url == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const-string v4, "ws:"

    move-object v1, p1

    .line 2
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v3, "wss:"

    move-object v0, p1

    .line 4
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_1
    :goto_0
    invoke-static {p1}, Lc4/r;->t(Ljava/lang/String;)Lc4/r;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0, v0}, Lc4/y$b;->n(Lc4/r;)Lc4/y$b;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
