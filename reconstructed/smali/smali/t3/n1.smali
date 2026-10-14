.class public abstract Lt3/n1;
.super Lt3/w;
.source "JobSupport.kt"

# interfaces
.implements Lt3/r0;
.implements Lt3/d1;


# instance fields
.field public d:Lt3/o1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lt3/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final A()Lt3/o1;
    .locals 1

    iget-object v0, p0, Lt3/n1;->d:Lt3/o1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "job"

    invoke-static {v0}, Lm3/k;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final B(Lt3/o1;)V
    .locals 0

    iput-object p1, p0, Lt3/n1;->d:Lt3/o1;

    return-void
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lt3/n1;->A()Lt3/o1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lt3/o1;->x0(Lt3/n1;)V

    return-void
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i()Lt3/s1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lt3/i0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lt3/i0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[job@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt3/n1;->A()Lt3/o1;

    move-result-object v1

    invoke-static {v1}, Lt3/i0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
