.class public Lm4/g;
.super Ljava/util/EventObject;
.source "SnmpEngineEvent.java"


# instance fields
.field public a:Lr4/k;

.field public b:Lr4/b;

.field public c:I


# direct methods
.method public constructor <init>(Lo4/e;ILr4/k;Lr4/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p3, p0, Lm4/g;->a:Lr4/k;

    .line 3
    iput p2, p0, Lm4/g;->c:I

    .line 4
    iput-object p4, p0, Lm4/g;->b:Lr4/b;

    return-void
.end method
