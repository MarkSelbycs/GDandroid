.class public final Lw0/e;
.super Lw0/c;
.source "ContraintControllers.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw0/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw0/c<",
        "Lv0/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lw0/e$a;

.field public static final d:Ljava/lang/String;


# instance fields
.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lw0/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw0/e$a;-><init>(Lm3/g;)V

    sput-object v0, Lw0/e;->c:Lw0/e$a;

    const-string v0, "NetworkMeteredCtrlr"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"NetworkMeteredCtrlr\")"

    invoke-static {v0, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lw0/e;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lx0/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx0/g<",
            "Lv0/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lw0/c;-><init>(Lx0/g;)V

    const/4 p1, 0x7

    .line 2
    iput p1, p0, Lw0/e;->b:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lw0/e;->b:I

    return v0
.end method

.method public c(Lz0/u;)Z
    .locals 1

    const-string v0, "workSpec"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lz0/u;->j:Lq0/d;

    invoke-virtual {p1}, Lq0/d;->d()Lq0/o;

    move-result-object p1

    sget-object v0, Lq0/o;->e:Lq0/o;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lv0/c;

    invoke-virtual {p0, p1}, Lw0/e;->g(Lv0/c;)Z

    move-result p1

    return p1
.end method

.method public g(Lv0/c;)Z
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lv0/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lv0/c;->b()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
