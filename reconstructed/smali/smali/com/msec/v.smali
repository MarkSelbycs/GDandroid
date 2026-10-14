.class public Lcom/msec/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/msec/n;


# static fields
.field private static e:Ljava/lang/String;

.field private static h:Ljava/lang/StringBuffer;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/net/wifi/WifiManager;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/net/wifi/WifiInfo;

.field private f:Z

.field private g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64a

    invoke-static {v0}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/msec/v;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/msec/v;->h:Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/msec/v;->b:Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/msec/v;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/msec/v;->d:Landroid/net/wifi/WifiInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/msec/v;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/msec/v;->g:Z

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x333

    invoke-static {v1}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const/16 p1, 0x649

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b(I)I
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const/4 p1, -0x1

    goto/16 :goto_0

    :sswitch_0
    const/16 p1, 0xa5

    goto/16 :goto_0

    :sswitch_1
    const/16 p1, 0xa1

    goto/16 :goto_0

    :sswitch_2
    const/16 p1, 0x9f

    goto/16 :goto_0

    :sswitch_3
    const/16 p1, 0x9d

    goto/16 :goto_0

    :sswitch_4
    const/16 p1, 0x9b

    goto/16 :goto_0

    :sswitch_5
    const/16 p1, 0x99

    goto/16 :goto_0

    :sswitch_6
    const/16 p1, 0x97

    goto/16 :goto_0

    :sswitch_7
    const/16 p1, 0x95

    goto/16 :goto_0

    :sswitch_8
    const/16 p1, 0x90

    goto/16 :goto_0

    :sswitch_9
    const/16 p1, 0x8e

    goto/16 :goto_0

    :sswitch_a
    const/16 p1, 0x8c

    goto/16 :goto_0

    :sswitch_b
    const/16 p1, 0x8a

    goto/16 :goto_0

    :sswitch_c
    const/16 p1, 0x88

    goto/16 :goto_0

    :sswitch_d
    const/16 p1, 0x86

    goto/16 :goto_0

    :sswitch_e
    const/16 p1, 0x84

    goto/16 :goto_0

    :sswitch_f
    const/16 p1, 0x80

    goto/16 :goto_0

    :sswitch_10
    const/16 p1, 0x7e

    goto/16 :goto_0

    :sswitch_11
    const/16 p1, 0x7c

    goto/16 :goto_0

    :sswitch_12
    const/16 p1, 0x7a

    goto/16 :goto_0

    :sswitch_13
    const/16 p1, 0x78

    goto/16 :goto_0

    :sswitch_14
    const/16 p1, 0x76

    goto/16 :goto_0

    :sswitch_15
    const/16 p1, 0x74

    goto/16 :goto_0

    :sswitch_16
    const/16 p1, 0x72

    goto/16 :goto_0

    :sswitch_17
    const/16 p1, 0x70

    goto/16 :goto_0

    :sswitch_18
    const/16 p1, 0x6e

    goto/16 :goto_0

    :sswitch_19
    const/16 p1, 0x6c

    goto/16 :goto_0

    :sswitch_1a
    const/16 p1, 0x6a

    goto/16 :goto_0

    :sswitch_1b
    const/16 p1, 0x68

    goto/16 :goto_0

    :sswitch_1c
    const/16 p1, 0x66

    goto/16 :goto_0

    :sswitch_1d
    const/16 p1, 0x64

    goto/16 :goto_0

    :sswitch_1e
    const/16 p1, 0x40

    goto/16 :goto_0

    :sswitch_1f
    const/16 p1, 0x3e

    goto/16 :goto_0

    :sswitch_20
    const/16 p1, 0x3c

    goto :goto_0

    :sswitch_21
    const/16 p1, 0x3a

    goto :goto_0

    :sswitch_22
    const/16 p1, 0x38

    goto :goto_0

    :sswitch_23
    const/16 p1, 0x36

    goto :goto_0

    :sswitch_24
    const/16 p1, 0x34

    goto :goto_0

    :sswitch_25
    const/16 p1, 0x32

    goto :goto_0

    :sswitch_26
    const/16 p1, 0x30

    goto :goto_0

    :sswitch_27
    const/16 p1, 0x2e

    goto :goto_0

    :sswitch_28
    const/16 p1, 0x2c

    goto :goto_0

    :sswitch_29
    const/16 p1, 0x2a

    goto :goto_0

    :sswitch_2a
    const/16 p1, 0x28

    goto :goto_0

    :sswitch_2b
    const/16 p1, 0x26

    goto :goto_0

    :sswitch_2c
    const/16 p1, 0x24

    goto :goto_0

    :sswitch_2d
    const/16 p1, 0xe

    goto :goto_0

    :sswitch_2e
    const/16 p1, 0xd

    goto :goto_0

    :sswitch_2f
    const/16 p1, 0xc

    goto :goto_0

    :sswitch_30
    const/16 p1, 0xb

    goto :goto_0

    :sswitch_31
    const/16 p1, 0xa

    goto :goto_0

    :sswitch_32
    const/16 p1, 0x9

    goto :goto_0

    :sswitch_33
    const/16 p1, 0x8

    goto :goto_0

    :sswitch_34
    const/4 p1, 0x7

    goto :goto_0

    :sswitch_35
    const/4 p1, 0x6

    goto :goto_0

    :sswitch_36
    const/4 p1, 0x5

    goto :goto_0

    :sswitch_37
    const/4 p1, 0x4

    goto :goto_0

    :sswitch_38
    const/4 p1, 0x3

    goto :goto_0

    :sswitch_39
    const/4 p1, 0x2

    goto :goto_0

    :sswitch_3a
    const/4 p1, 0x1

    :goto_0
    return p1

    :sswitch_data_0
    .sparse-switch
        0x96c -> :sswitch_3a
        0x971 -> :sswitch_39
        0x976 -> :sswitch_38
        0x97b -> :sswitch_37
        0x980 -> :sswitch_36
        0x985 -> :sswitch_35
        0x98a -> :sswitch_34
        0x98f -> :sswitch_33
        0x994 -> :sswitch_32
        0x999 -> :sswitch_31
        0x99e -> :sswitch_30
        0x9a3 -> :sswitch_2f
        0x9a8 -> :sswitch_2e
        0x9b4 -> :sswitch_2d
        0x143c -> :sswitch_2c
        0x1446 -> :sswitch_2b
        0x1450 -> :sswitch_2a
        0x145a -> :sswitch_29
        0x1464 -> :sswitch_28
        0x146e -> :sswitch_27
        0x1478 -> :sswitch_26
        0x1482 -> :sswitch_25
        0x148c -> :sswitch_24
        0x1496 -> :sswitch_23
        0x14a0 -> :sswitch_22
        0x14aa -> :sswitch_21
        0x14b4 -> :sswitch_20
        0x14be -> :sswitch_1f
        0x14c8 -> :sswitch_1e
        0x157c -> :sswitch_1d
        0x1586 -> :sswitch_1c
        0x1590 -> :sswitch_1b
        0x159a -> :sswitch_1a
        0x15a4 -> :sswitch_19
        0x15ae -> :sswitch_18
        0x15b8 -> :sswitch_17
        0x15c2 -> :sswitch_16
        0x15cc -> :sswitch_15
        0x15d6 -> :sswitch_14
        0x15e0 -> :sswitch_13
        0x15ea -> :sswitch_12
        0x15f4 -> :sswitch_11
        0x15fe -> :sswitch_10
        0x1608 -> :sswitch_f
        0x161c -> :sswitch_e
        0x1626 -> :sswitch_d
        0x1630 -> :sswitch_c
        0x163a -> :sswitch_b
        0x1644 -> :sswitch_a
        0x164e -> :sswitch_9
        0x1658 -> :sswitch_8
        0x1671 -> :sswitch_7
        0x167b -> :sswitch_6
        0x1685 -> :sswitch_5
        0x168f -> :sswitch_4
        0x1699 -> :sswitch_3
        0x16a3 -> :sswitch_2
        0x16ad -> :sswitch_1
        0x16c1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x648

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private c()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 v1, 0x677

    invoke-static {v1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 v1, 0x676

    invoke-static {v1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 p1, 0x675

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
