.class public Lcom/msec/ag;
.super Lcom/msec/ad;


# instance fields
.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x2f2

    invoke-static {v0}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/msec/ad;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/msec/ag;->d:Z

    iput v0, p0, Lcom/msec/ag;->e:I

    return-void
.end method

.method public static a(II)Z
    .locals 3

    const/16 v0, 0x9f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_11

    const/16 v0, 0xd7

    if-eq p1, v0, :cond_f

    const/16 v0, 0xfa

    if-eq p1, v0, :cond_d

    const/16 v0, 0xa0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return v2

    :pswitch_0
    const/16 p1, 0x20

    if-lt p0, p1, :cond_1

    const/16 p1, 0x64

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :pswitch_1
    const/16 p1, 0x90

    if-lt p0, p1, :cond_4

    const/16 p1, 0x96

    if-le p0, p1, :cond_2

    const/16 p1, 0xf0

    if-lt p0, p1, :cond_4

    :cond_2
    const/16 p1, 0xf3

    if-le p0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1

    :pswitch_2
    const/16 p1, 0x30

    if-lt p0, p1, :cond_5

    const/16 p1, 0x70

    if-lt p0, p1, :cond_7

    :cond_5
    const/16 p1, 0xc0

    if-lt p0, p1, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :cond_7
    :goto_2
    return v1

    :pswitch_3
    const/16 p1, 0x93

    if-le p0, p1, :cond_8

    if-lt p0, v0, :cond_a

    :cond_8
    const/16 p1, 0xaa

    if-le p0, p1, :cond_9

    goto :goto_3

    :cond_9
    move v1, v2

    :cond_a
    :goto_3
    return v1

    :pswitch_4
    const/16 p1, 0x40

    if-lt p0, p1, :cond_c

    if-lt p0, v0, :cond_b

    goto :goto_4

    :cond_b
    move v1, v2

    :cond_c
    :goto_4
    :pswitch_5
    return v1

    :cond_d
    const/16 p1, 0x6d

    if-le p0, p1, :cond_e

    goto :goto_5

    :cond_e
    move v1, v2

    :goto_5
    return v1

    :cond_f
    const/16 p1, 0xa3

    if-le p0, p1, :cond_10

    goto :goto_6

    :cond_10
    move v1, v2

    :goto_6
    return v1

    :cond_11
    const/16 p1, 0xd0

    if-lt p0, p1, :cond_12

    goto :goto_7

    :cond_12
    move v1, v2

    :goto_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xa5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
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
    iget-boolean v0, p0, Lcom/msec/ag;->d:Z

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

    const/16 p1, 0x69b

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public a(III)Z
    .locals 0

    const/16 p3, 0xff

    if-ne p1, p3, :cond_0

    const/16 p1, 0xfe

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
