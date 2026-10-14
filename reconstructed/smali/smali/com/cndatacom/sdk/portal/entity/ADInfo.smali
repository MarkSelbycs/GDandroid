.class public Lcom/cndatacom/sdk/portal/entity/ADInfo;
.super Ljava/lang/Object;
.source "ADInfo.java"


# instance fields
.field private adid:Ljava/lang/String;

.field private href:Ljava/lang/String;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ADInfo;->adid:Ljava/lang/String;

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ADInfo;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/sdk/portal/entity/ADInfo;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ADInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAdid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/entity/ADInfo;->adid:Ljava/lang/String;

    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/entity/ADInfo;->href:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/sdk/portal/entity/ADInfo;->type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/entity/ADInfo;->url:Ljava/lang/String;

    return-void
.end method
