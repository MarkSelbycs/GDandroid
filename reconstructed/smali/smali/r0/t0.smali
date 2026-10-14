.class public final synthetic Lr0/t0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr0/p0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lr0/q;

.field public final synthetic d:Ll3/a;

.field public final synthetic e:Lq0/b0;


# direct methods
.method public synthetic constructor <init>(Lr0/p0;Ljava/lang/String;Lr0/q;Ll3/a;Lq0/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/t0;->a:Lr0/p0;

    iput-object p2, p0, Lr0/t0;->b:Ljava/lang/String;

    iput-object p3, p0, Lr0/t0;->c:Lr0/q;

    iput-object p4, p0, Lr0/t0;->d:Ll3/a;

    iput-object p5, p0, Lr0/t0;->e:Lq0/b0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lr0/t0;->a:Lr0/p0;

    iget-object v1, p0, Lr0/t0;->b:Ljava/lang/String;

    iget-object v2, p0, Lr0/t0;->c:Lr0/q;

    iget-object v3, p0, Lr0/t0;->d:Ll3/a;

    iget-object v4, p0, Lr0/t0;->e:Lq0/b0;

    invoke-static {v0, v1, v2, v3, v4}, Lr0/u0;->a(Lr0/p0;Ljava/lang/String;Lr0/q;Ll3/a;Lq0/b0;)V

    return-void
.end method
