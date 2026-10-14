.class public Ls0/b$b;
.super Ljava/lang/Object;
.source "GreedyScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Ls0/b$b;->a:I

    .line 4
    iput-wide p2, p0, Ls0/b$b;->b:J

    return-void
.end method

.method public synthetic constructor <init>(IJLs0/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ls0/b$b;-><init>(IJ)V

    return-void
.end method
