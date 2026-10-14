.class public final Lf4/a;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Lc4/s;


# instance fields
.field public final a:Lc4/v;


# direct methods
.method public constructor <init>(Lc4/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf4/a;->a:Lc4/v;

    return-void
.end method


# virtual methods
.method public a(Lc4/s$a;)Lc4/a0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lh4/i;

    .line 2
    invoke-virtual {p1}, Lh4/i;->b()Lc4/y;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lh4/i;->f()Lf4/g;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lc4/y;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 5
    iget-object v3, p0, Lf4/a;->a:Lc4/v;

    invoke-virtual {v1, v3, v2}, Lf4/g;->g(Lc4/v;Z)Lh4/h;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Lf4/g;->b()Lf4/c;

    move-result-object v3

    .line 7
    invoke-virtual {p1, v0, v1, v2, v3}, Lh4/i;->d(Lc4/y;Lf4/g;Lh4/h;Lc4/i;)Lc4/a0;

    move-result-object p1

    return-object p1
.end method
