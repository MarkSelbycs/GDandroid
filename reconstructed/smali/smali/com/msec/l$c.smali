.class public Lcom/msec/l$c;
.super Lcom/msec/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:I

.field public n:Z

.field public final synthetic o:Lcom/msec/l;


# direct methods
.method public constructor <init>(Lcom/msec/l;ZF)V
    .locals 0

    iput-object p1, p0, Lcom/msec/l$c;->o:Lcom/msec/l;

    invoke-direct {p0, p1, p2}, Lcom/msec/l$a;-><init>(Lcom/msec/l;Z)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/msec/l$c;->h:F

    iput p1, p0, Lcom/msec/l$c;->i:F

    iput p1, p0, Lcom/msec/l$c;->j:F

    iput p1, p0, Lcom/msec/l$c;->k:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/msec/l$c;->m:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/msec/l$c;->n:Z

    iput p3, p0, Lcom/msec/l$c;->l:F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 v1, 0x6b6

    invoke-static {v1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
