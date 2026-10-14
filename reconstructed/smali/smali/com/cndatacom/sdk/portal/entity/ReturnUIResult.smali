.class public Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
.super Ljava/lang/Object;
.source "ReturnUIResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private errorCode:Ljava/lang/String;

.field private extern:Ljava/lang/String;

.field private subErrorCode:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult$1;

    invoke-direct {v0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult$1;-><init>()V

    sput-object v0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->errorCode:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->subErrorCode:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->extern:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->errorCode:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->subErrorCode:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->extern:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->errorCode:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->subErrorCode:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->extern:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->subErrorCode:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->extern:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->extern:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->errorCode:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->subErrorCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->errorCode:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->subErrorCode:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->extern:Ljava/lang/String;

    return-void
.end method

.method private toJson()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "errorCode"

    .line 2
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "subErrorCode"

    .line 3
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getSubErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "extern"

    .line 4
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getExtern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getExtern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->extern:Ljava/lang/String;

    return-object v0
.end method

.method public getSubErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->subErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->errorCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->errorCode:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public setExtern(Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->extern:Ljava/lang/String;

    return-object p0
.end method

.method public setSubErrorCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->subErrorCode:Ljava/lang/String;

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->errorCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->subErrorCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->extern:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
