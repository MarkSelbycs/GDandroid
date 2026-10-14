.class public Lt4/c;
.super Ljava/lang/Object;
.source "DefaultTimerFactory.java"

# interfaces
.implements Lt4/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt4/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lt4/a;
    .locals 1

    new-instance v0, Lt4/c$a;

    invoke-direct {v0, p0}, Lt4/c$a;-><init>(Lt4/c;)V

    return-object v0
.end method
