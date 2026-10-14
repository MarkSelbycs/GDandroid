.class public Lcom/msec/cf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msec/cf$a;,
        Lcom/msec/cf$b;,
        Lcom/msec/cf$c;
    }
.end annotation


# static fields
.field public static a:I = 0x0

.field private static b:I = 0x3e8

.field private static c:I = 0x0

.field private static d:I = 0x64

.field private static e:I

.field private static f:Z

.field private static g:Z

.field private static h:[Lcom/msec/cf$c;

.field private static i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Landroid/app/Activity;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x3e8

    mul-int/lit8 v0, v0, 0x3

    sput v0, Lcom/msec/cf;->c:I

    new-array v0, v0, [Lcom/msec/cf$c;

    sput-object v0, Lcom/msec/cf;->h:[Lcom/msec/cf$c;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/msec/cf;->i:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/msec/cf;->j:Landroid/app/Activity;

    const/4 v0, 0x0

    sput v0, Lcom/msec/cf;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 p0, 0x6cf

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static a()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/msec/cf$1;

    invoke-direct {v1}, Lcom/msec/cf$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 0

    sput-object p0, Lcom/msec/cf;->j:Landroid/app/Activity;

    return-void
.end method

.method public static declared-synchronized a(Landroid/view/MotionEvent;)V
    .locals 5

    const-class v0, Lcom/msec/cf;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/msec/cf;->e:I

    sget v2, Lcom/msec/cf;->c:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    sput-boolean v3, Lcom/msec/cf;->f:Z

    :cond_0
    sget-object v2, Lcom/msec/cf;->h:[Lcom/msec/cf$c;

    new-instance v4, Lcom/msec/cf$c;

    invoke-direct {v4, p0}, Lcom/msec/cf$c;-><init>(Landroid/view/MotionEvent;)V

    aput-object v4, v2, v1

    sget p0, Lcom/msec/cf;->e:I

    add-int/2addr p0, v3

    sget v1, Lcom/msec/cf;->c:I

    rem-int/2addr p0, v1

    sput p0, Lcom/msec/cf;->e:I

    sput-boolean v3, Lcom/msec/cf;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 p0, 0x6ce

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 p0, 0x6cd

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static b()V
    .locals 3

    sget-object v0, Lcom/msec/cf;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x6cc

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d()Z
    .locals 1

    sget-boolean v0, Lcom/msec/cf;->g:Z

    return v0
.end method

.method public static synthetic e()[Lcom/msec/cf$c;
    .locals 2

    sget-object v0, Lcom/msec/cf;->h:[Lcom/msec/cf$c;

    return-object v0
.end method

.method public static synthetic f()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/msec/cf;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g()I
    .locals 2

    sget v0, Lcom/msec/cf;->b:I

    return v0
.end method

.method private static h()I
    .locals 3

    sget-boolean v0, Lcom/msec/cf;->f:Z

    if-nez v0, :cond_0

    sget v0, Lcom/msec/cf;->e:I

    sget v1, Lcom/msec/cf;->b:I

    if-gt v0, v1, :cond_0

    return v0

    :cond_0
    sget v0, Lcom/msec/cf;->b:I

    return v0
.end method

.method private static i()Ljava/lang/String;
    .locals 8

    sget-object v0, Lcom/msec/cf;->h:[Lcom/msec/cf$c;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/16 v0, 0x2d3

    invoke-static {v0}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sput-boolean v1, Lcom/msec/cf;->g:Z

    new-instance v0, Lcom/msec/cf$a;

    invoke-direct {v0}, Lcom/msec/cf$a;-><init>()V

    new-instance v1, Lcom/msec/cf$b;

    invoke-direct {v1}, Lcom/msec/cf$b;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/msec/cf;->h()I

    move-result v2

    invoke-static {v2}, Lcom/msec/cf;->a(I)I

    move-result v3

    :goto_0
    if-lez v2, :cond_1

    sget-object v4, Lcom/msec/cf;->h:[Lcom/msec/cf$c;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Lcom/msec/cf$a;->a(Lcom/msec/cf$c;)V

    iget v5, v4, Lcom/msec/cf$c;->b:F

    iget v4, v4, Lcom/msec/cf$c;->c:F

    invoke-virtual {v1, v5, v4}, Lcom/msec/cf$b;->a(FF)V

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, 0x1

    sget v4, Lcom/msec/cf;->c:I

    rem-int/2addr v3, v4

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/msec/cf$a;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x64a

    invoke-static {v3}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/msec/cf$a;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/msec/cf$a;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/msec/cf$b;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/msec/cf$b;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/msec/cf$a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2d2

    invoke-static {v4}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/msec/cf$b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/msec/cf$a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/msec/cf;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const-string v0, ""

    return-object v0
.end method
