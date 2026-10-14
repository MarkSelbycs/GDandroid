.class public Lm4/e;
.super Ljava/util/EventObject;
.source "ResponseEvent.java"


# instance fields
.field public a:Lr4/b;

.field public b:Lk4/k;

.field public c:Lk4/k;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lr4/b;Lk4/k;Lk4/k;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p2}, Lm4/e;->c(Lr4/b;)V

    .line 3
    invoke-virtual {p0, p3}, Lm4/e;->e(Lk4/k;)V

    .line 4
    invoke-virtual {p0, p4}, Lm4/e;->f(Lk4/k;)V

    .line 5
    invoke-virtual {p0, p5}, Lm4/e;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lr4/b;Lk4/k;Lk4/k;Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p5}, Lm4/e;-><init>(Ljava/lang/Object;Lr4/b;Lk4/k;Lk4/k;Ljava/lang/Object;)V

    .line 7
    iput-object p6, p0, Lm4/e;->e:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public b()Lk4/k;
    .locals 1

    iget-object v0, p0, Lm4/e;->c:Lk4/k;

    return-object v0
.end method

.method public final c(Lr4/b;)V
    .locals 0

    iput-object p1, p0, Lm4/e;->a:Lr4/b;

    return-void
.end method

.method public final e(Lk4/k;)V
    .locals 0

    iput-object p1, p0, Lm4/e;->b:Lk4/k;

    return-void
.end method

.method public final f(Lk4/k;)V
    .locals 0

    iput-object p1, p0, Lm4/e;->c:Lk4/k;

    return-void
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lm4/e;->d:Ljava/lang/Object;

    return-void
.end method
