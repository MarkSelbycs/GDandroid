.class public final synthetic Lr0/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr0/u;

.field public final synthetic b:Lr2/a;

.field public final synthetic c:Lr0/w0;


# direct methods
.method public synthetic constructor <init>(Lr0/u;Lr2/a;Lr0/w0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/r;->a:Lr0/u;

    iput-object p2, p0, Lr0/r;->b:Lr2/a;

    iput-object p3, p0, Lr0/r;->c:Lr0/w0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr0/r;->a:Lr0/u;

    iget-object v1, p0, Lr0/r;->b:Lr2/a;

    iget-object v2, p0, Lr0/r;->c:Lr0/w0;

    invoke-static {v0, v1, v2}, Lr0/u;->d(Lr0/u;Lr2/a;Lr0/w0;)V

    return-void
.end method
