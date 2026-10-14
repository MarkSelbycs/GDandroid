.class public final synthetic Lf2/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lg2/d;

.field public final synthetic b:Lv1/i;


# direct methods
.method public synthetic constructor <init>(Lg2/d;Lv1/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/k;->a:Lg2/d;

    iput-object p2, p0, Lf2/k;->b:Lv1/i;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lf2/k;->a:Lg2/d;

    iget-object v1, p0, Lf2/k;->b:Lv1/i;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lf2/l;->y(Lg2/d;Lv1/i;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
