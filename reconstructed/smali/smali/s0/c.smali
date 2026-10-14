.class public final synthetic Ls0/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ls0/d;

.field public final synthetic b:Lr0/a0;


# direct methods
.method public synthetic constructor <init>(Ls0/d;Lr0/a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0/c;->a:Ls0/d;

    iput-object p2, p0, Ls0/c;->b:Lr0/a0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ls0/c;->a:Ls0/d;

    iget-object v1, p0, Ls0/c;->b:Lr0/a0;

    invoke-static {v0, v1}, Ls0/d;->a(Ls0/d;Lr0/a0;)V

    return-void
.end method
