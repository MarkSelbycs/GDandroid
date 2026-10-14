.class public final Lt3/p1;
.super Ljava/lang/Object;
.source "JobSupport.kt"


# static fields
.field public static final a:Ly3/h0;

.field public static final b:Ly3/h0;

.field public static final c:Ly3/h0;

.field public static final d:Ly3/h0;

.field public static final e:Ly3/h0;

.field public static final f:Lt3/s0;

.field public static final g:Lt3/s0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ly3/h0;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lt3/p1;->a:Ly3/h0;

    .line 2
    new-instance v0, Ly3/h0;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lt3/p1;->b:Ly3/h0;

    .line 3
    new-instance v0, Ly3/h0;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lt3/p1;->c:Ly3/h0;

    .line 4
    new-instance v0, Ly3/h0;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lt3/p1;->d:Ly3/h0;

    .line 5
    new-instance v0, Ly3/h0;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lt3/p1;->e:Ly3/h0;

    .line 6
    new-instance v0, Lt3/s0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt3/s0;-><init>(Z)V

    sput-object v0, Lt3/p1;->f:Lt3/s0;

    .line 7
    new-instance v0, Lt3/s0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lt3/s0;-><init>(Z)V

    sput-object v0, Lt3/p1;->g:Lt3/s0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ly3/h0;
    .locals 2

    sget-object v0, Lt3/p1;->a:Ly3/h0;

    return-object v0
.end method

.method public static final synthetic b()Ly3/h0;
    .locals 3

    sget-object v0, Lt3/p1;->c:Ly3/h0;

    return-object v0
.end method

.method public static final synthetic c()Lt3/s0;
    .locals 2

    sget-object v0, Lt3/p1;->g:Lt3/s0;

    return-object v0
.end method

.method public static final synthetic d()Lt3/s0;
    .locals 1

    sget-object v0, Lt3/p1;->f:Lt3/s0;

    return-object v0
.end method

.method public static final synthetic e()Ly3/h0;
    .locals 3

    sget-object v0, Lt3/p1;->e:Ly3/h0;

    return-object v0
.end method

.method public static final synthetic f()Ly3/h0;
    .locals 1

    sget-object v0, Lt3/p1;->d:Ly3/h0;

    return-object v0
.end method

.method public static final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lt3/d1;

    if-eqz v0, :cond_0

    new-instance v0, Lt3/e1;

    check-cast p0, Lt3/d1;

    invoke-direct {v0, p0}, Lt3/e1;-><init>(Lt3/d1;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lt3/e1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lt3/e1;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Lt3/e1;->a:Lt3/d1;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method
