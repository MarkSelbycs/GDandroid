.class public final synthetic Li1/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Li1/g;


# direct methods
.method public synthetic constructor <init>(Li1/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/f;->a:Li1/g;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Li1/f;->a:Li1/g;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lh1/j;

    invoke-static {v0, p1, p2}, Li1/g;->a(Li1/g;Ljava/lang/String;Lh1/j;)V

    return-void
.end method
