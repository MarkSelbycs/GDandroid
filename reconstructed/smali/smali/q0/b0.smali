.class public abstract Lq0/b0;
.super Ljava/lang/Object;
.source "WorkRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/b0$a;,
        Lq0/b0$b;
    }
.end annotation


# static fields
.field public static final d:Lq0/b0$b;


# instance fields
.field public final a:Ljava/util/UUID;

.field public final b:Lz0/u;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lq0/b0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq0/b0$b;-><init>(Lm3/g;)V

    sput-object v0, Lq0/b0;->d:Lq0/b0$b;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lz0/u;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lz0/u;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workSpec"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p3, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq0/b0;->a:Ljava/util/UUID;

    .line 3
    iput-object p2, p0, Lq0/b0;->b:Lz0/u;

    .line 4
    iput-object p3, p0, Lq0/b0;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lq0/b0;->a:Ljava/util/UUID;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lq0/b0;->a()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id.toString()"

    invoke-static {v0, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lq0/b0;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final d()Lz0/u;
    .locals 1

    iget-object v0, p0, Lq0/b0;->b:Lz0/u;

    return-object v0
.end method
