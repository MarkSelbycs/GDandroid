.class public Landroidx/core/app/d;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field public final a:Landroid/os/Bundle;

.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public final c:[Landroidx/core/app/j;

.field public d:Z

.field public e:Z

.field public final f:I

.field public final g:Z

.field public h:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public i:Ljava/lang/CharSequence;

.field public j:Landroid/app/PendingIntent;

.field public k:Z


# virtual methods
.method public a()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/d;->j:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/core/app/d;->d:Z

    return v0
.end method

.method public c()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/d;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public d()Landroidx/core/graphics/drawable/IconCompat;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/core/app/d;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/core/app/d;->h:I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, ""

    .line 2
    invoke-static {v1, v2, v0}, Landroidx/core/graphics/drawable/IconCompat;->f(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/d;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/core/app/d;->b:Landroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method

.method public e()[Landroidx/core/app/j;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/d;->c:[Landroidx/core/app/j;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Landroidx/core/app/d;->f:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/core/app/d;->e:Z

    return v0
.end method

.method public h()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/d;->i:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/core/app/d;->k:Z

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/core/app/d;->g:Z

    return v0
.end method
