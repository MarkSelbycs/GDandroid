.class public final synthetic Li1/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Li1/m;


# direct methods
.method public synthetic constructor <init>(Li1/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/l;->a:Li1/m;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Li1/l;->a:Li1/m;

    invoke-static {v0, p1, p2}, Li1/m;->a(Li1/m;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
