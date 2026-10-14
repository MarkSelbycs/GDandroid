.class public Lcom/msec/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/msec/n;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/16 p1, 0x23e

    :goto_0
    invoke-static {p1}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const/16 p1, 0x2c3

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x2c1

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x366

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x2c6

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x2cd

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x2c2

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x2ca

    goto :goto_0

    :pswitch_7
    const/16 p1, 0x2c4

    goto :goto_0

    :pswitch_8
    const/16 p1, 0x2c7

    goto :goto_0

    :pswitch_9
    const/16 p1, 0x2c5

    goto :goto_0

    :pswitch_a
    const/16 p1, 0x2c8

    goto :goto_0

    :pswitch_b
    const/16 p1, 0x2d0

    goto :goto_0

    :pswitch_c
    const/16 p1, 0x2cb

    goto :goto_0

    :pswitch_d
    const/16 p1, 0x2cc

    goto :goto_0

    :pswitch_e
    const/16 p1, 0x2cf

    goto :goto_0

    :pswitch_f
    const/16 p1, 0x240

    goto :goto_0

    :pswitch_10
    const/16 p1, 0x2ce

    goto :goto_0

    :pswitch_11
    const/16 p1, 0x2c9

    goto :goto_0

    :pswitch_12
    const/16 p1, 0x23f

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x16
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 v1, 0x627

    invoke-static {v1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/msec/t;->a:Landroid/content/Context;

    return-void
.end method
