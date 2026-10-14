.class public final Lcom/alibaba/fastjson/parser/JSONScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexerBase;
.source "JSONScanner.java"


# instance fields
.field private final len:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>(I)V

    .line 3
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 7
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const p2, 0xfeff

    if-ne p1, p2, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    :cond_0
    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1

    .line 9
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static charArrayCompare(Ljava/lang/String;I[C)Z
    .locals 5

    .line 1
    array-length v0, p2

    add-int v1, v0, p1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return v3

    :cond_0
    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    aget-char v2, p2, v1

    add-int v4, p1, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v2, v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static checkDate(CCCCCCII)Z
    .locals 3

    const/16 v0, 0x30

    const/4 v1, 0x0

    if-lt p0, v0, :cond_d

    const/16 v2, 0x39

    if-le p0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-lt p1, v0, :cond_d

    if-le p1, v2, :cond_1

    goto :goto_1

    :cond_1
    if-lt p2, v0, :cond_d

    if-le p2, v2, :cond_2

    goto :goto_1

    :cond_2
    if-lt p3, v0, :cond_d

    if-le p3, v2, :cond_3

    goto :goto_1

    :cond_3
    const/16 p0, 0x32

    const/16 p1, 0x31

    if-ne p4, v0, :cond_5

    if-lt p5, p1, :cond_4

    if-le p5, v2, :cond_6

    :cond_4
    return v1

    :cond_5
    if-ne p4, p1, :cond_d

    if-eq p5, v0, :cond_6

    if-eq p5, p1, :cond_6

    if-eq p5, p0, :cond_6

    return v1

    :cond_6
    if-ne p6, v0, :cond_8

    if-lt p7, p1, :cond_7

    if-le p7, v2, :cond_c

    :cond_7
    return v1

    :cond_8
    if-eq p6, p1, :cond_b

    if-ne p6, p0, :cond_9

    goto :goto_0

    :cond_9
    const/16 p0, 0x33

    if-ne p6, p0, :cond_a

    if-eq p7, v0, :cond_c

    if-eq p7, p1, :cond_c

    :cond_a
    return v1

    :cond_b
    :goto_0
    if-lt p7, v0, :cond_d

    if-le p7, v2, :cond_c

    goto :goto_1

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_d
    :goto_1
    return v1
.end method

.method private checkTime(CCCCCC)Z
    .locals 4

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/16 v2, 0x30

    if-ne p1, v2, :cond_1

    if-lt p2, v2, :cond_0

    if-le p2, v0, :cond_4

    :cond_0
    return v1

    :cond_1
    const/16 v3, 0x31

    if-ne p1, v3, :cond_3

    if-lt p2, v2, :cond_2

    if-le p2, v0, :cond_4

    :cond_2
    return v1

    :cond_3
    const/16 v3, 0x32

    if-ne p1, v3, :cond_b

    if-lt p2, v2, :cond_b

    const/16 p1, 0x34

    if-le p2, p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 p1, 0x35

    const/16 p2, 0x36

    if-lt p3, v2, :cond_6

    if-gt p3, p1, :cond_6

    if-lt p4, v2, :cond_5

    if-le p4, v0, :cond_7

    :cond_5
    return v1

    :cond_6
    if-ne p3, p2, :cond_b

    if-eq p4, v2, :cond_7

    return v1

    :cond_7
    if-lt p5, v2, :cond_9

    if-gt p5, p1, :cond_9

    if-lt p6, v2, :cond_8

    if-le p6, v0, :cond_a

    :cond_8
    return v1

    :cond_9
    if-ne p5, p2, :cond_b

    if-eq p6, v2, :cond_a

    return v1

    :cond_a
    const/4 p1, 0x1

    return p1

    :cond_b
    :goto_0
    return v1
.end method

.method private scanISO8601DateIfMatch(ZI)Z
    .locals 34

    move-object/from16 v9, p0

    move/from16 v10, p2

    const/16 v11, 0x8

    const/4 v12, 0x0

    if-ge v10, v11, :cond_0

    return v12

    .line 4
    :cond_0
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    .line 5
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v14, 0x1

    add-int/2addr v0, v14

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    .line 6
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v8, 0x2

    add-int/2addr v0, v8

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 7
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v16, 0x3

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 8
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 9
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v6, 0x5

    add-int/2addr v2, v6

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 10
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v17, 0x6

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 11
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v4, 0x7

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v5, 0x39

    const/16 v11, 0x30

    if-nez p1, :cond_6

    const/16 v6, 0xd

    if-le v10, v6, :cond_5

    .line 12
    iget v6, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v10

    sub-int/2addr v6, v14

    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 13
    iget v14, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v10

    sub-int/2addr v14, v8

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    const/16 v8, 0x2f

    if-ne v13, v8, :cond_5

    const/16 v8, 0x44

    if-ne v15, v8, :cond_5

    const/16 v8, 0x61

    if-ne v0, v8, :cond_5

    const/16 v8, 0x74

    if-ne v7, v8, :cond_5

    const/16 v8, 0x65

    if-ne v1, v8, :cond_5

    const/16 v8, 0x28

    if-ne v2, v8, :cond_5

    const/16 v8, 0x2f

    if-ne v6, v8, :cond_5

    const/16 v6, 0x29

    if-ne v14, v6, :cond_5

    const/4 v0, -0x1

    move/from16 v1, v17

    :goto_0
    if-ge v1, v10, :cond_3

    .line 14
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v1

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    if-lt v2, v11, :cond_3

    if-le v2, v5, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    return v12

    .line 15
    :cond_4
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x6

    add-int/2addr v1, v0

    sub-int/2addr v1, v2

    .line 16
    invoke-virtual {v9, v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 18
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    .line 19
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v6, 0x5

    .line 20
    iput v6, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    :goto_3
    const/4 v0, 0x1

    return v0

    :cond_5
    const/4 v6, 0x5

    :cond_6
    const/16 v14, 0x10

    const/16 v11, 0xe

    const/16 v12, 0x2d

    const/16 v21, 0xa

    const/16 v5, 0x8

    if-eq v10, v5, :cond_4f

    if-eq v10, v11, :cond_4f

    if-ne v10, v14, :cond_8

    .line 21
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v5, 0xa

    .line 22
    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v6, 0x54

    if-eq v5, v6, :cond_7

    const/16 v6, 0x20

    if-eq v5, v6, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v5, 0x0

    const/16 v11, 0x3a

    const/4 v14, 0x5

    goto/16 :goto_25

    :cond_8
    :goto_5
    const/16 v5, 0x11

    if-ne v10, v5, :cond_9

    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v5, 0x6

    .line 23
    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    if-eq v5, v12, :cond_9

    goto :goto_4

    :cond_9
    const/16 v5, 0x9

    if-ge v10, v5, :cond_a

    const/4 v6, 0x0

    return v6

    .line 24
    :cond_a
    iget v6, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v18, 0x8

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 25
    iget v8, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v8, v5

    invoke-virtual {v9, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const v8, 0xc77c

    const/16 v11, 0x65e5

    if-ne v1, v12, :cond_c

    if-eq v4, v12, :cond_b

    goto :goto_7

    :cond_b
    :goto_6
    const/16 v14, 0x20

    goto :goto_8

    :cond_c
    :goto_7
    const/16 v14, 0x2f

    if-ne v1, v14, :cond_e

    const/16 v14, 0x2f

    if-ne v4, v14, :cond_e

    goto :goto_6

    :goto_8
    if-ne v5, v14, :cond_d

    move v5, v2

    move v4, v7

    move v1, v13

    move v2, v15

    const/16 v7, 0x30

    const/16 v13, 0x9

    :goto_9
    move v15, v6

    move v6, v3

    :goto_a
    move v3, v0

    goto/16 :goto_15

    :cond_d
    move v4, v7

    move v1, v13

    move/from16 v13, v21

    :goto_b
    move v7, v6

    move v6, v3

    move v3, v0

    move/from16 v32, v5

    move v5, v2

    move v2, v15

    move/from16 v15, v32

    goto/16 :goto_15

    :cond_e
    const/16 v14, 0x20

    if-ne v1, v12, :cond_10

    if-ne v3, v12, :cond_10

    if-ne v6, v14, :cond_f

    move v3, v0

    move v6, v2

    move v1, v13

    move v2, v15

    const/16 v5, 0x30

    const/16 v13, 0x8

    :goto_c
    move v15, v4

    move v4, v7

    const/16 v7, 0x30

    goto/16 :goto_15

    :cond_f
    move v3, v0

    move v1, v13

    const/16 v5, 0x30

    const/16 v13, 0x9

    :goto_d
    move/from16 v32, v6

    move v6, v2

    move v2, v15

    move/from16 v15, v32

    move/from16 v33, v7

    move v7, v4

    move/from16 v4, v33

    goto/16 :goto_15

    :cond_10
    const/16 v14, 0x2e

    if-ne v0, v14, :cond_11

    const/16 v14, 0x2e

    if-eq v2, v14, :cond_12

    :cond_11
    if-ne v0, v12, :cond_13

    if-ne v2, v12, :cond_13

    :cond_12
    move v2, v4

    move v4, v5

    move v5, v7

    move v7, v13

    move/from16 v13, v21

    move/from16 v32, v6

    move v6, v1

    move v1, v3

    move/from16 v3, v32

    goto/16 :goto_15

    :cond_13
    const/16 v14, 0x54

    if-ne v6, v14, :cond_14

    move v5, v1

    move v6, v2

    move v1, v13

    move v2, v15

    const/16 v13, 0x8

    move v15, v4

    move v4, v7

    move v7, v3

    goto :goto_a

    :cond_14
    const/16 v14, 0x5e74

    if-eq v1, v14, :cond_16

    const v14, 0xb144

    if-ne v1, v14, :cond_15

    goto :goto_e

    :cond_15
    const/4 v1, 0x0

    return v1

    :cond_16
    :goto_e
    const/16 v1, 0x6708

    if-eq v4, v1, :cond_1e

    const v1, 0xc6d4

    if-ne v4, v1, :cond_17

    goto :goto_12

    :cond_17
    const/16 v1, 0x6708

    if-eq v3, v1, :cond_19

    const v1, 0xc6d4

    if-ne v3, v1, :cond_18

    goto :goto_f

    :cond_18
    const/4 v1, 0x0

    return v1

    :cond_19
    :goto_f
    const/4 v1, 0x0

    if-eq v6, v11, :cond_1d

    if-ne v6, v8, :cond_1a

    goto :goto_11

    :cond_1a
    if-eq v5, v11, :cond_1c

    if-ne v5, v8, :cond_1b

    goto :goto_10

    :cond_1b
    return v1

    :cond_1c
    :goto_10
    move v3, v0

    move v1, v13

    move/from16 v13, v21

    const/16 v5, 0x30

    goto :goto_d

    :cond_1d
    :goto_11
    move v3, v0

    move v6, v2

    move v1, v13

    move v2, v15

    move/from16 v13, v21

    const/16 v5, 0x30

    goto :goto_c

    :cond_1e
    :goto_12
    if-eq v5, v11, :cond_22

    if-ne v5, v8, :cond_1f

    goto :goto_14

    .line 26
    :cond_1f
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-eq v1, v11, :cond_21

    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_20

    goto :goto_13

    :cond_20
    const/4 v1, 0x0

    return v1

    :cond_21
    :goto_13
    move v4, v7

    move v1, v13

    const/16 v13, 0xb

    goto/16 :goto_b

    :cond_22
    :goto_14
    move v5, v2

    move v4, v7

    move v1, v13

    move v2, v15

    move/from16 v13, v21

    const/16 v7, 0x30

    goto/16 :goto_9

    :goto_15
    move/from16 v24, v1

    move/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v31, v15

    .line 27
    invoke-static/range {v24 .. v31}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x0

    return v0

    :cond_23
    move-object/from16 v0, p0

    const/16 v14, 0x39

    const/4 v14, 0x5

    const/4 v12, 0x2

    move v8, v15

    .line 28
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 29
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v0, 0x54

    if-ne v7, v0, :cond_27

    const/16 v0, 0x10

    if-ne v10, v0, :cond_26

    const/16 v0, 0x8

    if-ne v13, v0, :cond_26

    .line 30
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_26

    .line 31
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 32
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    add-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 33
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    .line 34
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v11

    .line 35
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    add-int/2addr v0, v14

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    .line 36
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    .line 37
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v15, 0x0

    return v15

    :cond_24
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    .line 38
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 39
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v15}, Ljava/util/Calendar;->set(II)V

    .line 40
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    if-eqz v0, :cond_25

    .line 41
    invoke-static {v15}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v0

    .line 42
    array-length v1, v0

    if-lez v1, :cond_25

    .line 43
    aget-object v0, v0, v15

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 44
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 45
    :cond_25
    iput v14, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_3

    :cond_26
    const/16 v0, 0x54

    :cond_27
    if-eq v7, v0, :cond_30

    const/16 v0, 0x20

    if-ne v7, v0, :cond_28

    if-nez p1, :cond_28

    goto/16 :goto_19

    :cond_28
    const/16 v0, 0x22

    if-eq v7, v0, :cond_2f

    const/16 v0, 0x1a

    if-eq v7, v0, :cond_2f

    if-eq v7, v11, :cond_2f

    const v0, 0xc77c

    if-ne v7, v0, :cond_29

    goto :goto_18

    :cond_29
    const/16 v0, 0x2b

    if-eq v7, v0, :cond_2b

    const/16 v0, 0x2d

    if-ne v7, v0, :cond_2a

    goto :goto_16

    :cond_2a
    const/4 v0, 0x0

    return v0

    .line 46
    :cond_2b
    :goto_16
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    add-int/lit8 v1, v13, 0x6

    if-ne v0, v1, :cond_2e

    .line 47
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v11, 0x3a

    if-ne v0, v11, :cond_2d

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x4

    .line 48
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_2d

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    add-int/2addr v0, v14

    .line 49
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_2c

    goto :goto_17

    :cond_2c
    const/16 v1, 0x30

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x30

    move-object/from16 v0, p0

    .line 50
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 51
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 52
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v13

    add-int/2addr v2, v12

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    invoke-virtual {v9, v7, v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCC)V

    return v1

    :cond_2d
    :goto_17
    const/4 v0, 0x0

    return v0

    :cond_2e
    const/4 v0, 0x0

    return v0

    :cond_2f
    :goto_18
    const/4 v0, 0x0

    .line 53
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 54
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 55
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 56
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 57
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 58
    iput v14, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_3

    :cond_30
    :goto_19
    const/16 v11, 0x3a

    add-int/lit8 v0, v13, 0x9

    if-ge v10, v0, :cond_31

    const/4 v0, 0x0

    return v0

    :cond_31
    const/4 v0, 0x0

    .line 59
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-eq v1, v11, :cond_32

    return v0

    .line 60
    :cond_32
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-eq v1, v11, :cond_33

    return v0

    .line 61
    :cond_33
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 62
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    add-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 63
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    .line 64
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    add-int/2addr v0, v14

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v19

    .line 65
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v20

    .line 66
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    const/16 v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v18

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v15

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v18

    .line 67
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x0

    return v0

    :cond_34
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v15

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v18

    .line 68
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 69
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    const/16 v1, 0x9

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_3a

    add-int/lit8 v0, v13, 0xb

    if-ge v10, v0, :cond_35

    const/4 v1, 0x0

    return v1

    .line 70
    :cond_35
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_39

    const/16 v3, 0x39

    if-le v1, v3, :cond_36

    goto :goto_1b

    :cond_36
    sub-int/2addr v1, v2

    if-le v10, v0, :cond_37

    .line 71
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    const/16 v4, 0xb

    add-int/2addr v0, v4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    if-lt v0, v2, :cond_37

    if-gt v0, v3, :cond_37

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v2

    add-int/2addr v1, v0

    move v8, v12

    goto :goto_1a

    :cond_37
    const/4 v8, 0x1

    :goto_1a
    if-ne v8, v12, :cond_38

    .line 72
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0xc

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-lt v0, v2, :cond_38

    const/16 v3, 0x39

    if-gt v0, v3, :cond_38

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    move/from16 v1, v16

    goto :goto_1c

    :cond_38
    move v0, v1

    move v1, v8

    goto :goto_1c

    :cond_39
    :goto_1b
    const/4 v0, 0x0

    return v0

    :cond_3a
    const/4 v0, 0x0

    .line 73
    :goto_1c
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 74
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_3b

    add-int/lit8 v1, v1, 0x1

    .line 75
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    :cond_3b
    move v6, v1

    move v1, v0

    const/16 v0, 0x2b

    if-eq v1, v0, :cond_3f

    const/16 v0, 0x2d

    if-ne v1, v0, :cond_3c

    goto :goto_1d

    :cond_3c
    const/16 v0, 0x5a

    if-ne v1, v0, :cond_3e

    .line 76
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x0

    .line 77
    invoke-static {v0}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    .line 78
    array-length v2, v1

    if-lez v2, :cond_3d

    .line 79
    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 80
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_3d
    const/16 v16, 0x1

    goto/16 :goto_22

    :cond_3e
    const/16 v16, 0x0

    goto/16 :goto_22

    .line 81
    :cond_3f
    :goto_1d
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v6

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v0, 0x30

    if-lt v2, v0, :cond_4e

    const/16 v3, 0x31

    if-le v2, v3, :cond_40

    goto/16 :goto_24

    .line 82
    :cond_40
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v13

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v6

    add-int/2addr v3, v12

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-lt v3, v0, :cond_4d

    const/16 v0, 0x39

    if-le v3, v0, :cond_41

    goto/16 :goto_23

    .line 83
    :cond_41
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v4, 0x33

    if-ne v0, v11, :cond_47

    .line 84
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 85
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v13

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v6

    add-int/2addr v5, v14

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v7, 0x34

    if-ne v0, v7, :cond_44

    const/16 v7, 0x35

    if-ne v5, v7, :cond_44

    const/16 v7, 0x31

    if-ne v2, v7, :cond_42

    const/16 v7, 0x32

    if-eq v3, v7, :cond_46

    if-ne v3, v4, :cond_42

    goto :goto_1e

    :cond_42
    const/16 v4, 0x30

    if-ne v2, v4, :cond_43

    const/16 v4, 0x35

    if-eq v3, v4, :cond_46

    const/16 v4, 0x38

    if-ne v3, v4, :cond_43

    goto :goto_1e

    :cond_43
    const/4 v7, 0x0

    return v7

    :cond_44
    const/4 v7, 0x0

    const/16 v8, 0x30

    if-eq v0, v8, :cond_45

    if-eq v0, v4, :cond_45

    return v7

    :cond_45
    if-eq v5, v8, :cond_46

    return v7

    :cond_46
    :goto_1e
    move v4, v0

    move/from16 v16, v17

    goto :goto_21

    :cond_47
    const/16 v8, 0x30

    if-ne v0, v8, :cond_49

    .line 86
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    if-eq v0, v8, :cond_48

    if-eq v0, v4, :cond_48

    const/4 v4, 0x0

    return v4

    :cond_48
    move v4, v0

    :goto_1f
    move/from16 v16, v14

    :goto_20
    const/16 v5, 0x30

    goto :goto_21

    :cond_49
    if-ne v0, v4, :cond_4a

    .line 87
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v13

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v7, 0x30

    if-ne v5, v7, :cond_4a

    goto :goto_1f

    :cond_4a
    const/16 v4, 0x34

    if-ne v0, v4, :cond_4b

    .line 88
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v4, 0x35

    if-ne v0, v4, :cond_4b

    const/16 v0, 0x34

    const/16 v4, 0x35

    move v5, v4

    move/from16 v16, v14

    move v4, v0

    goto :goto_21

    :cond_4b
    const/16 v4, 0x30

    goto :goto_20

    :goto_21
    move-object/from16 v0, p0

    .line 89
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCCCC)V

    .line 90
    :goto_22
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v13, v13, 0xa

    add-int/2addr v13, v6

    add-int v13, v13, v16

    add-int/2addr v0, v13

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4c

    const/16 v1, 0x22

    if-eq v0, v1, :cond_4c

    const/4 v5, 0x0

    return v5

    .line 91
    :cond_4c
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v13

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 92
    iput v14, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_3

    :cond_4d
    :goto_23
    const/4 v5, 0x0

    return v5

    :cond_4e
    :goto_24
    const/4 v5, 0x0

    return v5

    :cond_4f
    move v14, v6

    const/4 v5, 0x0

    const/16 v11, 0x3a

    :goto_25
    if-eqz p1, :cond_50

    return v5

    .line 93
    :cond_50
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v6, 0x8

    add-int/2addr v5, v6

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v5, 0x2d

    if-ne v1, v5, :cond_51

    if-ne v4, v5, :cond_51

    const/4 v5, 0x1

    goto :goto_26

    :cond_51
    const/4 v5, 0x0

    :goto_26
    if-eqz v5, :cond_52

    const/16 v6, 0x10

    if-ne v10, v6, :cond_52

    const/16 v16, 0x1

    goto :goto_27

    :cond_52
    const/16 v16, 0x0

    :goto_27
    if-eqz v5, :cond_53

    const/16 v5, 0x11

    if-ne v10, v5, :cond_53

    const/16 v17, 0x1

    goto :goto_28

    :cond_53
    const/16 v17, 0x0

    :goto_28
    if-nez v17, :cond_56

    if-eqz v16, :cond_54

    goto :goto_29

    :cond_54
    const/16 v5, 0x2d

    if-ne v1, v5, :cond_55

    if-ne v3, v5, :cond_55

    move/from16 v22, v2

    move/from16 v24, v4

    const/16 v19, 0x30

    const/16 v23, 0x30

    goto :goto_2a

    :cond_55
    move/from16 v19, v1

    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v4

    goto :goto_2a

    .line 94
    :cond_56
    :goto_29
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v4, 0x9

    add-int/2addr v1, v4

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move/from16 v24, v1

    move/from16 v19, v2

    move/from16 v22, v3

    move/from16 v23, v12

    :goto_2a
    move v1, v13

    move v2, v15

    move v3, v0

    move v4, v7

    move/from16 v5, v19

    move/from16 v6, v22

    move/from16 v25, v7

    move/from16 v7, v23

    move/from16 v8, v24

    .line 95
    invoke-static/range {v1 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v1

    if-nez v1, :cond_57

    const/4 v1, 0x0

    return v1

    :cond_57
    move v3, v0

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move/from16 v4, v25

    move/from16 v5, v19

    move/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, v24

    .line 96
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    const/16 v0, 0x8

    if-eq v10, v0, :cond_64

    .line 97
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v1, 0x9

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 98
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 99
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v3, 0xb

    add-int/2addr v2, v3

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 100
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v3, 0xc

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 101
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v4, 0xd

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-eqz v17, :cond_58

    const/16 v5, 0x54

    if-ne v1, v5, :cond_58

    if-ne v4, v11, :cond_58

    .line 102
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v6, 0x10

    add-int/2addr v5, v6

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_5a

    :cond_58
    if-eqz v16, :cond_5b

    const/16 v5, 0x20

    if-eq v1, v5, :cond_59

    const/16 v5, 0x54

    if-ne v1, v5, :cond_5b

    :cond_59
    if-ne v4, v11, :cond_5b

    .line 103
    :cond_5a
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v1, 0xe

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 104
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v13, v0

    move v8, v1

    move v15, v2

    move v7, v3

    const/16 v11, 0x30

    const/16 v12, 0x30

    goto :goto_2b

    :cond_5b
    move v7, v0

    move v8, v1

    move v13, v2

    move v11, v3

    move v15, v12

    move v12, v4

    :goto_2b
    move-object/from16 v0, p0

    move v1, v15

    move v2, v7

    move v3, v8

    move v4, v13

    move v5, v11

    move v6, v12

    .line 105
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v0

    if-nez v0, :cond_5c

    const/4 v0, 0x0

    return v0

    :cond_5c
    const/16 v0, 0x11

    if-ne v10, v0, :cond_63

    if-nez v17, :cond_63

    .line 106
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v1, 0xe

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 107
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0xf

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 108
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v3, 0x10

    add-int/2addr v2, v3

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v0, v3, :cond_62

    const/16 v4, 0x39

    if-le v0, v4, :cond_5d

    goto :goto_2e

    :cond_5d
    if-lt v1, v3, :cond_61

    if-le v1, v4, :cond_5e

    goto :goto_2d

    :cond_5e
    if-lt v2, v3, :cond_60

    if-le v2, v4, :cond_5f

    goto :goto_2c

    :cond_5f
    sub-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x64

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    goto :goto_2f

    :cond_60
    :goto_2c
    const/4 v0, 0x0

    return v0

    :cond_61
    :goto_2d
    const/4 v0, 0x0

    return v0

    :cond_62
    :goto_2e
    const/4 v0, 0x0

    return v0

    :cond_63
    const/4 v0, 0x0

    :goto_2f
    const/16 v1, 0x30

    sub-int/2addr v15, v1

    mul-int/lit8 v15, v15, 0xa

    sub-int/2addr v7, v1

    add-int v2, v15, v7

    sub-int/2addr v8, v1

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v13, v1

    add-int v3, v8, v13

    sub-int/2addr v11, v1

    mul-int/lit8 v11, v11, 0xa

    sub-int/2addr v12, v1

    add-int/2addr v12, v11

    move v1, v12

    move v12, v2

    move v2, v0

    move v0, v3

    goto :goto_30

    :cond_64
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v12, v2

    .line 109
    :goto_30
    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v12}, Ljava/util/Calendar;->set(II)V

    .line 110
    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 111
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 112
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 113
    iput v14, v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_3
.end method

.method private setCalendar(CCCCCCCC)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    add-int/lit8 p1, p1, -0x30

    mul-int/lit16 p1, p1, 0x3e8

    add-int/lit8 p2, p2, -0x30

    mul-int/lit8 p2, p2, 0x64

    add-int/2addr p1, p2

    add-int/lit8 p3, p3, -0x30

    mul-int/lit8 p3, p3, 0xa

    add-int/2addr p1, p3

    add-int/lit8 p4, p4, -0x30

    add-int/2addr p1, p4

    add-int/lit8 p5, p5, -0x30

    mul-int/lit8 p5, p5, 0xa

    add-int/lit8 p6, p6, -0x30

    add-int/2addr p5, p6

    const/4 p2, 0x1

    sub-int/2addr p5, p2

    add-int/lit8 p7, p7, -0x30

    mul-int/lit8 p7, p7, 0xa

    add-int/lit8 p8, p8, -0x30

    add-int/2addr p7, p8

    .line 2
    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->set(II)V

    .line 3
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p5}, Ljava/util/Calendar;->set(II)V

    .line 4
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p7}, Ljava/util/Calendar;->set(II)V

    return-void
