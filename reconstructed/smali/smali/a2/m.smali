.class public final synthetic La2/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/m;->a:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La2/m;->a:Ljava/util/function/BiFunction;

    check-cast p1, Ljava/lang/ref/Reference;

    invoke-static {v0, p1, p2}, La2/t;->x(Ljava/util/function/BiFunction;Ljava/lang/ref/Reference;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
