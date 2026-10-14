.class public Ll/p$a;
.super Ljava/lang/Object;
.source "Snapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ll/e;

.field public b:Ll/e;

.field public c:I

.field public d:Ll/e$c;

.field public e:I


# direct methods
.method public constructor <init>(Ll/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll/p$a;->a:Ll/e;

    .line 3
    invoke-virtual {p1}, Ll/e;->i()Ll/e;

    move-result-object v0

    iput-object v0, p0, Ll/p$a;->b:Ll/e;

    .line 4
    invoke-virtual {p1}, Ll/e;->d()I

    move-result v0

    iput v0, p0, Ll/p$a;->c:I

    .line 5
    invoke-virtual {p1}, Ll/e;->h()Ll/e$c;

    move-result-object v0

    iput-object v0, p0, Ll/p$a;->d:Ll/e$c;

    .line 6
    invoke-virtual {p1}, Ll/e;->c()I

    move-result p1

    iput p1, p0, Ll/p$a;->e:I

    return-void
.end method


# virtual methods
.method public a(Ll/f;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ll/p$a;->a:Ll/e;

    invoke-virtual {v0}, Ll/e;->j()Ll/e$d;

    move-result-object v0

    invoke-virtual {p1, v0}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object p1

    .line 2
    iget-object v0, p0, Ll/p$a;->b:Ll/e;

    iget v1, p0, Ll/p$a;->c:I

    iget-object v2, p0, Ll/p$a;->d:Ll/e$c;

    iget v3, p0, Ll/p$a;->e:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ll/e;->b(Ll/e;ILl/e$c;I)Z

    return-void
.end method

.method public b(Ll/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/p$a;->a:Ll/e;

    invoke-virtual {v0}, Ll/e;->j()Ll/e$d;

    move-result-object v0

    invoke-virtual {p1, v0}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object p1

    iput-object p1, p0, Ll/p$a;->a:Ll/e;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ll/e;->i()Ll/e;

    move-result-object p1

    iput-object p1, p0, Ll/p$a;->b:Ll/e;

    .line 3
    iget-object p1, p0, Ll/p$a;->a:Ll/e;

    invoke-virtual {p1}, Ll/e;->d()I

    move-result p1

    iput p1, p0, Ll/p$a;->c:I

    .line 4
    iget-object p1, p0, Ll/p$a;->a:Ll/e;

    invoke-virtual {p1}, Ll/e;->h()Ll/e$c;

    move-result-object p1

    iput-object p1, p0, Ll/p$a;->d:Ll/e$c;

    .line 5
    iget-object p1, p0, Ll/p$a;->a:Ll/e;

    invoke-virtual {p1}, Ll/e;->c()I

    move-result p1

    iput p1, p0, Ll/p$a;->e:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Ll/p$a;->b:Ll/e;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Ll/p$a;->c:I

    .line 8
    sget-object v0, Ll/e$c;->b:Ll/e$c;

    iput-object v0, p0, Ll/p$a;->d:Ll/e$c;

    .line 9
    iput p1, p0, Ll/p$a;->e:I

    :goto_0
    return-void
.end method
