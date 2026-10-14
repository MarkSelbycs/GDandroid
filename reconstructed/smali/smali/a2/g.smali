.class public La2/g;
.super Ljava/lang/Object;
.source "MapBuilder.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La2/g;->a:Ljava/util/Map;

    return-void
.end method

.method public static c(Ljava/util/Map;)La2/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "La2/g<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, La2/g;

    invoke-direct {v0, p0}, La2/g;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static e(Z)La2/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(Z)",
            "La2/g<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p0}, La2/i;->k(Z)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p0}, La2/g;->c(Ljava/util/Map;)La2/g;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, La2/g;->f()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, La2/g;->a:Ljava/util/Map;

    return-object v0
.end method
