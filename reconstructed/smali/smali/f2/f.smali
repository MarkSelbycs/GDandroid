.class public Lf2/f;
.super Ljava/lang/Object;
.source "JSONConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf2/f;->e:Z

    .line 3
    iput-boolean v0, p0, Lf2/f;->f:Z

    .line 4
    iput-boolean v0, p0, Lf2/f;->g:Z

    return-void
.end method

.method public static b()Lf2/f;
    .locals 2

    new-instance v0, Lf2/f;

    invoke-direct {v0}, Lf2/f;-><init>()V

    return-object v0
.end method


# virtual methods
.method public D(Z)Lf2/f;
    .locals 0

    iput-boolean p1, p0, Lf2/f;->e:Z

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf2/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lf2/f;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lf2/f;->h:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lf2/f;->c:Z

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lf2/f;->b:Z

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lf2/f;->e:Z

    return v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lf2/f;->g:Z

    return v0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lf2/f;->f:Z

    return v0
.end method

.method public y(Z)Lf2/f;
    .locals 0

    iput-boolean p1, p0, Lf2/f;->c:Z

    return-object p0
.end method
