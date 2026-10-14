.class public final Lq0/q$b;
.super Ljava/lang/Object;
.source "OneTimeWorkRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lm3/g;)V
    .locals 0

    invoke-direct {p0}, Lq0/q$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lq0/q;
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

    const-string v0, "workerClass"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lq0/q$a;

    invoke-direct {v0, p1}, Lq0/q$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0}, Lq0/b0$a;->a()Lq0/b0;

    move-result-object p1

    check-cast p1, Lq0/q;

    return-object p1
.end method
