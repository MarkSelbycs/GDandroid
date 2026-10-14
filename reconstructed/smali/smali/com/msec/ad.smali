.class public Lcom/msec/ad;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/msec/ad;->b:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/msec/ad;->c:I

    iput-object p1, p0, Lcom/msec/ad;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(III)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/msec/ad;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/msec/ad;->c:I

    return v0
.end method
