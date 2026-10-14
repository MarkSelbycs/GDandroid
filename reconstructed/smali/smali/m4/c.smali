.class public Lm4/c;
.super Ljava/util/EventObject;
.source "CounterEvent.java"


# instance fields
.field public a:Lr4/j;

.field public b:Lr4/u;

.field public c:J

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lr4/j;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Lr4/c;

    invoke-direct {p1}, Lr4/c;-><init>()V

    iput-object p1, p0, Lm4/c;->b:Lr4/u;

    const-wide/16 v0, 0x1

    .line 3
    iput-wide v0, p0, Lm4/c;->c:J

    .line 4
    iput-object p2, p0, Lm4/c;->a:Lr4/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lr4/j;J)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;)V

    .line 6
    iput-wide p3, p0, Lm4/c;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lr4/j;Ljava/lang/Object;J)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p4, p5}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;J)V

    .line 8
    iput-object p3, p0, Lm4/c;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b()Lr4/u;
    .locals 1

    iget-object v0, p0, Lm4/c;->b:Lr4/u;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lm4/c;->c:J

    return-wide v0
.end method

.method public e()Lr4/j;
    .locals 1

    iget-object v0, p0, Lm4/c;->a:Lr4/j;

    return-object v0
.end method

.method public f(J)V
    .locals 0

    iput-wide p1, p0, Lm4/c;->c:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CounterEvent{oid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm4/c;->a:Lr4/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm4/c;->b:Lr4/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", increment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lm4/c;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm4/c;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-super {p0}, Ljava/util/EventObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
