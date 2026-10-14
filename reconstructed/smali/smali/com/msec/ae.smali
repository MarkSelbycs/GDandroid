.class public Lcom/msec/ae;
.super Lcom/msec/ad;


# instance fields
.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x2d4

    invoke-static {v0}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/msec/ad;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/msec/ae;->d:Z

    iput v0, p0, Lcom/msec/ae;->e:I

    return-void
.end method

.method private a(II)Z
    .locals 6

    const/16 v0, 0xd7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_18

    const/16 v0, 0xef

    const/16 v3, 0xc1

    const/16 v4, 0xa0

    const/16 v5, 0xa1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return v2

    :pswitch_0
    if-le p2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :pswitch_1
    const/16 p1, 0x58

    if-eq p2, p1, :cond_4

    const/16 p1, 0x5b

    if-eq p2, p1, :cond_4

    const/16 p1, 0x5c

    if-le p2, p1, :cond_1

    const/16 p1, 0x60

    if-lt p2, p1, :cond_4

    :cond_1
    const/16 p1, 0x96

    if-le p2, p1, :cond_2

    const/16 p1, 0xa4

    if-lt p2, p1, :cond_4

    :cond_2
    if-le p2, v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1

    :pswitch_2
    const/16 p1, 0x95

    if-le p2, p1, :cond_5

    if-lt p2, v5, :cond_8

    :cond_5
    const/16 p1, 0xc0

    if-le p2, p1, :cond_6

    const/16 p1, 0xc5

    if-lt p2, p1, :cond_8

    :cond_6
    const/16 p1, 0xe9

    if-le p2, p1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :cond_8
    :goto_2
    return v1

    :pswitch_3
    if-lt p2, v5, :cond_b

    if-le p2, v3, :cond_9

    const/16 p1, 0xd1

    if-lt p2, p1, :cond_b

    :cond_9
    const/16 p1, 0xf2

    if-le p2, p1, :cond_a

    goto :goto_3

    :cond_a
    move v1, v2

    :cond_b
    :goto_3
    return v1

    :pswitch_4
    if-lt p2, v5, :cond_e

    const/16 p1, 0xb8

    if-le p2, p1, :cond_c

    if-lt p2, v3, :cond_e

    :cond_c
    const/16 p1, 0xf5

    if-le p2, p1, :cond_d

    goto :goto_4

    :cond_d
    move v1, v2

    :cond_e
    :goto_4
    return v1

    :pswitch_5
    if-lt p2, v5, :cond_10

    const/16 p1, 0xf6

    if-le p2, p1, :cond_f

    goto :goto_5

    :cond_f
    move v1, v2

    :cond_10
    :goto_5
    return v1

    :pswitch_6
    if-lt p2, v5, :cond_12

    const/16 p1, 0xf3

    if-le p2, p1, :cond_11

    goto :goto_6

    :cond_11
    move v1, v2

    :cond_12
    :goto_6
    return v1

    :pswitch_7
    if-ge p2, v4, :cond_13

    goto :goto_7

    :cond_13
    move v1, v2

    :goto_7
    return v1

    :pswitch_8
    if-lt p2, v5, :cond_16

    const/16 p1, 0xaa

    if-le p2, p1, :cond_14

    const/16 p1, 0xb1

    if-lt p2, p1, :cond_16

    :cond_14
    const/16 p1, 0xe4

    if-eq p2, p1, :cond_16

    if-eq p2, v0, :cond_16

    const/16 p1, 0xf0

    if-eq p2, p1, :cond_16

    const/16 p1, 0xfd

    if-eq p2, p1, :cond_16

    const/16 p1, 0xfe

    if-ne p2, p1, :cond_15

    goto :goto_8

    :cond_15
    move v1, v2

    :cond_16
    :goto_8
    return v1

    :pswitch_9
    if-ge p2, v5, :cond_17

    goto :goto_9

    :cond_17
    move v1, v2

    :goto_9
    return v1

    :cond_18
    const/16 p1, 0xf9

    if-le p2, p1, :cond_19

    goto :goto_a

    :cond_19
    move v1, v2

    :goto_a
    return v1

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-boolean v0, p0, Lcom/msec/ad;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/msec/ae;->d:Z

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

    const/16 p1, 0x6a0

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
