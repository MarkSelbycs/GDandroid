.class public final Lw/a0$b;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lw/a0$f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Lw/a0$e;

    invoke-direct {v0}, Lw/a0$e;-><init>()V

    iput-object v0, p0, Lw/a0$b;->a:Lw/a0$f;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, Lw/a0$d;

    invoke-direct {v0}, Lw/a0$d;-><init>()V

    iput-object v0, p0, Lw/a0$b;->a:Lw/a0$f;

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lw/a0$c;

    invoke-direct {v0}, Lw/a0$c;-><init>()V

    iput-object v0, p0, Lw/a0$b;->a:Lw/a0$f;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lw/a0;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 8
    new-instance v0, Lw/a0$e;

    invoke-direct {v0, p1}, Lw/a0$e;-><init>(Lw/a0;)V

    iput-object v0, p0, Lw/a0$b;->a:Lw/a0$f;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 9
    new-instance v0, Lw/a0$d;

    invoke-direct {v0, p1}, Lw/a0$d;-><init>(Lw/a0;)V

    iput-object v0, p0, Lw/a0$b;->a:Lw/a0$f;

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Lw/a0$c;

    invoke-direct {v0, p1}, Lw/a0$c;-><init>(Lw/a0;)V

    iput-object v0, p0, Lw/a0$b;->a:Lw/a0$f;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lw/a0;
    .locals 1

    iget-object v0, p0, Lw/a0$b;->a:Lw/a0$f;

    invoke-virtual {v0}, Lw/a0$f;->b()Lw/a0;

    move-result-object v0

    return-object v0
.end method

.method public b(Lo/b;)Lw/a0$b;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lw/a0$b;->a:Lw/a0$f;

    invoke-virtual {v0, p1}, Lw/a0$f;->d(Lo/b;)V

    return-object p0
.end method

.method public c(Lo/b;)Lw/a0$b;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lw/a0$b;->a:Lw/a0$f;

    invoke-virtual {v0, p1}, Lw/a0$f;->f(Lo/b;)V

    return-object p0
.end method
