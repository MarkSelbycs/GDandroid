.class public final Ly3/y;
.super Lt3/r1;
.source "MainDispatchers.kt"

# interfaces
.implements Lt3/l0;


# instance fields
.field public final c:Ljava/lang/Throwable;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lt3/r1;-><init>()V

    .line 2
    iput-object p1, p0, Ly3/y;->c:Ljava/lang/Throwable;

    .line 3
    iput-object p2, p0, Ly3/y;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final C()Ljava/lang/Void;
    .locals 4

    .line 1
    iget-object v0, p0, Ly3/y;->c:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Module with the Main dispatcher had failed to initialize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly3/y;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v2, p0, Ly3/y;->c:Ljava/lang/Throwable;

    invoke-direct {v1, v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 4
    :cond_2
    invoke-static {}, Ly3/x;->d()Ljava/lang/Void;

    new-instance v0, La3/c;

    invoke-direct {v0}, La3/c;-><init>()V

    throw v0
.end method

.method public bridge synthetic i(Ld3/g;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ly3/y;->z(Ld3/g;Ljava/lang/Runnable;)Ljava/lang/Void;

    return-void
.end method

.method public n(Ld3/g;)Z
    .locals 0

    invoke-virtual {p0}, Ly3/y;->C()Ljava/lang/Void;

    new-instance p1, La3/c;

    invoke-direct {p1}, La3/c;-><init>()V

    throw p1
.end method

.method public r()Lt3/r1;
    .locals 0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dispatchers.Main[missing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly3/y;->c:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ly3/y;->c:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z(Ld3/g;Ljava/lang/Runnable;)Ljava/lang/Void;
    .locals 0

    invoke-virtual {p0}, Ly3/y;->C()Ljava/lang/Void;

    new-instance p1, La3/c;

    invoke-direct {p1}, La3/c;-><init>()V

    throw p1
.end method
