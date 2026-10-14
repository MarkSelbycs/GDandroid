.class public final La4/b;
.super Lt3/z0;
.source "Dispatcher.kt"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final d:La4/b;

.field public static final e:Lt3/b0;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, La4/b;

    invoke-direct {v0}, La4/b;-><init>()V

    sput-object v0, La4/b;->d:La4/b;

    .line 1
    sget-object v0, La4/m;->c:La4/m;

    .line 2
    invoke-static {}, Ly3/i0;->a()I

    move-result v1

    const/16 v2, 0x40

    invoke-static {v2, v1}, Lp3/m;->a(II)I

    move-result v4

    const-string v3, "kotlinx.coroutines.io.parallelism"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 3
    invoke-static/range {v3 .. v8}, Ly3/i0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v1

    .line 4
    invoke-virtual {v0, v1}, La4/m;->o(I)Lt3/b0;

    move-result-object v0

    sput-object v0, La4/b;->e:Lt3/b0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lt3/z0;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be invoked on Dispatchers.IO"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Ld3/h;->a:Ld3/h;

    invoke-virtual {p0, v0, p1}, La4/b;->i(Ld3/g;Ljava/lang/Runnable;)V

    return-void
.end method

.method public i(Ld3/g;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, La4/b;->e:Lt3/b0;

    invoke-virtual {v0, p1, p2}, Lt3/b0;->i(Ld3/g;Ljava/lang/Runnable;)V

    return-void
.end method

.method public l(Ld3/g;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, La4/b;->e:Lt3/b0;

    invoke-virtual {v0, p1, p2}, Lt3/b0;->l(Ld3/g;Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.IO"

    return-object v0
.end method
