.class public final Ly3/d;
.super Ljava/lang/Object;
.source "ConcurrentLinkedList.kt"


# static fields
.field public static final a:Ly3/h0;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ly3/h0;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Ly3/d;->a:Ly3/h0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ly3/h0;
    .locals 2

    sget-object v0, Ly3/d;->a:Ly3/h0;

    return-object v0
.end method

.method public static final b(Ly3/e;)Ly3/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ly3/e<",
            "TN;>;>(TN;)TN;"
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    invoke-static {p0}, Ly3/e;->a(Ly3/e;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {}, Ly3/d;->a()Ly3/h0;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object p0

    .line 3
    :cond_1
    check-cast v0, Ly3/e;

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Ly3/e;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_2
    move-object p0, v0

    goto :goto_0
.end method

.method public static final c(Ly3/e0;JLl3/p;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ly3/e0<",
            "TS;>;>(TS;J",
            "Ll3/p<",
            "-",
            "Ljava/lang/Long;",
            "-TS;+TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget-wide v0, p0, Ly3/e0;->c:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Ly3/e0;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-static {p0}, Ly3/f0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_2
    :goto_1
    invoke-static {p0}, Ly3/e;->a(Ly3/e;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-static {}, Ly3/d;->a()Ly3/h0;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 5
    sget-object p0, Ly3/d;->a:Ly3/h0;

    invoke-static {p0}, Ly3/f0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 6
    :cond_3
    check-cast v0, Ly3/e;

    .line 7
    check-cast v0, Ly3/e0;

    if-eqz v0, :cond_5

    :cond_4
    :goto_2
    move-object p0, v0

    goto :goto_0

    .line 8
    :cond_5
    iget-wide v0, p0, Ly3/e0;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0, p0}, Ll3/p;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly3/e0;

    .line 9
    invoke-virtual {p0, v0}, Ly3/e;->l(Ly3/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {p0}, Ly3/e0;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ly3/e;->k()V

    goto :goto_2
.end method
