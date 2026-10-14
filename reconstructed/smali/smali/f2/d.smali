.class public final synthetic Lf2/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll1/c$a;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic a:Lg2/d;

.field public final synthetic b:Lv1/i;


# direct methods
.method public synthetic constructor <init>(Lg2/d;Lv1/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/d;->a:Lg2/d;

    iput-object p2, p0, Lf2/d;->b:Lv1/i;

    return-void
.end method


# virtual methods
.method public final J(Ljava/lang/Object;I)V
    .locals 2

    iget-object v0, p0, Lf2/d;->a:Lg2/d;

    iget-object v1, p0, Lf2/d;->b:Lv1/i;

    invoke-static {v0, v1, p1, p2}, Lf2/e;->j(Lg2/d;Lv1/i;Ljava/lang/Object;I)V

    return-void
.end method
