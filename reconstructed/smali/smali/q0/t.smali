.class public final Lq0/t;
.super Lq0/b0;
.source "PeriodicWorkRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/t$a;,
        Lq0/t$b;
    }
.end annotation


# static fields
.field public static final e:Lq0/t$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq0/t$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq0/t$b;-><init>(Lm3/g;)V

    sput-object v0, Lq0/t;->e:Lq0/t$b;

    return-void
.end method

.method public constructor <init>(Lq0/t$a;)V
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
