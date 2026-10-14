.class Lcom/cndatacom/campus/service/HoldVpnService$2;
.super Ljava/lang/Thread;
.source "HoldVpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/service/HoldVpnService;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/service/HoldVpnService;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/service/HoldVpnService;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/service/HoldVpnService$2;->a:Lcom/cndatacom/campus/service/HoldVpnService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/service/HoldVpnService$2;->a:Lcom/cndatacom/campus/service/HoldVpnService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cndatacom/campus/service/HoldVpnService;->c(Lcom/cndatacom/campus/service/HoldVpnService;Z)Z

    .line 3
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/cndatacom/campus/service/HoldVpnService$2;->a:Lcom/cndatacom/campus/service/HoldVpnService;

    invoke-static {v2}, Lcom/cndatacom/campus/service/HoldVpnService;->d(Lcom/cndatacom/campus/service/HoldVpnService;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/16 v2, 0x7fff

    .line 4
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/cndatacom/campus/service/HoldVpnService$2;->a:Lcom/cndatacom/campus/service/HoldVpnService;

    invoke-static {v3}, Lcom/cndatacom/campus/service/HoldVpnService;->b(Lcom/cndatacom/campus/service/HoldVpnService;)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    const-string v3, "HoldVpnService startVpnTask ->read"

    .line 6
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const-string v4, "HoldVpnService startVpnTask ->read finish"

    .line 8
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    if-lez v3, :cond_0

    .line 9
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 10
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    const-wide/16 v3, 0x3e8

    .line 11
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 12
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HoldVpnService startVpnTask Exception->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v4}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
