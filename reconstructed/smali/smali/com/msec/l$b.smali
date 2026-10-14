.class public Lcom/msec/l$b;
.super Lcom/msec/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public e:J

.field public final synthetic f:Lcom/msec/l;


# direct methods
.method public constructor <init>(Lcom/msec/l;Z)V
    .locals 0

    iput-object p1, p0, Lcom/msec/l$b;->f:Lcom/msec/l;

    invoke-direct {p0, p1, p2}, Lcom/msec/l$a;-><init>(Lcom/msec/l;Z)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/msec/l$b;->e:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/msec/l$a;->a:Z

    const/16 v1, 0x64a

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/msec/l$a;->c:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
