.class public Lk4/p$d;
.super Ljava/lang/Object;
.source "Snmp.java"

# interfaces
.implements Lm4/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk4/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Lm4/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lk4/p$d;->a:Lm4/e;

    return-void
.end method

.method public static synthetic g(Lk4/p$d;)Lm4/e;
    .locals 0

    iget-object p0, p0, Lk4/p$d;->a:Lm4/e;

    return-object p0
.end method

.method public static synthetic h(Lk4/p$d;Lm4/e;)Lm4/e;
    .locals 0

    iput-object p1, p0, Lk4/p$d;->a:Lm4/e;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized c(Lm4/e;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lk4/p$d;->a:Lm4/e;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public i()Lm4/e;
    .locals 1

    iget-object v0, p0, Lk4/p$d;->a:Lm4/e;

    return-object v0
.end method
