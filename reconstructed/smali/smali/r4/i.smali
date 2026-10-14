.class public Lr4/i;
.super Lr4/a;
.source "Null.java"


# static fields
.field public static final e:Lr4/i;

.field public static final f:Lr4/i;

.field public static final g:Lr4/i;

.field public static final h:Lr4/i;


# instance fields
.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lr4/i;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lr4/i;-><init>(I)V

    sput-object v0, Lr4/i;->e:Lr4/i;

    .line 2
    new-instance v0, Lr4/i;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Lr4/i;-><init>(I)V

    sput-object v0, Lr4/i;->f:Lr4/i;

    .line 3
    new-instance v0, Lr4/i;

    const/16 v1, 0x82

    invoke-direct {v0, v1}, Lr4/i;-><init>(I)V

    sput-object v0, Lr4/i;->g:Lr4/i;

    .line 4
    new-instance v0, Lr4/i;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lr4/i;-><init>(I)V

    sput-object v0, Lr4/i;->h:Lr4/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lr4/a;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lr4/i;->d:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lr4/a;-><init>()V

    const/4 v0, 0x5

    .line 4
    iput v0, p0, Lr4/i;->d:I

    .line 5
    invoke-virtual {p0, p1}, Lr4/i;->I(I)V

    return-void
.end method

.method public static H(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public I(I)V
    .locals 3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    .line 1
    invoke-static {p1}, Lr4/i;->H(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Syntax "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is incompatible with Null type"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iput p1, p0, Lr4/i;->d:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lr4/i;->d:I

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lr4/i;

    iget v1, p0, Lr4/i;->d:I

    invoke-direct {v0, v1}, Lr4/i;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lr4/u;

    invoke-virtual {p0, p1}, Lr4/i;->u(Lr4/u;)I

    move-result p1

    return p1
.end method

.method public e(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lr4/i;->c()I

    move-result v0

    int-to-byte v0, v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ll4/a;->m(Ljava/io/OutputStream;II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lr4/i;

    if-eqz v0, :cond_0

    check-cast p1, Lr4/i;

    invoke-virtual {p1}, Lr4/i;->c()I

    move-result p1

    invoke-virtual {p0}, Lr4/i;->c()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lr4/i;->c()I

    move-result v0

    return v0
.end method

.method public j(Ll4/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ll4/a$a;

    invoke-direct {v0}, Ll4/a$a;-><init>()V

    .line 2
    invoke-static {p1, v0}, Ll4/a;->h(Ll4/b;Ll4/a$a;)V

    .line 3
    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lr4/i;->d:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lr4/i;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "Null"

    return-object v0

    :pswitch_0
    const-string v0, "endOfMibView"

    return-object v0

    :pswitch_1
    const-string v0, "noSuchInstance"

    return-object v0

    :pswitch_2
    const-string v0, "noSuchObject"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public u(Lr4/u;)I
    .locals 1

    invoke-virtual {p0}, Lr4/i;->c()I

    move-result v0

    invoke-interface {p1}, Lr4/u;->c()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method
