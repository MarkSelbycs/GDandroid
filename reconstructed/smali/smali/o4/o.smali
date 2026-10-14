.class public Lo4/o;
.super Ljava/lang/Object;
.source "StatusInformation.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Lr4/v;

.field public b:[B

.field public c:[B

.field public d:Lr4/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lr4/v;
    .locals 1

    iget-object v0, p0, Lo4/o;->a:Lr4/v;

    return-object v0
.end method

.method public c()Lr4/g;
    .locals 1

    iget-object v0, p0, Lo4/o;->d:Lr4/g;

    return-object v0
.end method

.method public e([B)V
    .locals 0

    iput-object p1, p0, Lo4/o;->c:[B

    return-void
.end method

.method public f([B)V
    .locals 0

    iput-object p1, p0, Lo4/o;->b:[B

    return-void
.end method

.method public h(Lr4/v;)V
    .locals 0

    iput-object p1, p0, Lo4/o;->a:Lr4/v;

    return-void
.end method

.method public j(Lr4/g;)V
    .locals 0

    iput-object p1, p0, Lo4/o;->d:Lr4/g;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lo4/o;->a:Lr4/v;

    if-nez v0, :cond_0

    const-string v0, "noError"

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lr4/v;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
