.class public Lk4/d;
.super Ljava/util/EventObject;
.source "CommandResponderEvent.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Lo4/i;

.field public e:Lo4/n;

.field public f:Lk4/k;

.field public g:I

.field public h:[B

.field public i:Z

.field public o:Lr4/b;

.field public transient p:Lk4/s;

.field public q:Lk4/t;


# direct methods
.method public constructor <init>(Lk4/g;Lk4/s;Lr4/b;II[BILo4/i;Lk4/k;ILo4/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p2}, Lk4/d;->P(Lk4/s;)V

    .line 3
    invoke-virtual {p0, p4}, Lk4/d;->q(I)V

    .line 4
    invoke-virtual {p0, p5}, Lk4/d;->H(I)V

    .line 5
    invoke-virtual {p0, p6}, Lk4/d;->I([B)V

    .line 6
    invoke-virtual {p0, p7}, Lk4/d;->F(I)V

    .line 7
    invoke-virtual {p0, p8}, Lk4/d;->x(Lo4/i;)V

    .line 8
    invoke-virtual {p0, p9}, Lk4/d;->u(Lk4/k;)V

    .line 9
    invoke-virtual {p0, p10}, Lk4/d;->j(I)V

    .line 10
    invoke-virtual {p0, p11}, Lk4/d;->M(Lo4/n;)V

    .line 11
    invoke-virtual {p0, p3}, Lk4/d;->y(Lr4/b;)V

    return-void
.end method


# virtual methods
.method public D(Z)V
    .locals 0

    iput-boolean p1, p0, Lk4/d;->i:Z

    return-void
.end method

.method public F(I)V
    .locals 0

    iput p1, p0, Lk4/d;->b:I

    return-void
.end method

.method public H(I)V
    .locals 0

    iput p1, p0, Lk4/d;->a:I

    return-void
.end method

.method public I([B)V
    .locals 0

    iput-object p1, p0, Lk4/d;->h:[B

    return-void
.end method

.method public M(Lo4/n;)V
    .locals 0

    iput-object p1, p0, Lk4/d;->e:Lo4/n;

    return-void
.end method

.method public P(Lk4/s;)V
    .locals 0

    iput-object p1, p0, Lk4/d;->p:Lk4/s;

    return-void
.end method

.method public b()Lk4/k;
    .locals 1

    iget-object v0, p0, Lk4/d;->f:Lk4/k;

    return-object v0
.end method

.method public c()Lo4/i;
    .locals 1

    iget-object v0, p0, Lk4/d;->d:Lo4/i;

    return-object v0
.end method

.method public e()Lr4/b;
    .locals 1

    iget-object v0, p0, Lk4/d;->o:Lr4/b;

    return-object v0
.end method

.method public f()Lk4/s;
    .locals 1

    iget-object v0, p0, Lk4/d;->p:Lk4/s;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lk4/d;->i:Z

    return v0
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lk4/d;->c:I

    return-void
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lk4/d;->b:I

    return v0
.end method

.method public q(I)V
    .locals 0

    iput p1, p0, Lk4/d;->g:I

    return-void
.end method

.method public r0()I
    .locals 1

    iget v0, p0, Lk4/d;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommandResponderEvent[securityModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk4/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", securityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk4/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxSizeResponsePDU="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk4/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pduHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk4/d;->d:Lo4/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stateReference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk4/d;->e:Lo4/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pdu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk4/d;->f:Lk4/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", messageProcessingModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk4/d;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", securityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lr4/k;

    iget-object v2, p0, Lk4/d;->h:[B

    invoke-direct {v1, v2}, Lr4/k;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", processed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lk4/d;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", peerAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk4/d;->o:Lr4/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transportMapping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk4/d;->p:Lk4/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tmStateReference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk4/d;->q:Lk4/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lk4/k;)V
    .locals 0

    iput-object p1, p0, Lk4/d;->f:Lk4/k;

    return-void
.end method

.method public x(Lo4/i;)V
    .locals 0

    iput-object p1, p0, Lk4/d;->d:Lo4/i;

    return-void
.end method

.method public y(Lr4/b;)V
    .locals 0

    iput-object p1, p0, Lk4/d;->o:Lr4/b;

    return-void
.end method
