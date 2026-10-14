.class public Lcom/msec/l$1;
.super Ljava/util/LinkedHashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Integer;",
        "Lcom/msec/l$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/msec/l;


# direct methods
.method public constructor <init>(Lcom/msec/l;)V
    .locals 4

    iput-object p1, p0, Lcom/msec/l$1;->a:Lcom/msec/l;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/msec/l$c;

    const/16 v2, 0x40

    invoke-static {v2}, Lcom/msec/u;->b(I)Z

    move-result v2

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, p1, v2, v3}, Lcom/msec/l$c;-><init>(Lcom/msec/l;ZF)V

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/msec/l$c;

    const/16 v2, 0x80

    invoke-static {v2}, Lcom/msec/u;->b(I)Z

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    invoke-direct {v1, p1, v2, v3}, Lcom/msec/l$c;-><init>(Lcom/msec/l;ZF)V

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/msec/l$c;

    const/16 v2, 0x100

    invoke-static {v2}, Lcom/msec/u;->b(I)Z

    move-result v2

    invoke-direct {v1, p1, v2, v3}, Lcom/msec/l$c;-><init>(Lcom/msec/l;ZF)V

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/msec/l$c;

    const/16 v2, 0x200

    invoke-static {v2}, Lcom/msec/u;->b(I)Z

    move-result v2

    const v3, 0x38d1b717    # 1.0E-4f

    invoke-direct {v1, p1, v2, v3}, Lcom/msec/l$c;-><init>(Lcom/msec/l;ZF)V

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/msec/l$a;

    const/16 v2, 0x800

    invoke-static {v2}, Lcom/msec/u;->b(I)Z

    move-result v3

    invoke-direct {v1, p1, v3}, Lcom/msec/l$a;-><init>(Lcom/msec/l;Z)V

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/msec/l$a;

    invoke-static {v2}, Lcom/msec/u;->b(I)Z

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/msec/l$a;-><init>(Lcom/msec/l;Z)V

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/msec/l$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/msec/l$a;-><init>(Lcom/msec/l;Z)V

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/msec/l$a;

    invoke-direct {v1, p1, v2}, Lcom/msec/l$a;-><init>(Lcom/msec/l;Z)V

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/msec/l$a;

    invoke-direct {v1, p1, v2}, Lcom/msec/l$a;-><init>(Lcom/msec/l;Z)V

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/msec/l$b;

    const/16 v2, 0x2000

    invoke-static {v2}, Lcom/msec/u;->b(I)Z

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/msec/l$b;-><init>(Lcom/msec/l;Z)V

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
