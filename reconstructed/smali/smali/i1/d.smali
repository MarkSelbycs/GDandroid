.class public final synthetic Li1/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Li1/e;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Li1/e;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/d;->a:Li1/e;

    iput-object p2, p0, Li1/d;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Li1/d;->a:Li1/e;

    iget-object v1, p0, Li1/d;->b:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lh1/j;

    invoke-static {v0, v1, p1, p2}, Li1/e;->a(Li1/e;Ljava/util/Map;Ljava/lang/String;Lh1/j;)V

    return-void
.end method
