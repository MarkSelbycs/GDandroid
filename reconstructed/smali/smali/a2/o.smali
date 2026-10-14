.class public final synthetic La2/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:Ljava/util/function/BiFunction;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiFunction;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/o;->a:Ljava/util/function/BiFunction;

    iput-object p2, p0, La2/o;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, La2/o;->a:Ljava/util/function/BiFunction;

    iget-object v1, p0, La2/o;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/ref/Reference;

    invoke-static {v0, v1, p1, p2}, La2/t;->q(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/ref/Reference;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
