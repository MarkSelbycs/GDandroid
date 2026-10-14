.class public final synthetic Ll1/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ll1/p;

.field public final synthetic b:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ll1/p;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll1/n;->a:Ll1/p;

    iput-object p2, p0, Ll1/n;->b:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ll1/n;->a:Ll1/p;

    iget-object v1, p0, Ll1/n;->b:Ljava/util/function/Consumer;

    invoke-static {v0, v1, p1}, Ll1/p;->a(Ll1/p;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
