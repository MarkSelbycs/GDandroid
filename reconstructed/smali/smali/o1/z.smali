.class public final synthetic Lo1/z;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lo1/a0;

.field public final synthetic b:Ln1/g;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lo1/a0;Ln1/g;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/z;->a:Lo1/a0;

    iput-object p2, p0, Lo1/z;->b:Ln1/g;

    iput-object p3, p0, Lo1/z;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lo1/z;->a:Lo1/a0;

    iget-object v1, p0, Lo1/z;->b:Ln1/g;

    iget-object v2, p0, Lo1/z;->c:Ljava/util/Map;

    invoke-static {v0, v1, v2, p1, p2}, Lo1/a0;->h(Lo1/a0;Ln1/g;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
