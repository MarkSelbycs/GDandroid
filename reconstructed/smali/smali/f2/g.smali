.class public Lf2/g;
.super Ljava/lang/Object;
.source "JSONConverter.java"

# interfaces
.implements Ln1/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln1/e<",
        "Lf2/b;",
        ">;"
    }
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lf2/g;

    invoke-static {}, Ln1/g;->y()Ln1/g;

    move-result-object v1

    .line 2
    const-class v2, Lf2/b;

    invoke-virtual {v1, v2, v0}, Ln1/g;->F(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ln1/g;

    .line 3
    const-class v2, Lf2/l;

    invoke-virtual {v1, v2, v0}, Ln1/g;->F(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ln1/g;

    .line 4
    const-class v2, Lf2/e;

    invoke-virtual {v1, v2, v0}, Ln1/g;->F(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ln1/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lf2/e;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf2/e;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lo1/a;

    invoke-direct {v0, p1}, Lo1/a;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Ln1/a;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lf2/b;)Lf2/b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lf2/p;->e(Ljava/lang/Object;)Lf2/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    check-cast p2, Lf2/b;

    invoke-virtual {p0, p1, p2}, Lf2/g;->a(Ljava/lang/Object;Lf2/b;)Lf2/b;

    move-result-object p1

    return-object p1
.end method
