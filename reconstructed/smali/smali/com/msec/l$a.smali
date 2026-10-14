.class public Lcom/msec/l$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:F

.field public final synthetic d:Lcom/msec/l;


# direct methods
.method public constructor <init>(Lcom/msec/l;Z)V
    .locals 0

    iput-object p1, p0, Lcom/msec/l$a;->d:Lcom/msec/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/msec/l$a;->a:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/msec/l$a;->c:F

    iput-boolean p2, p0, Lcom/msec/l$a;->b:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 v1, 0x6bf

    invoke-static {v1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
