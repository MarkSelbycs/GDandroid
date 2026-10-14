.class public Lu2/g$c$a;
.super Lu2/g$d;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu2/g$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu2/g<",
        "TK;TV;>.d<TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lu2/g$c;


# direct methods
.method public constructor <init>(Lu2/g$c;)V
    .locals 0

    iput-object p1, p0, Lu2/g$c$a;->e:Lu2/g$c;

    iget-object p1, p1, Lu2/g$c;->a:Lu2/g;

    invoke-direct {p0, p1}, Lu2/g$d;-><init>(Lu2/g;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lu2/g$d;->a()Lu2/g$e;

    move-result-object v0

    iget-object v0, v0, Lu2/g$e;->f:Ljava/lang/Object;

    return-object v0
.end method
