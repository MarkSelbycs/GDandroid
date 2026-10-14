.class public final Le3/b$a;
.super Lf3/j;
.source "IntrinsicsJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le3/b;->a(Ll3/p;Ljava/lang/Object;Ld3/d;)Ld3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Ll3/p;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ld3/d;Ll3/p;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Le3/b$a;->c:Ll3/p;

    iput-object p3, p0, Le3/b$a;->d:Ljava/lang/Object;

    const-string p2, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    invoke-static {p1, p2}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lf3/j;-><init>(Ld3/d;)V

    return-void
.end method


# virtual methods
.method public I(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Le3/b$a;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    .line 2
    iput v1, p0, Le3/b$a;->b:I

    .line 3
    invoke-static {p1}, La3/j;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This coroutine had already completed"

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    iput v2, p0, Le3/b$a;->b:I

    .line 6
    invoke-static {p1}, La3/j;->b(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Le3/b$a;->c:Ll3/p;

    const-string v0, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>"

    invoke-static {p1, v0}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le3/b$a;->c:Ll3/p;

    invoke-static {p1, v1}, Lm3/t;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll3/p;

    iget-object v0, p0, Le3/b$a;->d:Ljava/lang/Object;

    invoke-interface {p1, v0, p0}, Ll3/p;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
