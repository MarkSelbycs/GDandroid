.class public final Lq0/q;
.super Lq0/b0;
.source "OneTimeWorkRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/q$a;,
        Lq0/q$b;
    }
.end annotation


# static fields
.field public static final e:Lq0/q$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lq0/q$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq0/q$b;-><init>(Lm3/g;)V

    sput-object v0, Lq0/q;->e:Lq0/q$b;

    return-void
.end method

.method public constructor <init>(Lq0/q$a;)V
    .locals 2

    const-string v0, "builder"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lq0/b0$a;->d()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1}, Lq0/b0$a;->g()Lz0/u;

    move-result-object v1

    invoke-virtual {p1}, Lq0/b0$a;->e()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lq0/b0;-><init>(Ljava/util/UUID;Lz0/u;Ljava/util/Set;)V

    return-void
.end method

.method public static final e(Ljava/lang/Class;)Lq0/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/c;",
            ">;)",
            "Lq0/q;"
        }
    .end annotation

    sget-object v0, Lq0/q;->e:Lq0/q$b;

    invoke-virtual {v0, p0}, Lq0/q$b;->a(Ljava/lang/Class;)Lq0/q;

    move-result-object p0

    return-object p0
.end method
