.class public final La4/m;
.super Lt3/b0;
.source "Dispatcher.kt"


# static fields
.field public static final c:La4/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, La4/m;

    invoke-direct {v0}, La4/m;-><init>()V

    sput-object v0, La4/m;->c:La4/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lt3/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Ld3/g;Ljava/lang/Runnable;)V
    .locals 2

    sget-object p1, La4/c;->i:La4/c;

    sget-object v0, La4/l;->h:La4/i;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, La4/f;->s(Ljava/lang/Runnable;La4/i;Z)V

    return-void
.end method

.method public l(Ld3/g;Ljava/lang/Runnable;)V
    .locals 2

    sget-object p1, La4/c;->i:La4/c;

    sget-object v0, La4/l;->h:La4/i;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, La4/f;->s(Ljava/lang/Runnable;La4/i;Z)V

    return-void
.end method

.method public o(I)Lt3/b0;
    .locals 1

    .line 1
    invoke-static {p1}, Ly3/p;->a(I)V

    .line 2
    sget v0, La4/l;->d:I

    if-lt p1, v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lt3/b0;->o(I)Lt3/b0;

    move-result-object p1

    return-object p1
.end method
