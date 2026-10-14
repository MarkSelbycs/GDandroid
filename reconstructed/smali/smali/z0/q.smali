.class public final Lz0/q;
.super Ljava/lang/Object;
.source "WorkProgress.kt"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroidx/work/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/work/b;)V
    .locals 1

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progress"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lz0/q;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lz0/q;->b:Landroidx/work/b;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/work/b;
    .locals 1

    iget-object v0, p0, Lz0/q;->b:Landroidx/work/b;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz0/q;->a:Ljava/lang/String;

    return-object v0
.end method
