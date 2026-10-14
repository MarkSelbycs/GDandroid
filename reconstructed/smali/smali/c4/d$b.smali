.class public final Lc4/d$b;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lc4/d$b;->c:I

    .line 3
    iput v0, p0, Lc4/d$b;->d:I

    .line 4
    iput v0, p0, Lc4/d$b;->e:I

    return-void
.end method


# virtual methods
.method public a()Lc4/d;
    .locals 2

    new-instance v0, Lc4/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc4/d;-><init>(Lc4/d$b;Lc4/d$a;)V

    return-object v0
.end method

.method public b(ILjava/util/concurrent/TimeUnit;)Lc4/d$b;
    .locals 2

    if-ltz p1, :cond_1

    int-to-long v0, p1

    .line 1
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int p1, p1

    .line 2
    :goto_0
    iput p1, p0, Lc4/d$b;->d:I

    return-object p0

    .line 3
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxStale < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public c()Lc4/d$b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc4/d$b;->a:Z

    return-object p0
.end method

.method public d()Lc4/d$b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc4/d$b;->f:Z

    return-object p0
.end method
