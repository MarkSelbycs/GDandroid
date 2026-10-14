.class public Lt4/c$a;
.super Ljava/lang/Object;
.source "DefaultTimerFactory.java"

# interfaces
.implements Lt4/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/Timer;

.field public final synthetic b:Lt4/c;


# direct methods
.method public constructor <init>(Lt4/c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lt4/c$a;->b:Lt4/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/Timer;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/Timer;-><init>(Z)V

    iput-object p1, p0, Lt4/c$a;->a:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/TimerTask;J)V
    .locals 1

    iget-object v0, p0, Lt4/c$a;->a:Ljava/util/Timer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lt4/c$a;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
