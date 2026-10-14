.class public Lk4/t;
.super Ljava/lang/Object;
.source "TransportStateReference.java"


# instance fields
.field public a:Lk4/s;

.field public b:Lr4/b;

.field public c:Lr4/k;

.field public d:Lp4/v;

.field public e:Lp4/v;

.field public f:Z

.field public g:Ljava/lang/Object;

.field public h:Lk4/b;


# direct methods
.method public constructor <init>(Lk4/s;Lr4/b;Lr4/k;Lp4/v;Lp4/v;ZLjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk4/t;->a:Lk4/s;

    .line 3
    iput-object p2, p0, Lk4/t;->b:Lr4/b;

    .line 4
    iput-object p3, p0, Lk4/t;->c:Lr4/k;

    .line 5
    iput-object p4, p0, Lk4/t;->d:Lp4/v;

    .line 6
    iput-object p5, p0, Lk4/t;->e:Lp4/v;

    .line 7
    iput-boolean p6, p0, Lk4/t;->f:Z

    .line 8
    iput-object p7, p0, Lk4/t;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lk4/s;Lr4/b;Lr4/k;Lp4/v;Lp4/v;ZLjava/lang/Object;Lk4/b;)V
    .locals 0

    .line 9
    invoke-direct/range {p0 .. p7}, Lk4/t;-><init>(Lk4/s;Lr4/b;Lr4/k;Lp4/v;Lp4/v;ZLjava/lang/Object;)V

    .line 10
    iput-object p8, p0, Lk4/t;->h:Lk4/b;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransportStateReference[transport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk4/t;->a:Lk4/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk4/t;->b:Lr4/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", securityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk4/t;->c:Lr4/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestedSecurityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk4/t;->d:Lp4/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transportSecurityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk4/t;->e:Lp4/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sameSecurity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lk4/t;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sessionID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk4/t;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", certifiedIdentity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk4/t;->h:Lk4/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
