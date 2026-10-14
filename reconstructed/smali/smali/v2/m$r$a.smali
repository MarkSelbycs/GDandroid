.class public Lv2/m$r$a;
.super Ls2/s;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv2/m$r;->a(Ls2/e;Lx2/a;)Ls2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls2/s<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls2/s;

.field public final synthetic b:Lv2/m$r;


# direct methods
.method public constructor <init>(Lv2/m$r;Ls2/s;)V
    .locals 0

    iput-object p1, p0, Lv2/m$r$a;->b:Lv2/m$r;

    iput-object p2, p0, Lv2/m$r$a;->a:Ls2/s;

    invoke-direct {p0}, Ls2/s;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ly2/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lv2/m$r$a;->e(Ly2/a;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Ly2/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lv2/m$r$a;->f(Ly2/c;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public e(Ly2/a;)Ljava/sql/Timestamp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv2/m$r$a;->a:Ls2/s;

    invoke-virtual {v0, p1}, Ls2/s;->b(Ly2/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public f(Ly2/c;Ljava/sql/Timestamp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lv2/m$r$a;->a:Ls2/s;

    invoke-virtual {v0, p1, p2}, Ls2/s;->d(Ly2/c;Ljava/lang/Object;)V

    return-void
.end method
