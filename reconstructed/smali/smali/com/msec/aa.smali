.class public Lcom/msec/aa;
.super Landroid/hardware/ICameraServiceListener$Stub;


# static fields
.field private static b:Lcom/msec/aa;


# instance fields
.field private a:Lcom/msec/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/ICameraServiceListener$Stub;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/msec/aa;->a:Lcom/msec/y;

    invoke-interface {p1, p2}, Lcom/msec/y;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/msec/aa;->a:Lcom/msec/y;

    invoke-interface {p1, p2}, Lcom/msec/y;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static getInstance(Lcom/msec/y;)Lcom/msec/aa;
    .locals 1

    sget-object v0, Lcom/msec/aa;->b:Lcom/msec/aa;

    if-nez v0, :cond_0

    new-instance v0, Lcom/msec/aa;

    invoke-direct {v0}, Lcom/msec/aa;-><init>()V

    sput-object v0, Lcom/msec/aa;->b:Lcom/msec/aa;

    iput-object p0, v0, Lcom/msec/aa;->a:Lcom/msec/y;

    :cond_0
    sget-object p0, Lcom/msec/aa;->b:Lcom/msec/aa;

    return-object p0
.end method


# virtual methods
.method public onCameraAccessPrioritiesChanged()V
    .locals 0

    return-void
.end method

.method public onCameraClosed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPhysicalCameraStatusChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/4 p1, 0x3

    aput-object p3, v0, p1

    const/16 p1, 0x622

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onStatusChanged(II)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const/16 p1, 0x621

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onStatusChanged(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/16 p1, 0x620

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onTorchStatusChanged(ILjava/lang/String;)V
    .locals 0

    return-void
.end method
