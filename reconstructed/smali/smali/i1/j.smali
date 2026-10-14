.class public final synthetic Li1/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Li1/k;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Li1/k;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/j;->a:Li1/k;

    iput-object p2, p0, Li1/j;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Li1/j;->a:Li1/k;

    iget-object v1, p0, Li1/j;->b:Ljava/util/Map;

    invoke-static {v0, v1, p1, p2}, Li1/k;->a(Li1/k;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
