.class public Lcom/msec/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/msec/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msec/l$c;,
        Lcom/msec/l$b;,
        Lcom/msec/l$a;
    }
.end annotation


# static fields
.field private static d:[F = null

.field private static e:Z = false

.field private static f:D = 3.141592653589793


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private g:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/msec/l$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    sput-object v0, Lcom/msec/l;->d:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/msec/l;->a:Landroid/hardware/SensorManager;

    const/16 v0, 0x64a

    invoke-static {v0}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/msec/l;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/msec/l;->c:Ljava/lang/String;

    new-instance v0, Lcom/msec/l$1;

    invoke-direct {v0, p0}, Lcom/msec/l$1;-><init>(Lcom/msec/l;)V

    iput-object v0, p0, Lcom/msec/l;->g:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private a(Lcom/msec/l$a;[F)V
    .locals 9

    check-cast p1, Lcom/msec/l$c;

    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget v3, p2, v2

    const/4 v4, 0x2

    aget p2, p2, v4

    iget-boolean v4, p1, Lcom/msec/l$c;->n:Z

    if-eqz v4, :cond_0

    iput-boolean v0, p1, Lcom/msec/l$c;->n:Z

    iput v1, p1, Lcom/msec/l$c;->e:F

    iput v3, p1, Lcom/msec/l$c;->f:F

    iput p2, p1, Lcom/msec/l$c;->g:F

    :cond_0
    iget v0, p1, Lcom/msec/l$c;->e:F

    sub-float v4, v0, v1

    sub-float/2addr v0, v1

    mul-float/2addr v4, v0

    iget v0, p1, Lcom/msec/l$c;->f:F

    sub-float v5, v0, v3

    sub-float/2addr v0, v3

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iget v0, p1, Lcom/msec/l$c;->g:F

    sub-float v5, v0, p2

    sub-float/2addr v0, p2

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    iget v0, p1, Lcom/msec/l$c;->l:F

    float-to-double v7, v0

    cmpl-double v0, v5, v7

    if-lez v0, :cond_1

    iget v0, p1, Lcom/msec/l$c;->m:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/msec/l$c;->m:I

    :cond_1
    iget v0, p1, Lcom/msec/l$c;->k:F

    cmpl-float v0, v4, v0

    if-lez v0, :cond_2

    iput v4, p1, Lcom/msec/l$c;->k:F

    iget v0, p1, Lcom/msec/l$c;->e:F

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/msec/l$c;->h:F

    iget v0, p1, Lcom/msec/l$c;->f:F

    sub-float/2addr v0, v3

    iput v0, p1, Lcom/msec/l$c;->i:F

    iget v0, p1, Lcom/msec/l$c;->g:F

    sub-float/2addr v0, p2

    iput v0, p1, Lcom/msec/l$c;->j:F

    :cond_2
    iput v1, p1, Lcom/msec/l$c;->e:F

    iput v3, p1, Lcom/msec/l$c;->f:F

    iput p2, p1, Lcom/msec/l$c;->g:F

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 10

    sget-boolean v0, Lcom/msec/l;->e:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    sget-object v2, Lcom/msec/l;->d:[F

    const/4 v3, 0x2

    aget v3, v2, v3

    float-to-double v3, v3

    const/4 v5, 0x0

    aget v6, v2, v5

    aget v5, v2, v5

    mul-float/2addr v6, v5

    const/4 v5, 0x1

    aget v7, v2, v5

    aget v2, v2, v5

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    float-to-double v5, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    sget-wide v7, Lcom/msec/l;->f:D

    div-double/2addr v5, v7

    const-wide v7, -0x3fa9800000000000L    # -90.0

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 v1, 0x696

    invoke-static {v1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 v1, 0x695

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

    const/16 p1, 0x694

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    if-eqz p1, :cond_c

    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_c

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iget-object v2, p0, Lcom/msec/l;->g:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/msec/l$a;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    if-ne v3, v0, :cond_1

    iget-object v2, p0, Lcom/msec/l;->g:Ljava/util/LinkedHashMap;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/msec/l$a;

    :cond_1
    if-nez v2, :cond_2

    return-void

    :cond_2
    const/4 v4, 0x5

    const/4 v5, 0x0

    if-eq v4, v0, :cond_a

    const/16 v4, 0xd

    if-eq v4, v0, :cond_a

    const/4 v4, 0x6

    if-eq v4, v0, :cond_a

    const/16 v4, 0x8

    if-eq v4, v0, :cond_a

    const/16 v4, 0xc

    if-ne v4, v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 p1, 0x13

    const/4 v4, 0x0

    if-ne p1, v0, :cond_5

    move-object p1, v2

    check-cast p1, Lcom/msec/l$b;

    const-wide/16 v6, 0x0

    iget-wide v8, p1, Lcom/msec/l$b;->e:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_4

    aget v0, v1, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    aget v0, v1, v5

    float-to-long v0, v0

    iput-wide v0, p1, Lcom/msec/l$b;->e:J

    goto :goto_3

    :cond_4
    aget v0, v1, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_b

    aget v0, v1, v5

    long-to-float v4, v8

    cmpl-float v0, v0, v4

    if-lez v0, :cond_b

    aget v0, v1, v5

    float-to-long v0, v0

    sub-long/2addr v0, v8

    long-to-float v0, v0

    iput v0, p1, Lcom/msec/l$a;->c:F

    goto :goto_3

    :cond_5
    move p1, v5

    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_7

    aget v6, v1, v5

    cmpl-float v6, v6, v4

    if-nez v6, :cond_6

    add-int/lit8 p1, p1, 0x1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    array-length v4, v1

    const/4 v5, 0x3

    if-lt v4, v5, :cond_9

    if-lt p1, v5, :cond_8

    const/4 p1, 0x4

    if-eq v0, p1, :cond_8

    goto :goto_1

    :cond_8
    invoke-direct {p0, v2, v1}, Lcom/msec/l;->a(Lcom/msec/l$a;[F)V

    goto :goto_3

    :cond_9
    :goto_1
    return-void

    :cond_a
    :goto_2
    aget v0, v1, v5

    iput v0, v2, Lcom/msec/l$a;->c:F

    iget-object v0, p0, Lcom/msec/l;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_b

    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_b
    :goto_3
    iput-boolean v3, v2, Lcom/msec/l$a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_c
    :goto_4
    return-void
.end method
