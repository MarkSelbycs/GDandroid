.class public abstract Lcom/msec/bi;
.super Ljava/lang/Object;


# static fields
.field public static final g:[Ljava/lang/String;


# instance fields
.field public a:Z

.field public b:Z

.field public final c:I

.field public final d:I

.field public e:I

.field public f:I

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x492

    invoke-static {v1}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x490

    invoke-static {v1}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x48f

    invoke-static {v1}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/msec/bi;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/msec/bi;->a:Z

    iput-boolean v0, p0, Lcom/msec/bi;->b:Z

    iput v0, p0, Lcom/msec/bi;->c:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/msec/bi;->d:I

    iput v0, p0, Lcom/msec/bi;->e:I

    iput v0, p0, Lcom/msec/bi;->f:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 p1, 0x626

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/16 p1, 0x625

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public a(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/msec/bi;->h:Ljava/lang/Object;

    iput p2, p0, Lcom/msec/bi;->e:I

    iput p3, p0, Lcom/msec/bi;->f:I

    iput-object p4, p0, Lcom/msec/bi;->i:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 p1, 0x624

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a()Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 v1, 0x623

    invoke-static {v1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/msec/bi;->i:Ljava/lang/Object;

    check-cast v0, Lcom/msec/be;

    invoke-interface {v0}, Lcom/msec/be;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
