.class public La4/f;
.super Lt3/z0;
.source "Dispatcher.kt"


# instance fields
.field public final d:I

.field public final e:I

.field public final f:J

.field public final g:Ljava/lang/String;

.field public h:La4/a;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lt3/z0;-><init>()V

    .line 2
    iput p1, p0, La4/f;->d:I

    .line 3
    iput p2, p0, La4/f;->e:I

    .line 4
    iput-wide p3, p0, La4/f;->f:J

    .line 5
    iput-object p5, p0, La4/f;->g:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, La4/f;->r()La4/a;

    move-result-object p1

    iput-object p1, p0, La4/f;->h:La4/a;

    return-void
.end method


# virtual methods
.method public i(Ld3/g;Ljava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, La4/f;->h:La4/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, La4/a;->l(La4/a;Ljava/lang/Runnable;La4/i;ZILjava/lang/Object;)V

    return-void
.end method

.method public l(Ld3/g;Ljava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, La4/f;->h:La4/a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, La4/a;->l(La4/a;Ljava/lang/Runnable;La4/i;ZILjava/lang/Object;)V

    return-void
.end method

.method public final r()La4/a;
    .locals 7

    new-instance v6, La4/a;

    iget v1, p0, La4/f;->d:I

    iget v2, p0, La4/f;->e:I

    iget-wide v3, p0, La4/f;->f:J

    iget-object v5, p0, La4/f;->g:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, La4/a;-><init>(IIJLjava/lang/String;)V

    return-object v6
.end method

.method public final s(Ljava/lang/Runnable;La4/i;Z)V
    .locals 1

    iget-object v0, p0, La4/f;->h:La4/a;

    invoke-virtual {v0, p1, p2, p3}, La4/a;->j(Ljava/lang/Runnable;La4/i;Z)V

    return-void
.end method
