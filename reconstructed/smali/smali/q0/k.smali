.class public abstract Lq0/k;
.super Ljava/lang/Object;
.source "InputMergerFactory.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Lq0/j;
.end method

.method public final b(Ljava/lang/String;)Lq0/j;
    .locals 1

    const-string v0, "className"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lq0/k;->a(Ljava/lang/String;)Lq0/j;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lq0/l;->a(Ljava/lang/String;)Lq0/j;

    move-result-object v0

    :cond_0
    return-object v0
.end method
