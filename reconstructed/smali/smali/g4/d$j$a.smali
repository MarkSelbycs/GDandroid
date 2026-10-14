.class public Lg4/d$j$a;
.super Ld4/b;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/d$j;->m(ZZIILjava/util/List;Lg4/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lg4/e;

.field public final synthetic c:Lg4/d$j;


# direct methods
.method public varargs constructor <init>(Lg4/d$j;Ljava/lang/String;[Ljava/lang/Object;Lg4/e;)V
    .locals 0

    iput-object p1, p0, Lg4/d$j$a;->c:Lg4/d$j;

    iput-object p4, p0, Lg4/d$j$a;->b:Lg4/e;

    invoke-direct {p0, p2, p3}, Ld4/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lg4/d$j$a;->c:Lg4/d$j;

    iget-object v0, v0, Lg4/d$j;->c:Lg4/d;

    invoke-static {v0}, Lg4/d;->s(Lg4/d;)Lg4/d$i;

    move-result-object v0

    iget-object v1, p0, Lg4/d$j$a;->b:Lg4/e;

    invoke-virtual {v0, v1}, Lg4/d$i;->c(Lg4/e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {}, Li4/e;->h()Li4/e;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FramedConnection.Listener failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lg4/d$j$a;->c:Lg4/d$j;

    iget-object v4, v4, Lg4/d$j;->c:Lg4/d;

    invoke-static {v4}, Lg4/d;->c(Lg4/d;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Li4/e;->k(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :try_start_1
    iget-object v0, p0, Lg4/d$j$a;->b:Lg4/e;

    sget-object v1, Lg4/a;->e:Lg4/a;

    invoke-virtual {v0, v1}, Lg4/e;->l(Lg4/a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method
