.class public Lcom/msec/ab;
.super Lcom/msec/ad;


# instance fields
.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x2d1

    invoke-static {v0}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/msec/ad;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/msec/ab;->d:Z

    iput v0, p0, Lcom/msec/ab;->e:I

    return-void
.end method

.method private a(II)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xa1

    if-ge p1, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0xc7

    if-eq p1, v1, :cond_6

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_6

    const/16 v1, 0xfa

    if-lt p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0xa3

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    const/16 v1, 0xc6

    if-eq p1, v1, :cond_2

    return v2

    :cond_2
    const/16 p1, 0xa0

    if-le p2, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0

    :cond_4
    const/16 p1, 0xc0

    if-lt p2, p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v2

    :cond_6
    :goto_1
    return v0
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-boolean v0, p0, Lcom/msec/ad;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/msec/ab;->d:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public a(I)Z
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 p1, 0x69c

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
