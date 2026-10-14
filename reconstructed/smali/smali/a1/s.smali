.class public final La1/s;
.super Ljava/lang/Object;
.source "StopWorkRunnable.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr0/u;

.field public final b:Lr0/a0;

.field public final c:Z

.field public final d:I


# direct methods
.method public constructor <init>(Lr0/u;Lr0/a0;Z)V
    .locals 1

    const-string v0, "processor"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, -0x200

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, La1/s;-><init>(Lr0/u;Lr0/a0;ZI)V

    return-void
.end method

.method public constructor <init>(Lr0/u;Lr0/a0;ZI)V
    .locals 1

    const-string v0, "processor"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La1/s;->a:Lr0/u;

    .line 3
    iput-object p2, p0, La1/s;->b:Lr0/a0;

    .line 4
    iput-boolean p3, p0, La1/s;->c:Z

    .line 5
    iput p4, p0, La1/s;->d:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-boolean v0, p0, La1/s;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, La1/s;->a:Lr0/u;

    iget-object v1, p0, La1/s;->b:Lr0/a0;

    iget v2, p0, La1/s;->d:I

    invoke-virtual {v0, v1, v2}, Lr0/u;->v(Lr0/a0;I)Z

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, La1/s;->a:Lr0/u;

    iget-object v1, p0, La1/s;->b:Lr0/a0;

    iget v2, p0, La1/s;->d:I

    invoke-virtual {v0, v1, v2}, Lr0/u;->w(Lr0/a0;I)Z

    move-result v0

    .line 4
    :goto_0
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    const-string v2, "StopWorkRunnable"

    .line 5
    invoke-static {v2}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StopWorkRunnable for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, La1/s;->b:Lr0/a0;

    invoke-virtual {v4}, Lr0/a0;->a()Lz0/m;

    move-result-object v4

    invoke-virtual {v4}, Lz0/m;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; Processor.stopWork = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v1, v2, v0}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
