.class public abstract La4/h;
.super Ljava/lang/Object;
.source "Tasks.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:J

.field public b:La4/i;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    sget-object v0, La4/l;->g:La4/i;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2, v0}, La4/h;-><init>(JLa4/i;)V

    return-void
.end method

.method public constructor <init>(JLa4/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, La4/h;->a:J

    .line 3
    iput-object p3, p0, La4/h;->b:La4/i;

    return-void
.end method
