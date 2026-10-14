.class public final Ld3/g$a$a;
.super Lm3/l;
.source "CoroutineContext.kt"

# interfaces
.implements Ll3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld3/g$a;->a(Ld3/g;Ld3/g;)Ld3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm3/l;",
        "Ll3/p<",
        "Ld3/g;",
        "Ld3/g$b;",
        "Ld3/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ld3/g$a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld3/g$a$a;

    invoke-direct {v0}, Ld3/g$a$a;-><init>()V

    sput-object v0, Ld3/g$a$a;->b:Ld3/g$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ld3/g;Ld3/g$b;)Ld3/g;
    .locals 3

    const-string v0, "acc"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Ld3/g$b;->getKey()Ld3/g$c;

    move-result-object v0

    invoke-interface {p1, v0}, Ld3/g;->j(Ld3/g$c;)Ld3/g;

    move-result-object p1

    .line 2
    sget-object v0, Ld3/h;->a:Ld3/h;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-object v1, Ld3/e;->k:Ld3/e$b;

    invoke-interface {p1, v1}, Ld3/g;->c(Ld3/g$c;)Ld3/g$b;

    move-result-object v2

    check-cast v2, Ld3/e;

    if-nez v2, :cond_1

    .line 4
    new-instance v0, Ld3/c;

    invoke-direct {v0, p1, p2}, Ld3/c;-><init>(Ld3/g;Ld3/g$b;)V

    :goto_0
    move-object p2, v0

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {p1, v1}, Ld3/g;->j(Ld3/g$c;)Ld3/g;

    move-result-object p1

    if-ne p1, v0, :cond_2

    .line 6
    new-instance p1, Ld3/c;

    invoke-direct {p1, p2, v2}, Ld3/c;-><init>(Ld3/g;Ld3/g$b;)V

    move-object p2, p1

    goto :goto_1

    .line 7
    :cond_2
    new-instance v0, Ld3/c;

    new-instance v1, Ld3/c;

    invoke-direct {v1, p1, p2}, Ld3/c;-><init>(Ld3/g;Ld3/g$b;)V

    invoke-direct {v0, v1, v2}, Ld3/c;-><init>(Ld3/g;Ld3/g$b;)V

    goto :goto_0

    :goto_1
    return-object p2
.end method

.method public bridge synthetic u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ld3/g;

    check-cast p2, Ld3/g$b;

    invoke-virtual {p0, p1, p2}, Ld3/g$a$a;->b(Ld3/g;Ld3/g$b;)Ld3/g;

    move-result-object p1

    return-object p1
.end method
