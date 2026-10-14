.class public final Landroidx/work/impl/WorkDatabase$a;
.super Ljava/lang/Object;
.source "WorkDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/WorkDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lm3/g;)V
    .locals 0

    invoke-direct {p0}, Landroidx/work/impl/WorkDatabase$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lf0/h$b;)Lf0/h;
    .locals 0

    invoke-static {p0, p1}, Landroidx/work/impl/WorkDatabase$a;->c(Landroid/content/Context;Lf0/h$b;)Lf0/h;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Landroid/content/Context;Lf0/h$b;)Lf0/h;
    .locals 1

    const-string v0, "$context"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lf0/h$b;->f:Lf0/h$b$b;

    invoke-virtual {v0, p0}, Lf0/h$b$b;->a(Landroid/content/Context;)Lf0/h$b$a;

    move-result-object p0

    .line 2
    iget-object v0, p1, Lf0/h$b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lf0/h$b$a;->d(Ljava/lang/String;)Lf0/h$b$a;

    move-result-object v0

    .line 3
    iget-object p1, p1, Lf0/h$b;->c:Lf0/h$a;

    invoke-virtual {v0, p1}, Lf0/h$b$a;->c(Lf0/h$a;)Lf0/h$b$a;

    move-result-object p1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lf0/h$b$a;->e(Z)Lf0/h$b$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0}, Lf0/h$b$a;->a(Z)Lf0/h$b$a;

    .line 6
    new-instance p1, Lg0/f;

    invoke-direct {p1}, Lg0/f;-><init>()V

    invoke-virtual {p0}, Lf0/h$b$a;->b()Lf0/h$b;

    move-result-object p0

    invoke-virtual {p1, p0}, Lg0/f;->a(Lf0/h$b;)Lf0/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;Ljava/util/concurrent/Executor;Lq0/b;Z)Landroidx/work/impl/WorkDatabase;
    .locals 4

    const-class v0, Landroidx/work/impl/WorkDatabase;

    const-string v1, "context"

    invoke-static {p1, v1}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "queryExecutor"

    invoke-static {p2, v1}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "clock"

    invoke-static {p3, v1}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 1
    invoke-static {p1, v0}, Landroidx/room/h0;->c(Landroid/content/Context;Ljava/lang/Class;)Landroidx/room/i0$a;

    move-result-object p4

    .line 2
    invoke-virtual {p4}, Landroidx/room/i0$a;->c()Landroidx/room/i0$a;

    move-result-object p4

    goto :goto_0

    :cond_0
    const-string p4, "androidx.work.workdb"

    .line 3
    invoke-static {p1, v0, p4}, Landroidx/room/h0;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/i0$a;

    move-result-object p4

    .line 4
    new-instance v0, Lr0/d0;

    invoke-direct {v0, p1}, Lr0/d0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p4, v0}, Landroidx/room/i0$a;->f(Lf0/h$c;)Landroidx/room/i0$a;

    move-result-object p4

    .line 5
    :goto_0
    invoke-virtual {p4, p2}, Landroidx/room/i0$a;->g(Ljava/util/concurrent/Executor;)Landroidx/room/i0$a;

    move-result-object p2

    .line 6
    new-instance p4, Lr0/d;

    invoke-direct {p4, p3}, Lr0/d;-><init>(Lq0/b;)V

    invoke-virtual {p2, p4}, Landroidx/room/i0$a;->a(Landroidx/room/i0$b;)Landroidx/room/i0$a;

    move-result-object p2

    const/4 p3, 0x1

    new-array p4, p3, [Ld0/b;

    .line 7
    sget-object v0, Lr0/k;->c:Lr0/k;

    const/4 v1, 0x0

    aput-object v0, p4, v1

    invoke-virtual {p2, p4}, Landroidx/room/i0$a;->b([Ld0/b;)Landroidx/room/i0$a;

    move-result-object p2

    new-array p4, p3, [Ld0/b;

    .line 8
    new-instance v0, Lr0/v;

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-direct {v0, p1, v2, v3}, Lr0/v;-><init>(Landroid/content/Context;II)V

    aput-object v0, p4, v1

    invoke-virtual {p2, p4}, Landroidx/room/i0$a;->b([Ld0/b;)Landroidx/room/i0$a;

    move-result-object p2

    new-array p4, p3, [Ld0/b;

    .line 9
    sget-object v0, Lr0/l;->c:Lr0/l;

    aput-object v0, p4, v1

    invoke-virtual {p2, p4}, Landroidx/room/i0$a;->b([Ld0/b;)Landroidx/room/i0$a;

    move-result-object p2

    new-array p4, p3, [Ld0/b;

    .line 10
    sget-object v0, Lr0/m;->c:Lr0/m;

    aput-object v0, p4, v1

    invoke-virtual {p2, p4}, Landroidx/room/i0$a;->b([Ld0/b;)Landroidx/room/i0$a;

    move-result-object p2

    new-array p4, p3, [Ld0/b;

    .line 11
    new-instance v0, Lr0/v;

    const/4 v2, 0x5

    const/4 v3, 0x6

    invoke-direct {v0, p1, v2, v3}, Lr0/v;-><init>(Landroid/content/Context;II)V

    aput-object v0, p4, v1

    invoke-virtual {p2, p4}, Landroidx/room/i0$a;->b([Ld0/b;)Landroidx/room/i0$a;

    move-result-object p2

    new-array p4, p3, [Ld0/b;

    .line 12
    sget-object v0, Lr0/n;->c:Lr0/n;

    aput-object v0, p4, v1

    invoke-virtual {p2, p4}, Landroidx/room/i0$a;->b([Ld0/b;)Landroidx/room/i0$a;

    move-result-object p2

    new-array p4, p3, [Ld0/b;

    .line 13
    sget-object v0, Lr0/o;->c:Lr0/o;

    aput-object v0, p4, v1

    invoke-virtual {p2, p4}, Landroidx/room/i0$a;->b([Ld0/b;)Landroidx/room/i0$a;

    move-result-object p2

    new-array p4, p3, [Ld0/b;

    .line 14
    sget-object v0, Lr0/p;->c:Lr0/p;

    aput-object v0, p4, v1

    invoke-virtual {p2, p4}, Landroidx/room/i0$a;->b([Ld0/b;)Landroidx/room/i0$a;

    move-result-object p2

    new-array p4, p3, [Ld0/b;

    .line 15
    new-instance v0, Lr0/q0;

    invoke-direct {v0, p1}, Lr0/q0;-><init>(Landroid/content/Context;)V

    aput-object v0, p4, v1

    invoke-virtual {p2, p4}, Landroidx/room/i0$a;->b([Ld0/b;)Landroidx/room/i0$a;

    move-result-object p2

    new-array p4, p3, [Ld0/b;

    .line 16
    new-instance v0, Lr0/v;

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, p1, v2, v3}, Lr0/v;-><init>(Landroid/content/Context;II)V

    aput-object v0, p4, v1

    invoke-virtual {p2, p4}, Landroidx/room/i0$a;->b([Ld0/b;)Landroidx/room/i0$a;

    move-result-object p1

    new-array p2, p3, [Ld0/b;

    .line 17
    sget-object p4, Lr0/g;->c:Lr0/g;

    aput-object p4, p2, v1

    invoke-virtual {p1, p2}, Landroidx/room/i0$a;->b([Ld0/b;)Landroidx/room/i0$a;

    move-result-object p1

    new-array p2, p3, [Ld0/b;

    .line 18
    sget-object p4, Lr0/h;->c:Lr0/h;

    aput-object p4, p2, v1

    invoke-virtual {p1, p2}, Landroidx/room/i0$a;->b([Ld0/b;)Landroidx/room/i0$a;

    move-result-object p1

    new-array p2, p3, [Ld0/b;

    .line 19
    sget-object p4, Lr0/i;->c:Lr0/i;

    aput-object p4, p2, v1

    invoke-virtual {p1, p2}, Landroidx/room/i0$a;->b([Ld0/b;)Landroidx/room/i0$a;

    move-result-object p1

    new-array p2, p3, [Ld0/b;

    .line 20
    sget-object p3, Lr0/j;->c:Lr0/j;

    aput-object p3, p2, v1

    invoke-virtual {p1, p2}, Landroidx/room/i0$a;->b([Ld0/b;)Landroidx/room/i0$a;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroidx/room/i0$a;->e()Landroidx/room/i0$a;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroidx/room/i0$a;->d()Landroidx/room/i0;

    move-result-object p1

    check-cast p1, Landroidx/work/impl/WorkDatabase;

    return-object p1
.end method
