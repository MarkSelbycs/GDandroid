.class public Lcom/msec/cf$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:I

.field private l:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    iput v0, p0, Lcom/msec/cf$a;->a:I

    const/16 v0, 0x23

    iput v0, p0, Lcom/msec/cf$a;->b:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/msec/cf$a;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/msec/cf$a;->d:I

    iput v0, p0, Lcom/msec/cf$a;->e:I

    iput v0, p0, Lcom/msec/cf$a;->f:I

    iput v0, p0, Lcom/msec/cf$a;->g:I

    iput v0, p0, Lcom/msec/cf$a;->h:I

    iput-boolean v0, p0, Lcom/msec/cf$a;->i:Z

    iput-boolean v0, p0, Lcom/msec/cf$a;->j:Z

    iput v0, p0, Lcom/msec/cf$a;->k:I

    invoke-static {}, Lcom/msec/cf;->g()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/msec/cf$a;->l:[F

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/msec/cf$a;->d:I

    return v0
.end method

.method public a(Lcom/msec/cf$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget v0, p1, Lcom/msec/cf$c;->a:I

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/msec/cf$a;->i:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/msec/cf$a;->j:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/msec/cf$a;->h:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/msec/cf$a;->h:I

    iput-boolean v1, p0, Lcom/msec/cf$a;->j:Z

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/msec/cf$a;->i:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/msec/cf$a;->i:Z

    iput-boolean v0, p0, Lcom/msec/cf$a;->j:Z

    iget v0, p0, Lcom/msec/cf$a;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/msec/cf$a;->g:I

    iget-wide v2, p1, Lcom/msec/cf$c;->d:J

    iget-wide v4, p1, Lcom/msec/cf$c;->e:J

    sub-long/2addr v2, v4

    iget-object p1, p0, Lcom/msec/cf$a;->l:[F

    iget v0, p0, Lcom/msec/cf$a;->k:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/msec/cf$a;->k:I

    long-to-float v4, v2

    aput v4, p1, v0

    const-wide/16 v4, 0x19

    cmp-long p1, v2, v4

    if-gtz p1, :cond_3

    iget p1, p0, Lcom/msec/cf$a;->d:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/msec/cf$a;->d:I

    :cond_3
    const-wide/16 v4, 0x23

    cmp-long p1, v2, v4

    if-gtz p1, :cond_4

    iget p1, p0, Lcom/msec/cf$a;->e:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/msec/cf$a;->e:I

    :cond_4
    const-wide/16 v4, 0x32

    cmp-long p1, v2, v4

    if-gtz p1, :cond_5

    iget p1, p0, Lcom/msec/cf$a;->f:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/msec/cf$a;->f:I

    :cond_5
    :goto_0
    return-void

    :cond_6
    iput-boolean v1, p0, Lcom/msec/cf$a;->i:Z

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/msec/cf$a;->g:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/msec/cf$a;->h:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 v1, 0x7de

    invoke-static {v1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 v1, 0x7dd

    invoke-static {v1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
