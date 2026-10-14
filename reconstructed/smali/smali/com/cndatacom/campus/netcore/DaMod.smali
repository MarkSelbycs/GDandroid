.class public Lcom/cndatacom/campus/netcore/DaMod;
.super Ljava/lang/Object;
.source "DaMod.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cndatacom/campus/netcore/DaMod;",
            ">;"
        }
    .end annotation
.end field

.field private static _DaMod:Lcom/cndatacom/campus/netcore/DaMod;


# instance fields
.field private mod:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cndatacom/campus/netcore/DaMod$1;

    invoke-direct {v0}, Lcom/cndatacom/campus/netcore/DaMod$1;-><init>()V

    sput-object v0, Lcom/cndatacom/campus/netcore/DaMod;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "daproxy"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/cndatacom/campus/netcore/DaMod;->mod:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/cndatacom/campus/netcore/DaMod;->mod:J

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cndatacom/campus/netcore/DaMod;->mod:J

    return-void
.end method

.method private native aid(J)Ljava/lang/String;
.end method

.method private native dec(J[B)[B
.end method

.method private native enc(J[B)[B
.end method

.method private native free(J)V
.end method

.method public static getInstance()Lcom/cndatacom/campus/netcore/DaMod;
    .locals 2

    .line 1
    sget-object v0, Lcom/cndatacom/campus/netcore/DaMod;->_DaMod:Lcom/cndatacom/campus/netcore/DaMod;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/cndatacom/campus/netcore/DaMod;

    invoke-direct {v0}, Lcom/cndatacom/campus/netcore/DaMod;-><init>()V

    sput-object v0, Lcom/cndatacom/campus/netcore/DaMod;->_DaMod:Lcom/cndatacom/campus/netcore/DaMod;

    .line 3
    :cond_0
    sget-object v0, Lcom/cndatacom/campus/netcore/DaMod;->_DaMod:Lcom/cndatacom/campus/netcore/DaMod;

    return-object v0
.end method

.method private native inspect(JZ)[Ljava/lang/String;
.end method

.method private native key(J)Ljava/lang/String;
.end method

.method private native load([B)J
.end method

.method private native prev(J)Ljava/lang/String;
.end method


# virtual methods
.method public Decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "UTF-8"

    .line 1
    iget-wide v1, p0, Lcom/cndatacom/campus/netcore/DaMod;->mod:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const-string v4, ""

    if-nez v3, :cond_0

    return-object v4

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, v1, v2, p1}, Lcom/cndatacom/campus/netcore/DaMod;->dec(J[B)[B

    move-result-object p1

    .line 3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v4
.end method

.method public Decode([B)[B
    .locals 4

    .line 4
    iget-wide v0, p0, Lcom/cndatacom/campus/netcore/DaMod;->mod:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1

    .line 5
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/cndatacom/campus/netcore/DaMod;->dec(J[B)[B

    move-result-object p1

    return-object p1
.end method

.method public Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "UTF-8"

    .line 1
    iget-wide v1, p0, Lcom/cndatacom/campus/netcore/DaMod;->mod:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const-string v4, ""

    if-nez v3, :cond_0

    return-object v4

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, v1, v2, p1}, Lcom/cndatacom/campus/netcore/DaMod;->enc(J[B)[B

    move-result-object p1

    .line 3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v4
.end method

.method public Encode([B)[B
    .locals 4

    .line 4
    iget-wide v0, p0, Lcom/cndatacom/campus/netcore/DaMod;->mod:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1

    .line 5
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/cndatacom/campus/netcore/DaMod;->enc(J[B)[B

    move-result-object p1

    return-object p1
.end method

.method public Free()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/cndatacom/campus/netcore/DaMod;->mod:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/cndatacom/campus/netcore/DaMod;->free(J)V

    .line 3
    iput-wide v2, p0, Lcom/cndatacom/campus/netcore/DaMod;->mod:J

    .line 4
    :cond_0
    new-instance v0, Lcom/cndatacom/campus/netcore/DaMod;

    invoke-direct {v0}, Lcom/cndatacom/campus/netcore/DaMod;-><init>()V

    sput-object v0, Lcom/cndatacom/campus/netcore/DaMod;->_DaMod:Lcom/cndatacom/campus/netcore/DaMod;

    return-void
.end method

.method public Inspect(Z)[Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/cndatacom/campus/netcore/DaMod;->mod:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string p1, "0"

    const-string v0, ""

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/cndatacom/campus/netcore/DaMod;->inspect(JZ)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Load([B)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/netcore/DaMod;->Free()V

    .line 2
    invoke-direct {p0, p1}, Lcom/cndatacom/campus/netcore/DaMod;->load([B)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cndatacom/campus/netcore/DaMod;->mod:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/netcore/DaMod;->Free()V

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/cndatacom/campus/netcore/DaMod;->mod:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/cndatacom/campus/netcore/DaMod;->aid(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/cndatacom/campus/netcore/DaMod;->mod:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/cndatacom/campus/netcore/DaMod;->key(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMod()J
    .locals 2

    iget-wide v0, p0, Lcom/cndatacom/campus/netcore/DaMod;->mod:J

    return-wide v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/cndatacom/campus/netcore/DaMod;->mod:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/cndatacom/campus/netcore/DaMod;->prev(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOk()Z
    .locals 4

    iget-wide v0, p0, Lcom/cndatacom/campus/netcore/DaMod;->mod:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setData([B)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/cndatacom/campus/netcore/DaMod;->load([B)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cndatacom/campus/netcore/DaMod;->mod:J

    return-void
.end method

.method public setMod(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cndatacom/campus/netcore/DaMod;->mod:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/cndatacom/campus/netcore/DaMod;->mod:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
