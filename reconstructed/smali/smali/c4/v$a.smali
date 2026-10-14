.class public final Lc4/v$a;
.super Ld4/a;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld4/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc4/q$b;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Lc4/q$b;->c(Ljava/lang/String;)Lc4/q$b;

    return-void
.end method

.method public b(Lc4/q$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lc4/q$b;->d(Ljava/lang/String;Ljava/lang/String;)Lc4/q$b;

    return-void
.end method

.method public c(Lc4/k;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lc4/k;->e(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public d(Lc4/j;Lf4/c;)Z
    .locals 0

    invoke-virtual {p1, p2}, Lc4/j;->b(Lf4/c;)Z

    move-result p1

    return p1
.end method

.method public e(Lc4/j;Lc4/a;Lf4/g;)Lf4/c;
    .locals 0

    invoke-virtual {p1, p2, p3}, Lc4/j;->c(Lc4/a;Lf4/g;)Lf4/c;

    move-result-object p1

    return-object p1
.end method

.method public f(Lc4/j;Lf4/c;)V
    .locals 0

    invoke-virtual {p1, p2}, Lc4/j;->e(Lf4/c;)V

    return-void
.end method

.method public g(Lc4/j;)Lf4/d;
    .locals 0

    iget-object p1, p1, Lc4/j;->e:Lf4/d;

    return-object p1
.end method
