.class public final synthetic Lr0/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr0/u;

.field public final synthetic b:Lz0/m;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lr0/u;Lz0/m;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/s;->a:Lr0/u;

    iput-object p2, p0, Lr0/s;->b:Lz0/m;

    iput-boolean p3, p0, Lr0/s;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr0/s;->a:Lr0/u;

    iget-object v1, p0, Lr0/s;->b:Lz0/m;

    iget-boolean v2, p0, Lr0/s;->c:Z

    invoke-static {v0, v1, v2}, Lr0/u;->b(Lr0/u;Lz0/m;Z)V

    return-void
.end method
