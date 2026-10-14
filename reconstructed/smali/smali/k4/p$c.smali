.class public Lk4/p$c;
.super Ljava/lang/Object;
.source "Snmp.java"

# interfaces
.implements Lk4/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk4/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lk4/p;


# direct methods
.method public constructor <init>(Lk4/p;)V
    .locals 0

    iput-object p1, p0, Lk4/p$c;->a:Lk4/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo4/i;Lk4/d;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Lk4/d;->b()Lk4/k;

    move-result-object v4

    .line 2
    invoke-static {}, Lk4/p;->k()Ln4/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Searching pending request with handle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 3
    iget-object v0, p0, Lk4/p$c;->a:Lk4/p;

    invoke-static {v0}, Lk4/p;->l(Lk4/p;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk4/p$a;

    .line 4
    invoke-virtual {p0, p2, v4, v0}, Lk4/p$c;->b(Lk4/d;Lk4/k;Lk4/p$a;)Lr4/v;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v1}, Lr4/v;->u()Lr4/j;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    invoke-static {v0}, Lk4/p$a;->j(Lk4/p$a;)I

    move-result v3

    invoke-static {v0}, Lk4/p$a;->b(Lk4/p$a;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v3, v5, :cond_4

    .line 7
    invoke-static {v0}, Lk4/p$a;->j(Lk4/p$a;)I

    move-result v3

    if-eqz v3, :cond_2

    if-eq v3, v6, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    sget-object v3, Lo4/m;->m:Lr4/j;

    invoke-virtual {v3, v1}, Lr4/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 9
    :cond_2
    sget-object v3, Lo4/m;->o:Lr4/j;

    invoke-virtual {v3, v1}, Lr4/j;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    move v2, v6

    goto :goto_1

    .line 10
    :cond_3
    sget-object v3, Lo4/m;->m:Lr4/j;

    invoke-virtual {v3, v1}, Lr4/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    invoke-static {v0}, Lk4/p$a;->k(Lk4/p$a;)I

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 12
    invoke-static {}, Lk4/p;->k()Ln4/a;

    move-result-object p1

    const-string v1, "Send new request after report."

    invoke-interface {p1, v1}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 13
    invoke-static {v0}, Lk4/p$a;->k(Lk4/p$a;)I

    .line 14
    :try_start_0
    iget-object p1, p0, Lk4/p$c;->a:Lk4/p;

    iget-object v1, v0, Lk4/p$a;->e:Lk4/k;

    iget-object v2, v0, Lk4/p$a;->f:Lk4/q;

    .line 15
    invoke-virtual {p2}, Lk4/d;->f()Lk4/s;

    move-result-object p2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, p2, v3}, Lk4/p;->B(Lk4/k;Lk4/q;Lk4/s;Lo4/j;)Lo4/i;

    move-result-object p1

    .line 16
    invoke-static {v0, p1}, Lk4/p$a;->h(Lk4/p$a;Lo4/i;)Lo4/i;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 17
    invoke-static {}, Lk4/p;->k()Ln4/a;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send message to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lk4/p$a;->f:Lk4/q;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-interface {p2, p1}, Ln4/a;->c(Ljava/io/Serializable;)V

    return-void

    .line 20
    :cond_5
    iget-object v6, v0, Lk4/p$a;->c:Lm4/f;

    .line 21
    iget-object v3, v0, Lk4/p$a;->e:Lk4/k;

    .line 22
    iget-object v5, v0, Lk4/p$a;->d:Ljava/lang/Object;

    .line 23
    monitor-enter v0

    .line 24
    :try_start_1
    invoke-virtual {v0}, Lk4/p$a;->cancel()Z

    move-result v1

    .line 25
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    iget-object v0, p0, Lk4/p$c;->a:Lk4/p;

    invoke-static {v0}, Lk4/p;->l(Lk4/p;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_6

    if-eqz v6, :cond_6

    .line 27
    new-instance p1, Lm4/e;

    iget-object v1, p0, Lk4/p$c;->a:Lk4/p;

    .line 28
    invoke-virtual {p2}, Lk4/d;->e()Lr4/b;

    move-result-object v2

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lm4/e;-><init>(Ljava/lang/Object;Lr4/b;Lk4/k;Lk4/k;Ljava/lang/Object;)V

    .line 29
    invoke-interface {v6, p1}, Lm4/f;->c(Lm4/e;)V

    goto :goto_2

    .line 30
    :cond_6
    invoke-static {}, Lk4/p;->k()Ln4/a;

    move-result-object p1

    invoke-interface {p1}, Ln4/a;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 31
    invoke-static {}, Lk4/p;->k()Ln4/a;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received late report from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p2}, Lk4/d;->e()Lr4/b;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " with request ID "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v4}, Lk4/k;->I()Lr4/g;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 34
    invoke-interface {p1, p2}, Ln4/a;->g(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 35
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public b(Lk4/d;Lk4/k;Lk4/p$a;)Lr4/v;
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 1
    invoke-static {}, Lk4/p;->k()Ln4/a;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unmatched report PDU received from "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lk4/d;->e()Lr4/b;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ln4/a;->i(Ljava/io/Serializable;)V

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lk4/k;->h0()I

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-static {}, Lk4/p;->k()Ln4/a;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal report PDU received from "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lk4/d;->e()Lr4/b;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " missing report variable binding"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ln4/a;->c(Ljava/io/Serializable;)V

    return-object v0

    :cond_1
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v1}, Lk4/k;->x(I)Lr4/v;

    move-result-object p2

    if-nez p2, :cond_2

    .line 5
    invoke-static {}, Lk4/p;->k()Ln4/a;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received illegal REPORT PDU from "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lk4/d;->e()Lr4/b;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ln4/a;->c(Ljava/io/Serializable;)V

    return-object v0

    .line 6
    :cond_2
    invoke-virtual {p1}, Lk4/d;->r0()I

    move-result v1

    iget-object v2, p3, Lk4/p$a;->f:Lk4/q;

    invoke-interface {v2}, Lk4/q;->r0()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 7
    invoke-static {}, Lk4/p;->k()Ln4/a;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RFC3412 \u00a77.2.11.b: Received REPORT PDU with different security model than cached one: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ln4/a;->i(Ljava/io/Serializable;)V

    return-object v0

    .line 8
    :cond_3
    invoke-virtual {p1}, Lk4/d;->o()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 9
    invoke-static {}, Lk4/m;->d()Lk4/m$a;

    move-result-object v1

    sget-object v2, Lk4/m$a;->a:Lk4/m$a;

    if-eq v1, v2, :cond_4

    .line 10
    invoke-virtual {p1}, Lk4/d;->o()I

    move-result v1

    iget-object p3, p3, Lk4/p$a;->f:Lk4/q;

    invoke-interface {p3}, Lk4/q;->o()I

    move-result p3

    if-eq v1, p3, :cond_4

    sget-object p3, Lo4/m;->n:Lr4/j;

    .line 11
    invoke-virtual {p2}, Lr4/v;->u()Lr4/j;

    move-result-object v1

    invoke-virtual {p3, v1}, Lr4/j;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    sget-object p3, Lo4/m;->o:Lr4/j;

    .line 12
    invoke-virtual {p2}, Lr4/v;->u()Lr4/j;

    move-result-object v1

    invoke-virtual {p3, v1}, Lr4/j;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 13
    invoke-static {}, Lk4/p;->k()Ln4/a;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RFC3412 \u00a77.2.11.b:Received REPORT PDU with security level noAuthNoPriv from \'"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'. Ignoring it, because report strategy is set to "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {}, Lk4/m;->d()Lk4/m$a;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-interface {p2, p1}, Ln4/a;->i(Ljava/io/Serializable;)V

    return-object v0

    :cond_4
    return-object p2
.end method