.end method


# virtual methods
.method public final addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final arrayCopy(I[CII)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p4, p1

    invoke-virtual {v0, p1, p4, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public bytesValue()[B
    .locals 10

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ne v0, v2, :cond_4

    .line 2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 3
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_3

    .line 4
    div-int/lit8 v2, v2, 0x2

    new-array v3, v2, [B

    :goto_0
    if-ge v1, v2, :cond_2

    .line 5
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 6
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    const/16 v7, 0x37

    const/16 v8, 0x39

    if-gt v4, v8, :cond_0

    move v9, v6

    goto :goto_1

    :cond_0
    move v9, v7

    :goto_1
    sub-int/2addr v4, v9

    if-gt v5, v8, :cond_1

    goto :goto_2

    :cond_1
    move v6, v7

    :goto_2
    sub-int/2addr v5, v6

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    .line 7
    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v3

    .line 8
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal state. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_4
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v0, :cond_5

    .line 10
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0

    .line 11
    :cond_5
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 12
    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final charArrayCompare([C)Z
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result p1

    return p1
.end method

.method public final charAt(I)C
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt p1, v0, :cond_0

    const/16 p1, 0x1a

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public final copyTo(II[C)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .locals 6

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 2
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    :cond_1
    const v0, 0xffff

    if-gt v1, v0, :cond_3

    .line 3
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 4
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_2

    .line 5
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v5, v0, v1

    invoke-virtual {v3, v0, v5, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 6
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    sget-object v3, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    invoke-direct {v0, v2, v4, v1, v3}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    return-object v0

    .line 7
    :cond_2
    new-array v2, v1, [C

    .line 8
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v5, v0, v1

    invoke-virtual {v3, v0, v5, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 9
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v3, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    invoke-direct {v0, v2, v4, v1, v3}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    return-object v0

    .line 10
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "decimal overflow"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final indexOf(CI)I
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    return p1
.end method

.method public info()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    move v5, v4

    .line 2
    :goto_0
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    if-ge v3, v6, :cond_1

    .line 3
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    move v5, v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v5, v2

    goto :goto_0

    :cond_1
    const-string v2, "pos "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", line "

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", column "

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const v3, 0xffff

    if-ge v2, v3, :cond_2

    .line 8
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEOF()Z
    .locals 5

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_0

    add-int/2addr v0, v2

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public matchField2([C)Z
    .locals 4

    .line 1
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare([C)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-nez v0, :cond_1

    .line 4
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v1

    .line 5
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length p1, p1

    add-int/2addr v0, p1

    .line 6
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 7
    :goto_1
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v3, v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x3a

    if-ne p1, v0, :cond_3

    .line 9
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 10
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x1

    return p1

    .line 11
    :cond_3
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v1
.end method

.method public final next()C
    .locals 2

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    return v0
.end method

.method public final numberString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 2
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 3
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scanDate(C)Ljava/util/Date;
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3
    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    add-int/lit8 v4, v2, 0x1

    .line 4
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    const/16 v7, 0x5d

    const/16 v8, 0x2c

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    if-ne v5, v6, :cond_5

    .line 5
    invoke-virtual {v0, v6, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v5

    if-eq v5, v10, :cond_4

    sub-int v6, v5, v4

    .line 6
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 7
    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(ZI)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    add-int/lit8 v4, v5, 0x1

    .line 9
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 10
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    :goto_0
    if-eq v4, v8, :cond_2

    if-ne v4, v7, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    invoke-static {v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v5, 0x1

    .line 12
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    goto :goto_0

    .line 13
    :cond_1
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 14
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 15
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v9

    :cond_2
    :goto_1
    add-int/2addr v5, v11

    .line 16
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 17
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto/16 :goto_5

    .line 18
    :cond_3
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 19
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 20
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v9

    .line 21
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "unclosed str"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const/16 v6, 0x2d

    const/16 v12, 0x39

    const/16 v13, 0x30

    if-eq v5, v6, :cond_8

    if-lt v5, v13, :cond_6

    if-gt v5, v12, :cond_6

    goto :goto_2

    :cond_6
    const/16 v1, 0x6e

    if-ne v5, v1, :cond_7

    add-int/lit8 v1, v4, 0x1

    .line 22
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v5, 0x75

    if-ne v4, v5, :cond_7

    add-int/lit8 v4, v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v5, 0x6c

    if-ne v1, v5, :cond_7

    add-int/lit8 v1, v4, 0x1

    .line 24
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_7

    .line 25
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 26
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object v1, v9

    goto :goto_5

    .line 27
    :cond_7
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 28
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 29
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v9

    :cond_8
    :goto_2
    if-ne v5, v6, :cond_9

    add-int/lit8 v1, v4, 0x1

    .line 30
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    move v4, v1

    move v1, v11

    :cond_9
    const-wide/16 v14, 0x0

    if-lt v5, v13, :cond_c

    if-gt v5, v12, :cond_c

    add-int/lit8 v5, v5, -0x30

    int-to-long v5, v5

    :goto_3
    add-int/lit8 v16, v4, 0x1

    .line 31
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-lt v4, v13, :cond_a

    if-gt v4, v12, :cond_a

    const-wide/16 v17, 0xa

    mul-long v5, v5, v17

    add-int/lit8 v4, v4, -0x30

    int-to-long v12, v4

    add-long/2addr v5, v12

    move/from16 v4, v16

    const/16 v12, 0x39

    const/16 v13, 0x30

    goto :goto_3

    :cond_a
    if-eq v4, v8, :cond_b

    if-ne v4, v7, :cond_d

    :cond_b
    add-int/lit8 v12, v16, -0x1

    .line 32
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    goto :goto_4

    :cond_c
    move v4, v5

    move-wide v5, v14

    :cond_d
    :goto_4
    cmp-long v12, v5, v14

    if-gez v12, :cond_e

    .line 33
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 34
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 35
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v9

    :cond_e
    if-eqz v1, :cond_f

    neg-long v5, v5

    .line 36
    :cond_f
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    :goto_5
    if-ne v4, v8, :cond_10

    .line 37
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v11

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v2, 0x3

    .line 38
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v1

    .line 39
    :cond_10
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v11

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_11

    const/16 v2, 0x10

    .line 40
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 41
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v11

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    :cond_11
    if-ne v4, v7, :cond_12

    const/16 v2, 0xf

    .line 42
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 43
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v11

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    :cond_12
    const/16 v5, 0x7d

    if-ne v4, v5, :cond_13

    const/16 v2, 0xd

    .line 44
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 45
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v11

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    :cond_13
    const/16 v5, 0x1a

    if-ne v4, v5, :cond_14

    .line 46
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x14

    .line 47
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    :goto_6
    const/4 v2, 0x4

    .line 48
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v1

    .line 49
    :cond_14
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 50
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 51
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v9
.end method

.method public scanDouble(C)D
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .line 3
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v4, 0x22

    if-ne v2, v4, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    if-eqz v6, :cond_1

    add-int/lit8 v2, v3, 0x1

    .line 4
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move/from16 v20, v3

    move v3, v2

    move/from16 v2, v20

    :cond_1
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    move v8, v1

    :goto_1
    if-eqz v8, :cond_3

    add-int/lit8 v2, v3, 0x1

    .line 5
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move/from16 v20, v3

    move v3, v2

    move/from16 v2, v20

    :cond_3
    const/16 v9, 0x10

    const-wide/16 v10, 0x0

    const/4 v12, -0x1

    const/16 v13, 0x30

    if-lt v2, v13, :cond_13

    const/16 v14, 0x39

    if-gt v2, v14, :cond_13

    sub-int/2addr v2, v13

    int-to-long v1, v2

    :goto_2
    add-int/lit8 v15, v3, 0x1

    .line 6
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const-wide/16 v17, 0xa

    if-lt v3, v13, :cond_4

    if-gt v3, v14, :cond_4

    mul-long v1, v1, v17

    add-int/lit8 v3, v3, -0x30

    int-to-long v4, v3

    add-long/2addr v1, v4

    move v3, v15

    const/16 v4, 0x22

    goto :goto_2

    :cond_4
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_8

    add-int/lit8 v3, v15, 0x1

    .line 7
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-lt v4, v13, :cond_7

    if-gt v4, v14, :cond_7

    mul-long v1, v1, v17

    sub-int/2addr v4, v13

    int-to-long v4, v4

    add-long/2addr v1, v4

    move-wide/from16 v4, v17

    :goto_4
    add-int/lit8 v15, v3, 0x1

    .line 8
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-lt v3, v13, :cond_6

    if-gt v3, v14, :cond_6

    mul-long v1, v1, v17

    add-int/lit8 v3, v3, -0x30

    move/from16 v19, v15

    int-to-long v14, v3

    add-long/2addr v1, v14

    mul-long v4, v4, v17

    move/from16 v3, v19

    const/16 v14, 0x39

    goto :goto_4

    :cond_6
    move/from16 v19, v15

    move/from16 v15, v19

    goto :goto_5

    .line 9
    :cond_7
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v10

    :cond_8
    const-wide/16 v4, 0x1

    :goto_5
    const/16 v14, 0x65

    if-eq v3, v14, :cond_a

    const/16 v14, 0x45

    if-ne v3, v14, :cond_9

    goto :goto_6

    :cond_9
    const/16 v16, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/16 v16, 0x1

    :goto_7
    if-eqz v16, :cond_d

    add-int/lit8 v3, v15, 0x1

    .line 10
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    const/16 v15, 0x2b

    if-eq v14, v15, :cond_c

    if-ne v14, v7, :cond_b

    goto :goto_9

    :cond_b
    :goto_8
    move v15, v3

    move v3, v14

    goto :goto_a

    :cond_c
    :goto_9
    add-int/lit8 v7, v3, 0x1

    .line 11
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move v15, v7

    :goto_a
    if-lt v3, v13, :cond_d

    const/16 v7, 0x39

    if-gt v3, v7, :cond_d

    add-int/lit8 v3, v15, 0x1

    .line 12
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    goto :goto_8

    :cond_d
    if-eqz v6, :cond_f

    const/16 v6, 0x22

    if-eq v3, v6, :cond_e

    .line 13
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v10

    :cond_e
    add-int/lit8 v3, v15, 0x1

    .line 14
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 15
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v10, 0x1

    add-int/2addr v7, v10

    sub-int v10, v3, v7

    add-int/lit8 v10, v10, -0x2

    move v15, v3

    move v3, v6

    goto :goto_b

    :cond_f
    const/4 v10, 0x1

    .line 16
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int v6, v15, v7

    add-int/lit8 v10, v6, -0x1

    :goto_b
    if-nez v16, :cond_10

    const/16 v6, 0x12

    if-ge v10, v6, :cond_10

    long-to-double v1, v1

    long-to-double v4, v4

    div-double/2addr v1, v4

    if-eqz v8, :cond_11

    neg-double v1, v1

    goto :goto_c

    .line 17
    :cond_10
    invoke-virtual {v0, v7, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    :cond_11
    :goto_c
    move/from16 v4, p1

    if-ne v3, v4, :cond_12

    .line 19
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 20
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v3, 0x3

    .line 21
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 22
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v1

    .line 23
    :cond_12
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    :cond_13
    const/16 v1, 0x6e

    if-ne v2, v1, :cond_18

    add-int/lit8 v1, v3, 0x1

    .line 24
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x75

    if-ne v2, v3, :cond_18

    add-int/lit8 v2, v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_18

    add-int/lit8 v1, v2, 0x1

    .line 26
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_18

    const/4 v2, 0x5

    .line 27
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    add-int/lit8 v3, v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-eqz v6, :cond_14

    const/16 v4, 0x22

    if-ne v1, v4, :cond_14

    add-int/lit8 v1, v3, 0x1

    .line 29
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    :goto_d
    move/from16 v20, v3

    move v3, v1

    move/from16 v1, v20

    :cond_14
    const/16 v4, 0x2c

    if-ne v1, v4, :cond_15

    .line 30
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 31
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 32
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 33
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v10

    :cond_15
    const/16 v4, 0x5d

    if-ne v1, v4, :cond_16

    .line 34
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 35
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 36
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v1, 0xf

    .line 37
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v10

    .line 38
    :cond_16
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_17

    add-int/lit8 v1, v3, 0x1

    .line 39
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    goto :goto_d

    .line 40
    :cond_17
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v10

    .line 41
    :cond_18
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v10
.end method

.method public scanFieldBoolean([C)Z
    .locals 10

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, -0x2

    .line 3
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 4
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 5
    array-length p1, p1

    add-int/2addr p1, v1

    add-int/lit8 v2, p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    const/16 v3, 0x22

    const/4 v4, 0x1

    if-ne p1, v3, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    if-eqz v5, :cond_2

    add-int/lit8 p1, v2, 0x1

    .line 7
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v9, v2

    move v2, p1

    move p1, v9

    :cond_2
    const/16 v6, 0x74

    const/16 v7, 0x65

    const/4 v8, -0x1

    if-ne p1, v6, :cond_8

    add-int/lit8 p1, v2, 0x1

    .line 8
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v6, 0x72

    if-eq v2, v6, :cond_3

    .line 9
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_3
    add-int/lit8 v2, p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    const/16 v6, 0x75

    if-eq p1, v6, :cond_4

    .line 11
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_4
    add-int/lit8 p1, v2, 0x1

    .line 12
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-eq v2, v7, :cond_5

    .line 13
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_5
    if-eqz v5, :cond_7

    add-int/lit8 v2, p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-eq p1, v3, :cond_6

    .line 15
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_6
    move p1, v2

    .line 16
    :cond_7
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 17
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto :goto_1

    :cond_8
    const/16 v6, 0x66

    if-ne p1, v6, :cond_f

    add-int/lit8 p1, v2, 0x1

    .line 18
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v6, 0x61

    if-eq v2, v6, :cond_9

    .line 19
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_9
    add-int/lit8 v2, p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    const/16 v6, 0x6c

    if-eq p1, v6, :cond_a

    .line 21
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_a
    add-int/lit8 p1, v2, 0x1

    .line 22
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v6, 0x73

    if-eq v2, v6, :cond_b

    .line 23
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_b
    add-int/lit8 v2, p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-eq p1, v7, :cond_c

    .line 25
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_c
    if-eqz v5, :cond_e

    add-int/lit8 p1, v2, 0x1

    .line 26
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_d

    .line 27
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_d
    move v2, p1

    .line 28
    :cond_e
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 29
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto :goto_2

    :cond_f
    const/16 v6, 0x31

    if-ne p1, v6, :cond_12

    if-eqz v5, :cond_11

    add-int/lit8 p1, v2, 0x1

    .line 30
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_10

    .line 31
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_10
    move v2, p1

    .line 32
    :cond_11
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 33
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    :goto_1
    move v2, v4

    goto :goto_3

    :cond_12
    const/16 v6, 0x30

    if-ne p1, v6, :cond_1d

    if-eqz v5, :cond_14

    add-int/lit8 p1, v2, 0x1

    .line 34
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_13

    .line 35
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_13
    move v2, p1

    .line 36
    :cond_14
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 37
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    :goto_2
    move v2, v0

    :goto_3
    const/16 v3, 0x10

    const/16 v5, 0x2c

    if-ne p1, v5, :cond_15

    .line 38
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 39
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 40
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_6

    :cond_15
    const/16 v6, 0x7d

    if-ne p1, v6, :cond_1b

    .line 41
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    :goto_4
    if-ne p1, v5, :cond_16

    .line 42
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 43
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_5

    :cond_16
    const/16 v1, 0x5d

    if-ne p1, v1, :cond_17

    const/16 p1, 0xf

    .line 44
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 45
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_5

    :cond_17
    if-ne p1, v6, :cond_18

    const/16 p1, 0xd

    .line 46
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 47
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_5

    :cond_18
    const/16 v1, 0x1a

    if-ne p1, v1, :cond_19

    const/16 p1, 0x14

    .line 48
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    :goto_5
    const/4 p1, 0x4

    .line 49
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    :goto_6
    return v2

    .line 50
    :cond_19
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 51
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto :goto_4

    .line 52
    :cond_1a
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 53
    :cond_1b
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 54
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto/16 :goto_3

    .line 55
    :cond_1c
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 56
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    .line 57
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 58
    :cond_1d
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public scanFieldDate([C)Ljava/util/Date;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3
    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-static {v5, v3, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    const/4 v1, -0x2

    .line 5
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v6

    .line 6
    :cond_0
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v5, v1

    add-int/lit8 v1, v5, 0x1

    .line 7
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v7, 0x22

    const/16 v8, 0x7d

    const/16 v9, 0x2c

    const/4 v10, -0x1

    const/4 v11, 0x1

    if-ne v5, v7, :cond_6

    .line 8
    invoke-virtual {v0, v7, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v5

    if-eq v5, v10, :cond_5

    sub-int v7, v5, v1

    .line 9
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 10
    invoke-direct {v0, v2, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(ZI)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    add-int/lit8 v2, v5, 0x1

    .line 12
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 13
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    :goto_0
    if-eq v2, v9, :cond_3

    if-ne v2, v8, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v5, 0x1

    .line 15
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    goto :goto_0

    .line 16
    :cond_2
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v6

    :cond_3
    :goto_1
    add-int/2addr v5, v11

    .line 17
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 18
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto/16 :goto_5

    .line 19
    :cond_4
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 20
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v6

    .line 21
    :cond_5
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "unclosed str"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/16 v7, 0x2d

    const/16 v12, 0x39

    const/16 v13, 0x30

    if-eq v5, v7, :cond_8

    if-lt v5, v13, :cond_7

    if-gt v5, v12, :cond_7

    goto :goto_2

    .line 22
    :cond_7
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v6

    :cond_8
    :goto_2
    if-ne v5, v7, :cond_9

    add-int/lit8 v2, v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    move v1, v2

    move v2, v11

    :cond_9
    const-wide/16 v14, 0x0

    if-lt v5, v13, :cond_c

    if-gt v5, v12, :cond_c

    add-int/lit8 v5, v5, -0x30

    int-to-long v6, v5

    :goto_3
    add-int/lit8 v5, v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-lt v1, v13, :cond_a

    if-gt v1, v12, :cond_a

    const-wide/16 v16, 0xa

    mul-long v6, v6, v16

    add-int/lit8 v1, v1, -0x30

    int-to-long v12, v1

    add-long/2addr v6, v12

    move v1, v5

    const/16 v12, 0x39

    const/16 v13, 0x30

    goto :goto_3

    :cond_a
    if-eq v1, v9, :cond_b

    if-ne v1, v8, :cond_d

    :cond_b
    sub-int/2addr v5, v11

    .line 25
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    goto :goto_4

    :cond_c
    move v1, v5

    move-wide v6, v14

    :cond_d
    :goto_4
    cmp-long v5, v6, v14

    if-gez v5, :cond_e

    .line 26
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v1, 0x0

    return-object v1

    :cond_e
    if-eqz v2, :cond_f

    neg-long v6, v6

    .line 27
    :cond_f
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v18, v2

    move v2, v1

    move-object/from16 v1, v18

    :goto_5
    const/16 v5, 0x10

    if-ne v2, v9, :cond_10

    .line 28
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v11

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v2, 0x3

    .line 29
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 30
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v1

    .line 31
    :cond_10
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v11

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-ne v2, v9, :cond_11

    .line 32
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 33
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v11

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    :cond_11
    const/16 v5, 0x5d

    if-ne v2, v5, :cond_12

    const/16 v2, 0xf

    .line 34
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 35
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v11

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    :cond_12
    if-ne v2, v8, :cond_13

    const/16 v2, 0xd

    .line 36
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 37
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v11

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    :cond_13
    const/16 v5, 0x1a

    if-ne v2, v5, :cond_14

    const/16 v2, 0x14

    .line 38
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    :goto_6
    const/4 v2, 0x4

    .line 39
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v1

    .line 40
    :cond_14
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 41
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 42
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v1, 0x0

    return-object v1
.end method

.method public scanFieldInt([C)I
    .locals 14

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-static {v3, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p1, -0x2

    .line 5
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 6
    :cond_0
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length p1, p1

    add-int/2addr v3, p1

    add-int/lit8 p1, v3, 0x1

    .line 7
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v0

    :goto_0
    if-eqz v6, :cond_2

    add-int/lit8 v3, p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    move v13, v3

    move v3, p1

    move p1, v13

    :cond_2
    const/16 v7, 0x2d

    if-ne v3, v7, :cond_3

    move v7, v5

    goto :goto_1

    :cond_3
    move v7, v0

    :goto_1
    if-eqz v7, :cond_4

    add-int/lit8 v3, p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    move v13, v3

    move v3, p1

    move p1, v13

    :cond_4
    const/16 v8, 0x30

    const/4 v9, -0x1

    if-lt v3, v8, :cond_17

    const/16 v10, 0x39

    if-gt v3, v10, :cond_17

    sub-int/2addr v3, v8

    :goto_2
    add-int/lit8 v11, p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-lt p1, v8, :cond_6

    if-gt p1, v10, :cond_6

    mul-int/lit8 v12, v3, 0xa

    if-ge v12, v3, :cond_5

    .line 11
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_5
    add-int/lit8 p1, p1, -0x30

    add-int v3, v12, p1

    move p1, v11

    goto :goto_2

    :cond_6
    const/16 v8, 0x2e

    if-ne p1, v8, :cond_7

    .line 12
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_7
    if-gez v3, :cond_8

    .line 13
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_8
    if-eqz v6, :cond_a

    if-eq p1, v4, :cond_9

    .line 14
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_9
    add-int/lit8 p1, v11, 0x1

    .line 15
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    :goto_3
    move v11, p1

    move p1, v4

    :cond_a
    const/16 v4, 0x7d

    const/16 v6, 0x2c

    if-eq p1, v6, :cond_d

    if-ne p1, v4, :cond_b

    goto :goto_4

    .line 16
    :cond_b
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_c

    add-int/lit8 p1, v11, 0x1

    .line 17
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    goto :goto_3

    .line 18
    :cond_c
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_d
    :goto_4
    sub-int/2addr v11, v5

    .line 19
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v8, 0x10

    if-ne p1, v6, :cond_f

    add-int/2addr v11, v5

    .line 20
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 21
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 22
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-eqz v7, :cond_e

    neg-int v3, v3

    :cond_e
    return v3

    :cond_f
    if-ne p1, v4, :cond_15

    add-int/2addr v11, v5

    .line 23
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    :goto_5
    if-ne p1, v6, :cond_10

    .line 24
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 25
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    :cond_10
    const/16 v10, 0x5d

    if-ne p1, v10, :cond_11

    const/16 p1, 0xf

    .line 26
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 27
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    :cond_11
    if-ne p1, v4, :cond_12

    const/16 p1, 0xd

    .line 28
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 29
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    :cond_12
    const/16 v10, 0x1a

    if-ne p1, v10, :cond_13

    const/16 p1, 0x14

    .line 30
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    :goto_6
    const/4 p1, 0x4

    .line 31
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_7

    .line 32
    :cond_13
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 33
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto :goto_5

    .line 34
    :cond_14
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 35
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 36
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_15
    :goto_7
    if-eqz v7, :cond_16

    neg-int v3, v3

    :cond_16
    return v3

    .line 37
    :cond_17
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public scanFieldLong([C)J
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3
    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-static {v5, v3, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-nez v5, :cond_0

    const/4 v1, -0x2

    .line 5
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v6

    .line 6
    :cond_0
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v5, v1

    add-int/lit8 v1, v5, 0x1

    .line 7
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v8, 0x22

    const/4 v9, 0x1

    if-ne v5, v8, :cond_1

    move v10, v9

    goto :goto_0

    :cond_1
    move v10, v2

    :goto_0
    if-eqz v10, :cond_2

    add-int/lit8 v5, v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move/from16 v19, v5

    move v5, v1

    move/from16 v1, v19

    :cond_2
    const/16 v11, 0x2d

    if-ne v5, v11, :cond_3

    add-int/lit8 v5, v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v11, v9

    move/from16 v19, v5

    move v5, v1

    move/from16 v1, v19

    goto :goto_1

    :cond_3
    move v11, v2

    :goto_1
    const/16 v12, 0x30

    const/4 v13, -0x1

    if-lt v5, v12, :cond_17

    const/16 v14, 0x39

    if-gt v5, v14, :cond_17

    sub-int/2addr v5, v12

    move/from16 v16, v3

    int-to-long v2, v5

    :goto_2
    add-int/lit8 v5, v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-lt v1, v12, :cond_4

    if-gt v1, v14, :cond_4

    const-wide/16 v17, 0xa

    mul-long v2, v2, v17

    add-int/lit8 v1, v1, -0x30

    int-to-long v14, v1

    add-long/2addr v2, v14

    move v1, v5

    const/16 v14, 0x39

    goto :goto_2

    :cond_4
    const/16 v12, 0x2e

    if-ne v1, v12, :cond_5

    .line 11
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v6

    :cond_5
    if-eqz v10, :cond_7

    if-eq v1, v8, :cond_6

    .line 12
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v6

    :cond_6
    add-int/lit8 v1, v5, 0x1

    .line 13
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    move/from16 v19, v5

    move v5, v1

    move/from16 v1, v19

    :cond_7
    const/16 v8, 0x7d

    const/16 v10, 0x2c

    if-eq v1, v10, :cond_8

    if-ne v1, v8, :cond_9

    :cond_8
    add-int/lit8 v12, v5, -0x1

    .line 14
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    :cond_9
    cmp-long v12, v2, v6

    if-gez v12, :cond_b

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v12, v2, v14

    if-nez v12, :cond_a

    if-eqz v11, :cond_a

    goto :goto_3

    :cond_a
    const/16 v17, 0x0

    goto :goto_4

    :cond_b
    :goto_3
    move/from16 v17, v9

    :goto_4
    if-nez v17, :cond_c

    move/from16 v12, v16

    .line 15
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 16
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 17
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v6

    :cond_c
    move/from16 v12, v16

    :goto_5
    const/16 v14, 0x10

    if-ne v1, v10, :cond_e

    .line 18
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x3

    .line 19
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 20
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-eqz v11, :cond_d

    neg-long v2, v2

    :cond_d
    return-wide v2

    :cond_e
    if-ne v1, v8, :cond_15

    .line 21
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    :goto_6
    if-ne v1, v10, :cond_f

    .line 22
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 23
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_7

    :cond_f
    const/16 v5, 0x5d

    if-ne v1, v5, :cond_10

    const/16 v1, 0xf

    .line 24
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 25
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_7

    :cond_10
    if-ne v1, v8, :cond_11

    const/16 v1, 0xd

    .line 26
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 27
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_7

    :cond_11
    const/16 v5, 0x1a

    if-ne v1, v5, :cond_13

    const/16 v1, 0x14

    .line 28
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    :goto_7
    const/4 v1, 0x4

    .line 29
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-eqz v11, :cond_12

    neg-long v2, v2

    :cond_12
    return-wide v2

    .line 30
    :cond_13
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 31
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    goto :goto_6

    .line 32
    :cond_14
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 33
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 34
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v6

    .line 35
    :cond_15
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 36
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v5, 0x1

    .line 37
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    move/from16 v19, v5

    move v5, v1

    move/from16 v1, v19

    goto/16 :goto_5

    .line 38
    :cond_16
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v6

    :cond_17
    move v12, v3

    .line 39
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 40
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 41
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v6
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4
    :cond_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-static {v3, v4, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 7
    :goto_0
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_0

    :cond_1
    const/4 p1, -0x2

    .line 9
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 10
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 11
    :cond_2
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v4, p1

    add-int/2addr v3, v4

    add-int/lit8 v4, v3, 0x1

    .line 12
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v5, 0x22

    const/4 v6, -0x1

    move v7, v0

    if-eq v3, v5, :cond_4

    .line 13
    :goto_1
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v3, v4, 0x1

    .line 14
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move v11, v4

    move v4, v3

    move v3, v11

    goto :goto_1

    :cond_3
    if-eq v3, v5, :cond_4

    .line 15
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 16
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 17
    :cond_4
    invoke-virtual {p0, v5, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v3

    if-eq v3, v6, :cond_11

    sub-int v8, v3, v4

    .line 18
    invoke-virtual {p0, v4, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0x5c

    .line 19
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v6, :cond_7

    :goto_2
    add-int/lit8 v4, v3, -0x1

    move v9, v0

    :goto_3
    if-ltz v4, :cond_5

    .line 20
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_5

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 21
    :cond_5
    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_6

    .line 22
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v4, p1

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v7

    sub-int v4, v3, v4

    .line 23
    array-length p1, p1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v7

    invoke-virtual {p0, v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->sub_chars(II)[C

    move-result-object p1

    .line 24
    invoke-static {p1, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 25
    invoke-virtual {p0, v5, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v3

    goto :goto_2

    .line 26
    :cond_7
    :goto_4
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->TrimStringFieldValue:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_8

    .line 27
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_8
    add-int/lit8 p1, v3, 0x1

    .line 28
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    :goto_5
    const/16 v0, 0x7d

    const/16 v5, 0x2c

    if-eq p1, v5, :cond_b

    if-ne p1, v0, :cond_9

    goto :goto_6

    .line 29
    :cond_9
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_a

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, v3, 0x1

    .line 30
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto :goto_5

    .line 31
    :cond_a
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 33
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 34
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne p1, v5, :cond_c

    add-int/lit8 v3, v3, 0x1

    .line 35
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 36
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 37
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-ne p1, v5, :cond_d

    const/16 p1, 0x10

    .line 38
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 39
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_7

    :cond_d
    const/16 v3, 0x5d

    if-ne p1, v3, :cond_e

    const/16 p1, 0xf

    .line 40
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 41
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_7

    :cond_e
    if-ne p1, v0, :cond_f

    const/16 p1, 0xd

    .line 42
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 43
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_7

    :cond_f
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_10

    const/16 p1, 0x14

    .line 44
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    :goto_7
    const/4 p1, 0x4

    .line 45
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 46
    :cond_10
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 47
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 48
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 50
    :cond_11
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "unclosed str"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2
    :goto_0
    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v4, 0xa

    const/4 v6, 0x1

    if-eq v3, v4, :cond_16

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    goto/16 :goto_b

    .line 3
    :cond_0
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-static {v3, v4, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const/4 v1, -0x2

    .line 4
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    :cond_1
    move-object/from16 v3, p2

    .line 5
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v3

    .line 6
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 7
    iget-char v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 8
    array-length v1, v1

    add-int/2addr v1, v7

    add-int/lit8 v9, v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v10, 0x5b

    const-string v11, "ull"

    const/16 v12, 0x5d

    const/16 v13, 0x2c

    const/4 v15, -0x1

    if-ne v1, v10, :cond_c

    add-int/lit8 v1, v9, 0x1

    .line 10
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    :goto_1
    const/16 v10, 0x22

    if-ne v9, v10, :cond_6

    .line 11
    invoke-virtual {v0, v10, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v9

    if-eq v9, v15, :cond_5

    sub-int v2, v9, v1

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x5c

    .line 13
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-eq v14, v15, :cond_4

    :goto_2
    add-int/lit8 v2, v9, -0x1

    const/4 v14, 0x0

    :goto_3
    if-ltz v2, :cond_2

    .line 14
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    if-ne v15, v5, :cond_2

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v15, -0x1

    goto :goto_3

    .line 15
    :cond_2
    rem-int/lit8 v14, v14, 0x2

    if-nez v14, :cond_3

    sub-int v2, v9, v1

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->sub_chars(II)[C

    move-result-object v1

    .line 17
    invoke-static {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 18
    invoke-virtual {v0, v10, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v9

    const/4 v15, -0x1

    goto :goto_2

    :cond_4
    :goto_4
    add-int/2addr v9, v6

    add-int/lit8 v1, v9, 0x1

    .line 19
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 20
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 21
    :cond_5
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "unclosed str"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/16 v2, 0x6e

    if-ne v9, v2, :cond_9

    .line 22
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2, v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 24
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v1, v2

    :goto_5
    if-ne v5, v13, :cond_7

    add-int/lit8 v2, v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    move v1, v2

    const/4 v2, 0x0

    const/4 v15, -0x1

    goto :goto_1

    :cond_7
    if-ne v5, v12, :cond_8

    add-int/lit8 v2, v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 27
    :goto_6
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_a

    add-int/lit8 v1, v2, 0x1

    .line 28
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move/from16 v16, v2

    move v2, v1

    move/from16 v1, v16

    goto :goto_6

    :cond_8
    const/4 v1, -0x1

    .line 29
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    :cond_9
    if-ne v9, v12, :cond_b

    .line 30
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_b

    add-int/lit8 v2, v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    :cond_a
    move-object v5, v3

    move v3, v1

    const/4 v1, 0x3

    goto :goto_7

    :cond_b
    const/4 v1, -0x1

    .line 32
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 33
    :cond_c
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1, v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x3

    add-int/2addr v9, v1

    add-int/lit8 v2, v9, 0x1

    .line 34
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move-object v5, v4

    .line 35
    :goto_7
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    if-ne v3, v13, :cond_d

    .line 36
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 37
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    :cond_d
    const/16 v1, 0x7d

    if-ne v3, v1, :cond_14

    .line 38
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    :goto_8
    if-ne v3, v13, :cond_e

    const/16 v1, 0x10

    .line 39
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 40
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_9

    :cond_e
    if-ne v3, v12, :cond_f

    const/16 v1, 0xf

    .line 41
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 42
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_9

    :cond_f
    if-ne v3, v1, :cond_10

    const/16 v1, 0xd

    .line 43
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 44
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_9

    :cond_10
    const/16 v7, 0x1a

    if-ne v3, v7, :cond_11

    const/16 v1, 0x14

    .line 45
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 46
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_9
    const/4 v1, 0x4

    .line 47
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    :cond_11
    const/4 v8, 0x0

    .line 48
    :goto_a
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_12

    add-int/lit8 v3, v2, 0x1

    .line 49
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 50
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move v8, v6

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_a

    :cond_12
    if-eqz v8, :cond_13

    goto :goto_8

    :cond_13
    const/4 v2, -0x1

    .line 51
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    :cond_14
    const/4 v2, -0x1

    .line 52
    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 53
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 54
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    :cond_15
    const/4 v2, -0x1

    .line 55
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    :cond_16
    :goto_b
    move-object/from16 v3, p2

    const/16 v7, 0x1a

    .line 56
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 57
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt v2, v4, :cond_17

    move v5, v7

    goto :goto_c

    :cond_17
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 58
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_c
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public scanFieldStringArray([CILcom/alibaba/fastjson/parser/SymbolTable;)[Ljava/lang/String;
    .locals 8

    .line 59
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 60
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 61
    :goto_0
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    .line 63
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 64
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare([C)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 p1, -0x2

    .line 65
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v3

    .line 66
    :cond_1
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length p1, p1

    add-int/2addr v5, p1

    .line 67
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 68
    :goto_1
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v6, v5

    goto :goto_1

    :cond_2
    const/16 v5, 0x3a

    if-ne p1, v5, :cond_3

    .line 70
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 71
    :goto_2
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 72
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v5, v6

    goto :goto_2

    .line 73
    :cond_3
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v3

    .line 74
    :cond_4
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, p1, 0x1

    .line 75
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :cond_5
    const/16 v6, 0x5b

    const/4 v7, 0x4

    if-ne p1, v6, :cond_f

    .line 76
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 77
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ltz p2, :cond_6

    .line 78
    new-array p1, p2, [Ljava/lang/String;

    goto :goto_3

    :cond_6
    new-array p1, v7, [Ljava/lang/String;

    :goto_3
    move p2, v4

    .line 79
    :goto_4
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 80
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_4

    .line 81
    :cond_7
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v6, 0x22

    if-eq v5, v6, :cond_8

    .line 82
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 83
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 84
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v3

    .line 85
    :cond_8
    invoke-virtual {p0, p3, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v5

    .line 86
    array-length v6, p1

    if-ne p2, v6, :cond_9

    .line 87
    array-length v6, p1

    array-length v7, p1

    shr-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    .line 88
    new-array v6, v6, [Ljava/lang/String;

    .line 89
    array-length v7, p1

    invoke-static {p1, v4, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v6

    :cond_9
    add-int/lit8 v6, p2, 0x1

    .line 90
    aput-object v5, p1, p2

    .line 91
    :goto_5
    iget-char p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_5

    .line 93
    :cond_a
    iget-char p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v5, 0x2c

    if-ne p2, v5, :cond_b

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    move p2, v6

    goto :goto_4

    .line 95
    :cond_b
    array-length p2, p1

    if-eq p2, v6, :cond_c

    .line 96
    new-array p2, v6, [Ljava/lang/String;

    .line 97
    invoke-static {p1, v4, p2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p2

    .line 98
    :cond_c
    :goto_6
    iget-char p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 99
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_6

    .line 100
    :cond_d
    iget-char p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 p3, 0x5d

    if-ne p2, p3, :cond_e

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    return-object p1

    .line 102
    :cond_e
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 103
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 104
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v3

    :cond_f
    const/16 p2, 0x6e

    if-ne p1, p2, :cond_10

    .line 105
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p2, p2, 0x1

    const-string p3, "ull"

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 106
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v7

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 107
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    return-object v3

    .line 108
    :cond_10
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v3
.end method

.method public scanFieldSymbol([C)J
    .locals 10

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_2

    .line 3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 5
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_0

    :cond_1
    const/4 p1, -0x2

    .line 7
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    .line 8
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length p1, p1

    add-int/2addr v0, p1

    add-int/lit8 p1, v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v3, 0x22

    const/4 v4, -0x1

    if-eq v0, v3, :cond_4

    .line 10
    :goto_1
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v0, p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    move v9, v0

    move v0, p1

    move p1, v9

    goto :goto_1

    :cond_3
    if-eq v0, v3, :cond_4

    .line 12
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    :cond_4
    const-wide v5, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    :goto_2
    add-int/lit8 v0, p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-ne p1, v3, :cond_c

    .line 14
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 15
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_3
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_5

    .line 16
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 17
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v5

    :cond_5
    const/16 v3, 0x7d

    if-ne p1, v3, :cond_a

    .line 18
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 19
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 20
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result p1

    if-ne p1, v0, :cond_6

    const/16 p1, 0x10

    .line 21
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 22
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4

    :cond_6
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_7

    const/16 p1, 0xf

    .line 23
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 24
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4

    :cond_7
    if-ne p1, v3, :cond_8

    const/16 p1, 0xd

    .line 25
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 26
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4

    :cond_8
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_9

    const/16 p1, 0x14

    .line 27
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    :goto_4
    const/4 p1, 0x4

    .line 28
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v5

    .line 29
    :cond_9
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    .line 30
    :cond_a
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 31
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto :goto_3

    .line 32
    :cond_b
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    .line 33
    :cond_c
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-le v0, v7, :cond_d

    .line 34
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    :cond_d
    int-to-long v7, p1

    xor-long/2addr v5, v7

    const-wide v7, 0x100000001b3L

    mul-long/2addr v5, v7

    move p1, v0

    goto/16 :goto_2
.end method

.method public scanISO8601DateIfMatch()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    return v0
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v0, v1

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(ZI)Z

    move-result p1

    return p1
.end method

.method public final scanInt(C)I
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .line 3
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 4
    :goto_0
    invoke-static {v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 5
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move v15, v4

    move v4, v3

    move v3, v15

    goto :goto_0

    :cond_0
    const/16 v5, 0x22

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v1

    :goto_1
    if-eqz v7, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 6
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move v15, v4

    move v4, v3

    move v3, v15

    :cond_2
    const/16 v8, 0x2d

    if-ne v4, v8, :cond_3

    move v8, v6

    goto :goto_2

    :cond_3
    move v8, v1

    :goto_2
    if-eqz v8, :cond_4

    add-int/lit8 v4, v3, 0x1

    .line 7
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move v15, v4

    move v4, v3

    move v3, v15

    :cond_4
    const/16 v9, 0x10

    const/16 v10, 0x30

    const/4 v11, -0x1

    if-lt v4, v10, :cond_f

    const/16 v12, 0x39

    if-gt v4, v12, :cond_f

    sub-int/2addr v4, v10

    :goto_3
    add-int/lit8 v13, v3, 0x1

    .line 8
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-lt v3, v10, :cond_6

    if-gt v3, v12, :cond_6

    mul-int/lit8 v14, v4, 0xa

    if-lt v14, v4, :cond_5

    add-int/lit8 v3, v3, -0x30

    add-int v4, v14, v3

    move v3, v13

    goto :goto_3

    .line 9
    :cond_5
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseInt error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v13, v6

    .line 10
    invoke-virtual {v0, v2, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/16 v2, 0x2e

    if-ne v3, v2, :cond_7

    .line 11
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v1

    :cond_7
    if-eqz v7, :cond_9

    if-eq v3, v5, :cond_8

    .line 12
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v1

    :cond_8
    add-int/lit8 v2, v13, 0x1

    .line 13
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move v13, v2

    :cond_9
    if-gez v4, :cond_a

    .line 14
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v1

    :cond_a
    move/from16 v1, p1

    :goto_4
    if-ne v3, v1, :cond_c

    .line 15
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 16
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x3

    .line 17
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 18
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-eqz v8, :cond_b

    neg-int v4, v4

    :cond_b
    return v4

    .line 19
    :cond_c
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_d

    add-int/lit8 v2, v13, 0x1

    .line 20
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move v13, v2

    goto :goto_4

    .line 21
    :cond_d
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-eqz v8, :cond_e

    neg-int v4, v4

    :cond_e
    return v4

    :cond_f
    const/16 v2, 0x6e

    if-ne v4, v2, :cond_14

    add-int/lit8 v2, v3, 0x1

    .line 22
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v4, 0x75

    if-ne v3, v4, :cond_14

    add-int/lit8 v3, v2, 0x1

    .line 23
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v4, 0x6c

    if-ne v2, v4, :cond_14

    add-int/lit8 v2, v3, 0x1

    .line 24
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_14

    const/4 v3, 0x5

    .line 25
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    add-int/lit8 v4, v2, 0x1

    .line 26
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-eqz v7, :cond_10

    if-ne v2, v5, :cond_10

    add-int/lit8 v2, v4, 0x1

    .line 27
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    :goto_5
    move v15, v4

    move v4, v2

    move v2, v15

    :cond_10
    const/16 v5, 0x2c

    if-ne v2, v5, :cond_11

    .line 28
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 29
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 30
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 31
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v1

    :cond_11
    const/16 v5, 0x5d

    if-ne v2, v5, :cond_12

    .line 32
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 33
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 34
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v2, 0xf

    .line 35
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v1

    .line 36
    :cond_12
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_13

    add-int/lit8 v2, v4, 0x1

    .line 37
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    goto :goto_5

    .line 38
    :cond_13
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v1

    .line 39
    :cond_14
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v1
.end method

.method public scanLong(C)J
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .line 3
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v4, 0x22

    const/4 v5, 0x1

    if-ne v2, v4, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    if-eqz v6, :cond_1

    add-int/lit8 v2, v3, 0x1

    .line 4
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move/from16 v18, v3

    move v3, v2

    move/from16 v2, v18

    :cond_1
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    move v7, v1

    :goto_1
    if-eqz v7, :cond_3

    add-int/lit8 v2, v3, 0x1

    .line 5
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move/from16 v18, v3

    move v3, v2

    move/from16 v2, v18

    :cond_3
    const/16 v9, 0x30

    const/4 v10, -0x1

    const-wide/16 v11, 0x0

    if-lt v2, v9, :cond_e

    const/16 v13, 0x39

    if-gt v2, v13, :cond_e

    sub-int/2addr v2, v9

    int-to-long v14, v2

    :goto_2
    add-int/lit8 v2, v3, 0x1

    .line 6
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-lt v3, v9, :cond_4

    if-gt v3, v13, :cond_4

    const-wide/16 v16, 0xa

    mul-long v14, v14, v16

    add-int/lit8 v3, v3, -0x30

    int-to-long v8, v3

    add-long/2addr v14, v8

    move v3, v2

    const/16 v9, 0x30

    goto :goto_2

    :cond_4
    const/16 v8, 0x2e

    if-ne v3, v8, :cond_5

    .line 7
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v11

    :cond_5
    if-eqz v6, :cond_7

    if-eq v3, v4, :cond_6

    .line 8
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v11

    :cond_6
    add-int/lit8 v3, v2, 0x1

    .line 9
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move/from16 v18, v3

    move v3, v2

    move/from16 v2, v18

    :cond_7
    cmp-long v4, v14, v11

    if-gez v4, :cond_8

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v4, v14, v8

    if-nez v4, :cond_9

    if-eqz v7, :cond_9

    :cond_8
    move v1, v5

    :cond_9
    if-nez v1, :cond_a

    .line 10
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v11

    :cond_a
    move/from16 v1, p1

    :goto_3
    if-ne v3, v1, :cond_c

    .line 11
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 12
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x3

    .line 13
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v1, 0x10

    .line 14
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-eqz v7, :cond_b

    neg-long v14, v14

    :cond_b
    return-wide v14

    .line 15
    :cond_c
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_d

    add-int/lit8 v3, v2, 0x1

    .line 16
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move/from16 v18, v3

    move v3, v2

    move/from16 v2, v18

    goto :goto_3

    .line 17
    :cond_d
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v14

    :cond_e
    const/16 v1, 0x6e

    if-ne v2, v1, :cond_13

    add-int/lit8 v1, v3, 0x1

    .line 18
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x75

    if-ne v2, v3, :cond_13

    add-int/lit8 v2, v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_13

    add-int/lit8 v1, v2, 0x1

    .line 20
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_13

    const/4 v2, 0x5

    .line 21
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    add-int/lit8 v3, v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-eqz v6, :cond_f

    if-ne v1, v4, :cond_f

    add-int/lit8 v1, v3, 0x1

    .line 23
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    :goto_4
    move/from16 v18, v3

    move v3, v1

    move/from16 v1, v18

    :cond_f
    const/16 v4, 0x2c

    if-ne v1, v4, :cond_10

    .line 24
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 25
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 26
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v4, 0x10

    .line 27
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v11

    :cond_10
    const/16 v4, 0x10

    const/16 v5, 0x5d

    if-ne v1, v5, :cond_11

    .line 28
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 29
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 30
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v1, 0xf

    .line 31
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v11

    .line 32
    :cond_11
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_12

    add-int/lit8 v1, v3, 0x1

    .line 33
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    goto :goto_4

    .line 34
    :cond_12
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v11

    .line 35
    :cond_13
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v11
.end method

.method public scanTypeName(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const-string v2, "\"@type\":\""

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const/16 v2, 0x22

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v3, 0x9

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 3
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x9

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v3, 0x1f

    .line 4
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int v4, v0, v2

    invoke-virtual {p0, v2, v4, v3, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 7
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 8
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    return-object p1

    :cond_2
    return-object v1
.end method

.method public seekArrayToItem(I)Z
    .locals 10

    if-ltz p1, :cond_f

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_e

    move v0, v2

    :goto_0
    const/4 v3, 0x1

    if-ge v0, p1, :cond_d

    .line 2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 3
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v5, 0x22

    const/16 v6, 0x10

    const-string v7, "illegal json."

    const/16 v8, 0x5d

    const/16 v9, 0x2c

    if-eq v4, v5, :cond_a

    const/16 v5, 0x27

    if-ne v4, v5, :cond_1

    goto :goto_4

    :cond_1
    const/16 v5, 0x7b

    if-ne v4, v5, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    const/16 v3, 0xc

    .line 5
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 6
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipObject(Z)V

    goto :goto_1

    :cond_2
    const/16 v5, 0x5b

    if-ne v4, v5, :cond_5

    .line 7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 8
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 9
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipArray(Z)V

    .line 10
    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-ne v3, v6, :cond_3

    goto :goto_5

    :cond_3
    const/16 p1, 0xf

    if-ne v3, p1, :cond_4

    return v2

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 12
    :cond_5
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v3

    :goto_2
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 13
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_6

    add-int/lit8 v4, v4, 0x1

    .line 14
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 15
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    :cond_6
    if-ne v5, v8, :cond_7

    add-int/2addr v4, v3

    .line 16
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 17
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 18
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    return v2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    move v3, v2

    :goto_3
    if-eqz v3, :cond_9

    goto :goto_5

    .line 19
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipString()V

    .line 21
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v3, v9, :cond_b

    .line 22
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_b
    if-ne v3, v8, :cond_c

    .line 23
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 24
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    return v2

    .line 25
    :cond_c
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    return v3

    .line 27
    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 28
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index must > 0, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seekObjectToField(JZ)I
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/4 v2, -0x1

    const/16 v3, 0x14

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    const/16 v3, 0xd

    if-eq v1, v3, :cond_36

    const/16 v4, 0xf

    if-ne v1, v4, :cond_1

    goto/16 :goto_11

    :cond_1
    const/16 v5, 0x10

    const/16 v6, 0xc

    if-eq v1, v6, :cond_3

    if-ne v1, v5, :cond_2

    goto :goto_0

    .line 2
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_3
    :goto_0
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v7, 0x7d

    if-ne v1, v7, :cond_4

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    return v2

    :cond_4
    const/16 v8, 0x1a

    if-ne v1, v8, :cond_5

    return v2

    :cond_5
    const/16 v9, 0x22

    if-eq v1, v9, :cond_6

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 7
    :cond_6
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v9, :cond_35

    const-wide v10, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 8
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v12, 0x1

    add-int/2addr v1, v12

    :goto_1
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v1, v13, :cond_b

    .line 9
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x5c

    if-ne v13, v14, :cond_8

    add-int/lit8 v1, v1, 0x1

    .line 10
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eq v1, v13, :cond_7

    .line 11
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    goto :goto_2

    .line 12
    :cond_7
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unclosed str, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_2
    if-ne v13, v9, :cond_a

    add-int/lit8 v1, v1, 0x1

    .line 13
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 14
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v1, v13, :cond_9

    move v1, v8

    goto :goto_3

    :cond_9
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 15
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_3
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4

    :cond_a
    int-to-long v13, v13

    xor-long/2addr v10, v13

    const-wide v13, 0x100000001b3L

    mul-long/2addr v10, v13

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    :goto_4
    cmp-long v1, v10, p1

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/16 v13, 0x3a

    const/16 v14, 0x39

    const/16 v15, 0x30

    const/16 v8, 0x2c

    if-nez v1, :cond_16

    .line 16
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v1, v13, :cond_c

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 18
    :cond_c
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v13, :cond_15

    .line 19
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 20
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_d

    const/16 v1, 0x1a

    goto :goto_5

    :cond_d
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_5
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v8, :cond_f

    .line 22
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 23
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_e

    const/16 v8, 0x1a

    goto :goto_6

    :cond_e
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_6
    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 25
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_9

    :cond_f
    const/16 v2, 0x5d

    if-ne v1, v2, :cond_11

    .line 26
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 27
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_10

    const/16 v8, 0x1a

    goto :goto_7

    :cond_10
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_7
    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 29
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_9

    :cond_11
    if-ne v1, v7, :cond_13

    .line 30
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 31
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_12

    const/16 v8, 0x1a

    goto :goto_8

    :cond_12
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_8
    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 33
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_9

    :cond_13
    if-lt v1, v15, :cond_14

    if-gt v1, v14, :cond_14

    .line 34
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 35
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    goto :goto_9

    .line 37
    :cond_14
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    :cond_15
    :goto_9
    const/4 v1, 0x3

    return v1

    .line 38
    :cond_16
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v1, v13, :cond_17

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 40
    :cond_17
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v13, :cond_34

    .line 41
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 42
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v1, v13, :cond_18

    const/16 v1, 0x1a

    goto :goto_a

    :cond_18
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 43
    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_a
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v13, 0x5b

    const/16 v4, 0x7b

    const/16 v5, 0x2b

    const/16 v10, 0x2d

    if-eq v1, v9, :cond_19

    const/16 v2, 0x27

    if-eq v1, v2, :cond_19

    if-eq v1, v4, :cond_19

    if-eq v1, v13, :cond_19

    if-eq v1, v15, :cond_19

    const/16 v2, 0x31

    if-eq v1, v2, :cond_19

    const/16 v2, 0x32

    if-eq v1, v2, :cond_19

    const/16 v2, 0x33

    if-eq v1, v2, :cond_19

    const/16 v2, 0x34

    if-eq v1, v2, :cond_19

    const/16 v2, 0x35

    if-eq v1, v2, :cond_19

    const/16 v2, 0x36

    if-eq v1, v2, :cond_19

    const/16 v2, 0x37

    if-eq v1, v2, :cond_19

    const/16 v2, 0x38

    if-eq v1, v2, :cond_19

    if-eq v1, v14, :cond_19

    if-eq v1, v5, :cond_19

    if-eq v1, v10, :cond_19

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 45
    :cond_19
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x65

    if-eq v1, v10, :cond_2b

    if-eq v1, v5, :cond_2b

    if-lt v1, v15, :cond_1a

    if-gt v1, v14, :cond_1a

    goto/16 :goto_c

    :cond_1a
    if-ne v1, v9, :cond_1c

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipString()V

    .line 47
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v1, v8, :cond_1b

    if-eq v1, v7, :cond_1b

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 49
    :cond_1b
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v8, :cond_33

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto/16 :goto_10

    :cond_1c
    const/16 v5, 0x74

    const/16 v9, 0x75

    if-ne v1, v5, :cond_1f

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 52
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v4, 0x72

    if-ne v1, v4, :cond_1d

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 54
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v9, :cond_1d

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 56
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v2, :cond_1d

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 58
    :cond_1d
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v1, v8, :cond_1e

    if-eq v1, v7, :cond_1e

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 60
    :cond_1e
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v8, :cond_33

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto/16 :goto_10

    :cond_1f
    const/16 v5, 0x6e

    const/16 v10, 0x6c

    if-ne v1, v5, :cond_22

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 63
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v9, :cond_20

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 65
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v10, :cond_20

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 67
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v10, :cond_20

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 69
    :cond_20
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v1, v8, :cond_21

    if-eq v1, v7, :cond_21

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 71
    :cond_21
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v8, :cond_33

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto/16 :goto_10

    :cond_22
    const/16 v5, 0x66

    if-ne v1, v5, :cond_25

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 74
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v4, 0x61

    if-ne v1, v4, :cond_23

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 76
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v10, :cond_23

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 78
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v4, 0x73

    if-ne v1, v4, :cond_23

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 80
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v2, :cond_23

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 82
    :cond_23
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v1, v8, :cond_24

    if-eq v1, v7, :cond_24

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 84
    :cond_24
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v8, :cond_33

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto/16 :goto_10

    :cond_25
    if-ne v1, v4, :cond_28

    .line 86
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 87
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_26

    const/16 v8, 0x1a

    goto :goto_b

    :cond_26
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_b
    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eqz p3, :cond_27

    .line 89
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v12

    .line 90
    :cond_27
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipObject(Z)V

    .line 91
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-ne v1, v3, :cond_33

    const/4 v2, -0x1

    return v2

    :cond_28
    const/4 v2, -0x1

    if-ne v1, v13, :cond_2a

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    if-eqz p3, :cond_29

    const/16 v1, 0xe

    .line 93
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/4 v1, 0x2

    return v1

    .line 94
    :cond_29
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipArray(Z)V

    .line 95
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-ne v1, v3, :cond_33

    return v2

    .line 96
    :cond_2a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 97
    :cond_2b
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 98
    :goto_d
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v1, v15, :cond_2c

    if-gt v1, v14, :cond_2c

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_d

    :cond_2c
    const/16 v4, 0x2e

    if-ne v1, v4, :cond_2d

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 101
    :goto_e
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v1, v15, :cond_2d

    if-gt v1, v14, :cond_2d

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_e

    .line 103
    :cond_2d
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v4, 0x45

    if-eq v1, v4, :cond_2e

    if-ne v1, v2, :cond_31

    .line 104
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 105
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v1, v10, :cond_2f

    if-ne v1, v5, :cond_30

    .line 106
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 107
    :cond_30
    :goto_f
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v1, v15, :cond_31

    if-gt v1, v14, :cond_31

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_f

    .line 109
    :cond_31
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v1, v8, :cond_32

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 111
    :cond_32
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v8, :cond_33

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    :cond_33
    :goto_10
    const/4 v2, -0x1

    const/16 v4, 0xf

    const/16 v5, 0x10

    goto/16 :goto_0

    .line 113
    :cond_34
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal json, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_35
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 115
    :cond_36
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    const/4 v1, -0x1

    return v1
.end method

.method public seekObjectToField([J)I
    .locals 14

    .line 116
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/16 v1, 0x10

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 118
    :cond_1
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x7d

    const/4 v3, -0x1

    if-ne v0, v2, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 120
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 121
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v3

    :cond_2
    const/16 v4, 0x1a

    if-ne v0, v4, :cond_3

    .line 122
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v3

    :cond_3
    const/16 v5, 0x22

    if-eq v0, v5, :cond_4

    .line 123
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 124
    :cond_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v5, :cond_29

    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 125
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_9

    .line 126
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_6

    add-int/lit8 v0, v0, 0x1

    .line 127
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v0, v8, :cond_5

    .line 128
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_2

    .line 129
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unclosed str, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    if-ne v8, v5, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 130
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 131
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v0, v8, :cond_7

    move v0, v4

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 132
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_3
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4

    :cond_8
    int-to-long v8, v8

    xor-long/2addr v6, v8

    const-wide v8, 0x100000001b3L

    mul-long/2addr v6, v8

    goto :goto_1

    :cond_9
    :goto_4
    const/4 v0, 0x0

    move v8, v0

    .line 133
    :goto_5
    array-length v9, p1

    if-ge v8, v9, :cond_b

    .line 134
    aget-wide v9, p1, v8

    cmp-long v9, v6, v9

    if-nez v9, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_b
    move v8, v3

    :goto_6
    const/16 v6, 0x3a

    const/16 v7, 0x2c

    const/16 v9, 0x39

    const/16 v10, 0x30

    if-eq v8, v3, :cond_16

    .line 135
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq p1, v6, :cond_c

    .line 136
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 137
    :cond_c
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne p1, v6, :cond_15

    .line 138
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 139
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt p1, v3, :cond_d

    move p1, v4

    goto :goto_7

    :cond_d
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 140
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_7
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne p1, v7, :cond_f

    .line 141
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 142
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_e

    goto :goto_8

    :cond_e
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_8
    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 144
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_b

    :cond_f
    const/16 v1, 0x5d

    if-ne p1, v1, :cond_11

    .line 145
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 146
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_10

    goto :goto_9

    :cond_10
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_9
    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 p1, 0xf

    .line 148
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_b

    :cond_11
    if-ne p1, v2, :cond_13

    .line 149
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 150
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_12

    goto :goto_a

    :cond_12
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_a
    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 p1, 0xd

    .line 152
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_b

    :cond_13
    if-lt p1, v10, :cond_14

    if-gt p1, v9, :cond_14

    .line 153
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 154
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 155
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    goto :goto_b

    :cond_14
    const/4 p1, 0x2

    .line 156
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    :cond_15
    :goto_b
    const/4 p1, 0x3

    .line 157
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v8

    .line 158
    :cond_16
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v3, v6, :cond_17

    .line 159
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 160
    :cond_17
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v3, v6, :cond_28

    .line 161
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 162
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v3, v6, :cond_18

    move v3, v4

    goto :goto_c

    :cond_18
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 163
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_c
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v6, 0x5b

    const/16 v8, 0x7b

    const/16 v11, 0x2b

    const/16 v12, 0x2d

    if-eq v3, v5, :cond_19

    const/16 v13, 0x27

    if-eq v3, v13, :cond_19

    if-eq v3, v8, :cond_19

    if-eq v3, v6, :cond_19

    if-eq v3, v10, :cond_19

    const/16 v13, 0x31

    if-eq v3, v13, :cond_19

    const/16 v13, 0x32

    if-eq v3, v13, :cond_19

    const/16 v13, 0x33

    if-eq v3, v13, :cond_19

    const/16 v13, 0x34

    if-eq v3, v13, :cond_19

    const/16 v13, 0x35

    if-eq v3, v13, :cond_19

    const/16 v13, 0x36

    if-eq v3, v13, :cond_19

    const/16 v13, 0x37

    if-eq v3, v13, :cond_19

    const/16 v13, 0x38

    if-eq v3, v13, :cond_19

    if-eq v3, v9, :cond_19

    if-eq v3, v11, :cond_19

    if-eq v3, v12, :cond_19

    .line 164
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 165
    :cond_19
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v3, v12, :cond_20

    if-eq v3, v11, :cond_20

    if-lt v3, v10, :cond_1a

    if-gt v3, v9, :cond_1a

    goto :goto_e

    :cond_1a
    if-ne v3, v5, :cond_1c

    .line 166
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipString()V

    .line 167
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v7, :cond_1b

    if-eq v0, v2, :cond_1b

    .line 168
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 169
    :cond_1b
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v7, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto/16 :goto_0

    :cond_1c
    if-ne v3, v8, :cond_1e

    .line 171
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 172
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_1d

    goto :goto_d

    :cond_1d
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 173
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_d
    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 174
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipObject(Z)V

    goto/16 :goto_0

    :cond_1e
    if-ne v3, v6, :cond_1f

    .line 175
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 176
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipArray(Z)V

    goto/16 :goto_0

    .line 177
    :cond_1f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 178
    :cond_20
    :goto_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 179
    :goto_f
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v0, v10, :cond_21

    if-gt v0, v9, :cond_21

    .line 180
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_f

    :cond_21
    const/16 v2, 0x2e

    if-ne v0, v2, :cond_22

    .line 181
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 182
    :goto_10
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v0, v10, :cond_22

    if-gt v0, v9, :cond_22

    .line 183
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_10

    .line 184
    :cond_22
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x45

    if-eq v0, v2, :cond_23

    const/16 v2, 0x65

    if-ne v0, v2, :cond_26

    .line 185
    :cond_23
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 186
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v12, :cond_24

    if-ne v0, v11, :cond_25

    .line 187
    :cond_24
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 188
    :cond_25
    :goto_11
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v0, v10, :cond_26

    if-gt v0, v9, :cond_26

    .line 189
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_11

    .line 190
    :cond_26
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v7, :cond_27

    .line 191
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 192
    :cond_27
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v7, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto/16 :goto_0

    .line 194
    :cond_28
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal json, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 195
    :cond_29
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setTime(CCCCCC)V
    .locals 0

    add-int/lit8 p1, p1, -0x30

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 p2, p2, -0x30

    add-int/2addr p1, p2

    add-int/lit8 p3, p3, -0x30

    mul-int/lit8 p3, p3, 0xa

    add-int/lit8 p4, p4, -0x30

    add-int/2addr p3, p4

    add-int/lit8 p5, p5, -0x30

    mul-int/lit8 p5, p5, 0xa

    add-int/lit8 p6, p6, -0x30

    add-int/2addr p5, p6

    .line 1
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/16 p4, 0xb

    invoke-virtual {p2, p4, p1}, Ljava/util/Calendar;->set(II)V

    .line 2
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 3
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    const/16 p2, 0xd

    invoke-virtual {p1, p2, p5}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public setTimeZone(CCC)V
    .locals 6

    const/16 v4, 0x30

    const/16 v5, 0x30

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCCCC)V

    return-void
.end method

.method public setTimeZone(CCCCC)V
    .locals 0

    add-int/lit8 p2, p2, -0x30

    mul-int/lit8 p2, p2, 0xa

    add-int/lit8 p3, p3, -0x30

    add-int/2addr p2, p3

    mul-int/lit16 p2, p2, 0xe10

    mul-int/lit16 p2, p2, 0x3e8

    add-int/lit8 p4, p4, -0x30

    mul-int/lit8 p4, p4, 0xa

    add-int/lit8 p5, p5, -0x30

    add-int/2addr p4, p5

    mul-int/lit8 p4, p4, 0x3c

    mul-int/lit16 p4, p4, 0x3e8

    add-int/2addr p2, p4

    const/16 p3, 0x2d

    if-ne p1, p3, :cond_0

    neg-int p2, p2

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    if-eq p1, p2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    new-instance p3, Ljava/util/SimpleTimeZone;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p2, p4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_1
    return-void
.end method

.method public final skipArray()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipArray(Z)V

    return-void
.end method

.method public final skipArray(Z)V
    .locals 6

    .line 2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "illegal str, "

    if-ge v0, v3, :cond_a

    .line 4
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_1

    .line 5
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 6
    :cond_0
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 7
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 v4, 0x22

    if-ne v3, v4, :cond_2

    xor-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/16 v4, 0x5b

    if-ne v3, v4, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/16 v4, 0x7b

    const/16 v5, 0x1a

    if-ne v3, v4, :cond_6

    if-eqz p1, :cond_6

    .line 9
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 10
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_5

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 11
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_1
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 12
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipObject(Z)V

    goto :goto_2

    :cond_6
    const/16 v4, 0x5d

    if-ne v3, v4, :cond_9

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    add-int/lit8 v0, v0, 0x1

    .line 13
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 14
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v0, p1, :cond_8

    .line 15
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 p1, 0x14

    .line 16
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 17
    :cond_8
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 p1, 0x10

    .line 18
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    return-void

    :cond_9
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 19
    :cond_a
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eq v0, p1, :cond_b

    return-void

    .line 20
    :cond_b
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final skipObject()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipObject(Z)V

    return-void
.end method

.method public final skipObject(Z)V
    .locals 6

    .line 2
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "illegal str, "

    if-ge p1, v3, :cond_c

    .line 4
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_1

    .line 5
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    add-int/lit8 v5, v5, -0x1

    if-ge p1, v5, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_2

    .line 6
    :cond_0
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 7
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 v4, 0x22

    if-ne v3, v4, :cond_2

    xor-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_2
    const/16 v4, 0x7b

    if-ne v3, v4, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/16 v4, 0x7d

    if-ne v3, v4, :cond_b

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b

    add-int/lit8 p1, p1, 0x1

    .line 9
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 10
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1a

    if-ne p1, v0, :cond_6

    .line 11
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 p1, 0x14

    .line 12
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 13
    :cond_6
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v0, 0x2c

    const/16 v2, 0x10

    if-ne p1, v0, :cond_8

    .line 14
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 15
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 16
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_7

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_1
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    return-void

    :cond_8
    if-ne p1, v4, :cond_9

    const/16 p1, 0xd

    .line 18
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 19
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    return-void

    :cond_9
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_a

    const/16 p1, 0xf

    .line 20
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 21
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    return-void

    .line 22
    :cond_a
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    return-void

    :cond_b
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 23
    :cond_c
    :goto_3
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    if-ge v0, v1, :cond_e

    .line 24
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_d

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_d

    add-int/lit8 p1, p1, 0x1

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 25
    :cond_e
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p1, v0, :cond_f

    return-void

    .line 26
    :cond_f
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final skipString()V
    .locals 4

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_3

    .line 2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_1

    .line 4
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    return-void

    .line 6
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "unclosed str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final subString(II)Ljava/lang/String;
    .locals 4

    .line 1
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v1, v0

    const/4 v2, 0x0

    if-ge p2, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v3, p1, p2

    invoke-virtual {v1, p1, v3, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 4
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-direct {p1, v0, v2, p2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 5
    :cond_0
    new-array v0, p2, [C

    .line 6
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v1, p1, p2, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final sub_chars(II)[C
    .locals 3

    .line 1
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v0

    if-ge p2, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v2, p1, p2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 3
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    return-object p1

    .line 4
    :cond_0
    new-array v0, p2, [C

    .line 5
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v2, p1, p2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    return-object v0
.end method
