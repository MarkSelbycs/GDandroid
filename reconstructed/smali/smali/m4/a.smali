.class public Lm4/a;
.super Ljava/util/EventObject;
.source "AuthenticationFailureEvent.java"


# instance fields
.field public a:Lr4/b;

.field public transient b:Lk4/s;

.field public c:Ll4/b;

.field public d:I


# direct methods
.method public constructor <init>(Ls4/c;Lr4/b;Lk4/s;ILl4/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lm4/a;->a:Lr4/b;

    .line 3
    iput-object p3, p0, Lm4/a;->b:Lk4/s;

    .line 4
    iput p4, p0, Lm4/a;->d:I

    .line 5
    iput-object p5, p0, Lm4/a;->c:Ll4/b;

    return-void
.end method
