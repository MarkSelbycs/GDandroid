.class public final Lq0/r$b$b;
.super Lq0/r$b;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/r$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lq0/r$b;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lq0/r$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq0/r$b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "IN_PROGRESS"

    return-object v0
.end method
