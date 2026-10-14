.class public abstract Lcom/alibaba/fastjson/JSONValidator;
.super Ljava/lang/Object;
.source "JSONValidator.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;,
        Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;,
        Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;,
        Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;,
        Lcom/alibaba/fastjson/JSONValidator$Type;
    }
.end annotation


# instance fields
.field public ch:C

.field public count:I

.field public eof:Z

.field public pos:I

.field public supportMultiValue:Z

.field public type:Lcom/alibaba/fastjson/JSONValidator$Type;

.field private validateResult:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator;->pos:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator;->count:I

    .line 4
    iput-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->supportMultiValue:Z

    return-void
.end method

.method private any()Z
    .locals 13

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v1, 0x75

    const/16 v2, 0x22

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_2a

    const/16 v5, 0x65

    const/16 v6, 0x2d

    const/16 v7, 0x2b

    if-eq v0, v7, :cond_1e

    if-eq v0, v6, :cond_1e

    const/16 v8, 0x5b

    const/16 v9, 0x2c

    const/16 v10, 0x5d

    if-eq v0, v8, :cond_19

    const/16 v8, 0x66

    const/16 v11, 0x6c

    const/16 v12, 0x7d

    if-eq v0, v8, :cond_12

    const/16 v8, 0x6e

    if-eq v0, v8, :cond_c

    const/16 v8, 0x74

    if-eq v0, v8, :cond_6

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    return v4

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 3
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONValidator;->isWhiteSpace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_0

    .line 5
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-ne v0, v12, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 7
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Object:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v3

    .line 8
    :cond_2
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-ne v0, v2, :cond_5

    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->fieldName()V

    .line 10
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 11
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 13
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 14
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONValidator;->any()Z

    move-result v0

    if-nez v0, :cond_3

    return v4

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 16
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-ne v0, v9, :cond_4

    .line 17
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 18
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    goto :goto_1

    :cond_4
    if-ne v0, v12, :cond_5

    .line 19
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 20
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Object:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v3

    :cond_5
    return v4

    .line 21
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 22
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v2, 0x72

    if-eq v0, v2, :cond_7

    return v4

    .line 23
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 24
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v1, :cond_8

    return v4

    .line 25
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 26
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v5, :cond_9

    return v4

    .line 27
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 28
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONValidator;->isWhiteSpace(C)Z

    move-result v0

    if-nez v0, :cond_b

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v9, :cond_b

    if-eq v0, v10, :cond_b

    if-eq v0, v12, :cond_b

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    return v4

    .line 29
    :cond_b
    :goto_2
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v3

    .line 30
    :cond_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 31
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v1, :cond_d

    return v4

    .line 32
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 33
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v11, :cond_e

    return v4

    .line 34
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 35
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v11, :cond_f

    return v4

    .line 36
    :cond_f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 37
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONValidator;->isWhiteSpace(C)Z

    move-result v0

    if-nez v0, :cond_11

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v9, :cond_11

    if-eq v0, v10, :cond_11

    if-eq v0, v12, :cond_11

    if-nez v0, :cond_10

    goto :goto_3

    :cond_10
    return v4

    .line 38
    :cond_11
    :goto_3
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v3

    .line 39
    :cond_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 40
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v1, 0x61

    if-eq v0, v1, :cond_13

    return v4

    .line 41
    :cond_13
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 42
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v11, :cond_14

    return v4

    .line 43
    :cond_14
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 44
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v1, 0x73

    if-eq v0, v1, :cond_15

    return v4

    .line 45
    :cond_15
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 46
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v5, :cond_16

    return v4

    .line 47
    :cond_16
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 48
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONValidator;->isWhiteSpace(C)Z

    move-result v0

    if-nez v0, :cond_18

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v9, :cond_18

    if-eq v0, v10, :cond_18

    if-eq v0, v12, :cond_18

    if-nez v0, :cond_17

    goto :goto_4

    :cond_17
    return v4

    .line 49
    :cond_18
    :goto_4
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v3

    .line 50
    :cond_19
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 52
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-ne v0, v10, :cond_1a

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 54
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Array:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v3

    .line 55
    :cond_1a
    :goto_5
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONValidator;->any()Z

    move-result v0

    if-nez v0, :cond_1b

    return v4

    .line 56
    :cond_1b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 57
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-ne v0, v9, :cond_1c

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    goto :goto_5

    :cond_1c
    if-ne v0, v10, :cond_1d

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 61
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Array:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v3

    :cond_1d
    return v4

    :cond_1e
    :pswitch_0
    const/16 v1, 0x39

    const/16 v2, 0x30

    if-eq v0, v6, :cond_1f

    if-ne v0, v7, :cond_20

    .line 62
    :cond_1f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 64
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-lt v0, v2, :cond_29

    if-le v0, v1, :cond_20

    goto :goto_9

    .line 65
    :cond_20
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 66
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-lt v0, v2, :cond_21

    if-le v0, v1, :cond_20

    :cond_21
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_24

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 68
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-lt v0, v2, :cond_23

    if-le v0, v1, :cond_22

    goto :goto_7

    .line 69
    :cond_22
    :goto_6
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-lt v0, v2, :cond_24

    if-gt v0, v1, :cond_24

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_6

    :cond_23
    :goto_7
    return v4

    .line 71
    :cond_24
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v5, :cond_25

    const/16 v5, 0x45

    if-ne v0, v5, :cond_28

    .line 72
    :cond_25
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 73
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v6, :cond_26

    if-ne v0, v7, :cond_27

    .line 74
    :cond_26
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 75
    :cond_27
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-lt v0, v2, :cond_29

    if-gt v0, v1, :cond_29

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 77
    :goto_8
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-lt v0, v2, :cond_28

    if-gt v0, v1, :cond_28

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_8

    .line 79
    :cond_28
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v3

    :cond_29
    :goto_9
    return v4

    .line 80
    :cond_2a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 81
    :goto_a
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->eof:Z

    if-eqz v0, :cond_2b

    return v4

    .line 82
    :cond_2b
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v5, 0x5c

    if-ne v0, v5, :cond_2d

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 84
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-ne v0, v1, :cond_2c

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_a

    .line 90
    :cond_2c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_a

    :cond_2d
    if-ne v0, v2, :cond_2e

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 92
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v3

    .line 93
    :cond_2e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static from(Ljava/io/Reader;)Lcom/alibaba/fastjson/JSONValidator;
    .locals 1

    .line 2
    new-instance v0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static from(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONValidator;
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromUtf8(Ljava/io/InputStream;)Lcom/alibaba/fastjson/JSONValidator;
    .locals 1

    .line 2
    new-instance v0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static fromUtf8([B)Lcom/alibaba/fastjson/JSONValidator;
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;-><init>([B)V

    return-object v0
.end method

.method public static final isWhiteSpace(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public fieldName()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 2
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 4
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v1, 0x75

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x22

    if-ne v0, v1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    return-void

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_0
.end method

.method public getType()Lcom/alibaba/fastjson/JSONValidator$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->validate()Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    return-object v0
.end method

.method public isSupportMultiValue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->supportMultiValue:Z

    return v0
.end method

.method public abstract next()V
.end method

.method public setSupportMultiValue(Z)Lcom/alibaba/fastjson/JSONValidator;
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/fastjson/JSONValidator;->supportMultiValue:Z

    return-object p0
.end method

.method public skipWhiteSpace()V
    .locals 1

    .line 1
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONValidator;->isWhiteSpace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public string()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 2
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->eof:Z

    if-nez v0, :cond_3

    .line 3
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 5
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v1, 0x75

    if-ne v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 10
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x22

    if-ne v0, v1, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    const/4 v0, 0x1

    return v0

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public validate()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->validateResult:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONValidator;->any()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->validateResult:Ljava/lang/Boolean;

    return v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 6
    iget v0, p0, Lcom/alibaba/fastjson/JSONValidator;->count:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator;->count:I

    .line 7
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->eof:Z

    if-eqz v0, :cond_2

    .line 8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->validateResult:Ljava/lang/Boolean;

    return v2

    .line 9
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->supportMultiValue:Z

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 11
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->eof:Z

    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->validateResult:Ljava/lang/Boolean;

    return v2

    .line 13
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->validateResult:Ljava/lang/Boolean;

    return v1
.end method
