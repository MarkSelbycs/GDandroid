.class public Lm4/i;
.super Ljava/util/EventObject;
.source "UsmUserEvent.java"


# instance fields
.field public a:Lp4/i0;

.field public b:I


# direct methods
.method public constructor <init>(Lp4/w;Lp4/i0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lm4/i;->a:Lp4/i0;

    .line 3
    iput p3, p0, Lm4/i;->b:I

    return-void
.end method
