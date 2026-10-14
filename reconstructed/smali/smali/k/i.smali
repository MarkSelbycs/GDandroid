.class public Lk/i;
.super Ljava/lang/Object;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/i$a;
    }
.end annotation


# static fields
.field public static k:I = 0x1


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:F

.field public f:[F

.field public g:Lk/i$a;

.field public h:[Lk/b;

.field public i:I

.field public j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lk/i$a;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    .line 2
    iput p2, p0, Lk/i;->b:I

    .line 3
    iput p2, p0, Lk/i;->c:I

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lk/i;->d:I

    const/4 v0, 0x7

    new-array v0, v0, [F

    .line 5
    iput-object v0, p0, Lk/i;->f:[F

    const/16 v0, 0x8

    new-array v0, v0, [Lk/b;

    .line 6
    iput-object v0, p0, Lk/i;->h:[Lk/b;

    .line 7
    iput p2, p0, Lk/i;->i:I

    .line 8
    iput p2, p0, Lk/i;->j:I

    .line 9
    iput-object p1, p0, Lk/i;->g:Lk/i$a;

    return-void
.end method

.method public static b()V
    .locals 3

    sget v0, Lk/i;->k:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lk/i;->k:I

    return-void
.end method


# virtual methods
.method public final a(Lk/b;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lk/i;->i:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lk/i;->h:[Lk/b;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lk/i;->h:[Lk/b;

    array-length v2, v0

    if-lt v1, v2, :cond_2

    .line 4
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/b;

    iput-object v0, p0, Lk/i;->h:[Lk/b;

    .line 5
    :cond_2
    iget-object v0, p0, Lk/i;->h:[Lk/b;

    iget v1, p0, Lk/i;->i:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 6
    iput v1, p0, Lk/i;->i:I

    return-void
.end method

.method public final c(Lk/b;)V
    .locals 5

    .line 1
    iget v0, p0, Lk/i;->i:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    iget-object v3, p0, Lk/i;->h:[Lk/b;

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_1

    :goto_1
    sub-int p1, v0, v2

    add-int/lit8 p1, p1, -0x1

    if-ge v1, p1, :cond_0

    .line 3
    iget-object p1, p0, Lk/i;->h:[Lk/b;

    add-int v3, v2, v1

    add-int/lit8 v4, v3, 0x1

    aget-object v4, p1, v4

    aput-object v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4
    :cond_0
    iget p1, p0, Lk/i;->i:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lk/i;->i:I

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lk/i;->a:Ljava/lang/String;

    .line 2
    sget-object v0, Lk/i$a;->e:Lk/i$a;

    iput-object v0, p0, Lk/i;->g:Lk/i$a;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lk/i;->d:I

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lk/i;->b:I

    .line 5
    iput v1, p0, Lk/i;->c:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lk/i;->e:F

    .line 7
    iput v0, p0, Lk/i;->i:I

    .line 8
    iput v0, p0, Lk/i;->j:I

    return-void
.end method

.method public e(Lk/i$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lk/i;->g:Lk/i$a;

    return-void
.end method

.method public final f(Lk/b;)V
    .locals 5

    .line 1
    iget v0, p0, Lk/i;->i:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    iget-object v3, p0, Lk/i;->h:[Lk/b;

    aget-object v4, v3, v2

    iget-object v4, v4, Lk/b;->d:Lk/a;

    aget-object v3, v3, v2

    invoke-virtual {v4, v3, p1, v1}, Lk/a;->n(Lk/b;Lk/b;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iput v1, p0, Lk/i;->i:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
