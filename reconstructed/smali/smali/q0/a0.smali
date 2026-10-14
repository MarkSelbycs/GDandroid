.class public final Lq0/a0;
.super Ljava/lang/Object;
.source "WorkQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/a0$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lq0/y$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq0/a0$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lq0/a0$a;->a:Ljava/util/List;

    iput-object v0, p0, Lq0/a0;->a:Ljava/util/List;

    .line 3
    iget-object v0, p1, Lq0/a0$a;->b:Ljava/util/List;

    iput-object v0, p0, Lq0/a0;->b:Ljava/util/List;

    .line 4
    iget-object v0, p1, Lq0/a0$a;->c:Ljava/util/List;

    iput-object v0, p0, Lq0/a0;->c:Ljava/util/List;

    .line 5
    iget-object p1, p1, Lq0/a0$a;->d:Ljava/util/List;

    iput-object p1, p0, Lq0/a0;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lq0/a0;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lq0/y$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lq0/a0;->d:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lq0/a0;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lq0/a0;->b:Ljava/util/List;

    return-object v0
.end method
