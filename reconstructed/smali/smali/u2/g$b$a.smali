.class public Lu2/g$b$a;
.super Lu2/g$d;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu2/g$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu2/g<",
        "TK;TV;>.d<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lu2/g$b;


# direct methods
.method public constructor <init>(Lu2/g$b;)V
    .locals 0

    iput-object p1, p0, Lu2/g$b$a;->e:Lu2/g$b;

    iget-object p1, p1, Lu2/g$b;->a:Lu2/g;

    invoke-direct {p0, p1}, Lu2/g$d;-><init>(Lu2/g;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lu2/g$d;->a()Lu2/g$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lu2/g$b$a;->b()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
