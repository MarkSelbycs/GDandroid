.class public Lo1/d0;
.super Ln1/a;
.source "OptConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln1/a<",
        "Lv1/k<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln1/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo1/d0;->h(Ljava/lang/Object;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Object;)Lv1/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lv1/k<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Lv1/k;->b(Ljava/lang/Object;)Lv1/k;

    move-result-object p1

    return-object p1
.end method
