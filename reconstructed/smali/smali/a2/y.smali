.class public final synthetic La2/y;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:La2/a0;

.field public final synthetic b:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(La2/a0;Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/y;->a:La2/a0;

    iput-object p2, p0, La2/y;->b:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, La2/y;->a:La2/a0;

    iget-object v1, p0, La2/y;->b:Ljava/util/function/BiFunction;

    invoke-static {v0, v1, p1, p2}, La2/a0;->D(La2/a0;Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
