.class public Lt4/b;
.super Ljava/lang/Object;
.source "DefaultThreadFactory.java"

# interfaces
.implements Lt4/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt4/b$a;
    }
.end annotation


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lk4/m;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lt4/b;->a:J

    return-void
.end method

.method public static synthetic b(Lt4/b;)J
    .locals 2

    iget-wide v0, p0, Lt4/b;->a:J

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lt4/k;Z)Lt4/k;
    .locals 1

    .line 1
    new-instance v0, Lt4/b$a;

    invoke-direct {v0, p0, p1, p2}, Lt4/b$a;-><init>(Lt4/b;Ljava/lang/String;Lt4/k;)V

    .line 2
    invoke-static {v0}, Lt4/b$a;->a(Lt4/b$a;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method
