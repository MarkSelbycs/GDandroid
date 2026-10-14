.class public final synthetic Lr0/v0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr0/w0;

.field public final synthetic b:Lr2/a;


# direct methods
.method public synthetic constructor <init>(Lr0/w0;Lr2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/v0;->a:Lr0/w0;

    iput-object p2, p0, Lr0/v0;->b:Lr2/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr0/v0;->a:Lr0/w0;

    iget-object v1, p0, Lr0/v0;->b:Lr2/a;

    invoke-static {v0, v1}, Lr0/w0;->a(Lr0/w0;Lr2/a;)V

    return-void
.end method
