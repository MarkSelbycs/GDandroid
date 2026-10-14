.class public Ls2/e$c;
.super Ls2/s;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls2/e;->d(Z)Ls2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls2/s<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls2/e;


# direct methods
.method public constructor <init>(Ls2/e;)V
    .locals 0

    iput-object p1, p0, Ls2/e$c;->a:Ls2/e;

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

    invoke-virtual {p0, p1}, Ls2/e$c;->e(Ly2/a;)Ljava/lang/Double;

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

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Ls2/e$c;->f(Ly2/c;Ljava/lang/Number;)V

    return-void
.end method

.method public e(Ly2/a;)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ly2/a;->V()Ly2/b;

    move-result-object v0

    sget-object v1, Ly2/b;->i:Ly2/b;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Ly2/a;->K()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ly2/a;->y()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public f(Ly2/c;Ljava/lang/Number;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Ly2/c;->u()Ly2/c;

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Ls2/e;->c(D)V

    .line 4
    invoke-virtual {p1, p2}, Ly2/c;->V(Ljava/lang/Number;)Ly2/c;

    return-void
.end method
