.class public final synthetic Landroidx/room/w;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/room/a0;

.field public final synthetic b:Lf0/j;

.field public final synthetic c:Landroidx/room/d0;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/a0;Lf0/j;Landroidx/room/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/w;->a:Landroidx/room/a0;

    iput-object p2, p0, Landroidx/room/w;->b:Lf0/j;

    iput-object p3, p0, Landroidx/room/w;->c:Landroidx/room/d0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/room/w;->a:Landroidx/room/a0;

    iget-object v1, p0, Landroidx/room/w;->b:Lf0/j;

    iget-object v2, p0, Landroidx/room/w;->c:Landroidx/room/d0;

    invoke-static {v0, v1, v2}, Landroidx/room/a0;->l(Landroidx/room/a0;Lf0/j;Landroidx/room/d0;)V

    return-void
.end method
