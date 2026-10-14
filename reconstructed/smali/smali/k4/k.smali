.class public Lk4/k;
.super Ljava/lang/Object;
.source "PDU.java"

# interfaces
.implements Ll4/d;
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lr4/v;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lr4/g;

.field public c:Lr4/g;

.field public d:Lr4/g;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lk4/k;->a:Ljava/util/Vector;

    .line 3
    new-instance v0, Lr4/g;

    invoke-direct {v0}, Lr4/g;-><init>()V

    iput-object v0, p0, Lk4/k;->b:Lr4/g;

    .line 4
    new-instance v0, Lr4/g;

    invoke-direct {v0}, Lr4/g;-><init>()V

    iput-object v0, p0, Lk4/k;->c:Lr4/g;

    .line 5
    new-instance v0, Lr4/g;

    invoke-direct {v0}, Lr4/g;-><init>()V

    iput-object v0, p0, Lk4/k;->d:Lr4/g;

    const/16 v0, -0x60

    .line 6
    iput v0, p0, Lk4/k;->e:I

    return-void
.end method

.method public constructor <init>(Lk4/k;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lk4/k;->a:Ljava/util/Vector;

    .line 9
    new-instance v0, Lr4/g;

    invoke-direct {v0}, Lr4/g;-><init>()V

    iput-object v0, p0, Lk4/k;->b:Lr4/g;

    .line 10
    new-instance v0, Lr4/g;

    invoke-direct {v0}, Lr4/g;-><init>()V

    iput-object v0, p0, Lk4/k;->c:Lr4/g;

    .line 11
    new-instance v0, Lr4/g;

    invoke-direct {v0}, Lr4/g;-><init>()V

    iput-object v0, p0, Lk4/k;->d:Lr4/g;

    const/16 v0, -0x60

    .line 12
    iput v0, p0, Lk4/k;->e:I

    .line 13
    new-instance v0, Ljava/util/Vector;

    invoke-virtual {p1}, Lk4/k;->h0()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lk4/k;->a:Ljava/util/Vector;

    .line 14
    iget-object v0, p1, Lk4/k;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/v;

    .line 15
    iget-object v2, p0, Lk4/k;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Lr4/v;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/v;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p1, Lk4/k;->c:Lr4/g;

    invoke-virtual {v0}, Lr4/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/g;

    iput-object v0, p0, Lk4/k;->c:Lr4/g;

    .line 17
    iget-object v0, p1, Lk4/k;->b:Lr4/g;

    invoke-virtual {v0}, Lr4/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/g;

    iput-object v0, p0, Lk4/k;->b:Lr4/g;

    .line 18
    iget v0, p1, Lk4/k;->e:I

    iput v0, p0, Lk4/k;->e:I

    .line 19
    iget-object p1, p1, Lk4/k;->d:Lr4/g;

    if-eqz p1, :cond_1

    .line 20
    invoke-virtual {p1}, Lr4/g;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/g;

    iput-object p1, p0, Lk4/k;->d:Lr4/g;

    :cond_1
    return-void
.end method

.method public static P(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "unknown"

    return-object p0

    :pswitch_0
    const-string p0, "REPORT"

    return-object p0

    :pswitch_1
    const-string p0, "TRAP"

    return-object p0

    :pswitch_2
    const-string p0, "INFORM"

    return-object p0

    :pswitch_3
    const-string p0, "GETBULK"

    return-object p0

    :pswitch_4
    const-string p0, "V1TRAP"

    return-object p0

    :pswitch_5
    const-string p0, "SET"

    return-object p0

    :pswitch_6
    const-string p0, "RESPONSE"

    return-object p0

    :pswitch_7
    const-string p0, "GETNEXT"

    return-object p0

    :pswitch_8
    const-string p0, "GET"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x60
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static i0(I)Ljava/lang/String;
    .locals 2

    if-gez p0, :cond_0

    .line 1
    :try_start_0
    sget-object v0, Lo4/m;->H0:[Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object p0, v0, v1

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lo4/m;->I0:[Ljava/lang/String;

    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static y(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lr4/v;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/v;

    .line 2
    invoke-virtual {v1}, Lr4/v;->f()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public D()I
    .locals 1

    invoke-virtual {p0}, Lk4/k;->F()I

    move-result v0

    return v0
.end method

.method public F()I
    .locals 3

    .line 1
    iget-object v0, p0, Lk4/k;->a:Ljava/util/Vector;

    invoke-static {v0}, Lk4/k;->y(Ljava/util/List;)I

    move-result v0

    .line 2
    invoke-static {v0}, Ll4/a;->u(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 3
    new-instance v1, Lr4/g;

    iget-object v2, p0, Lk4/k;->d:Lr4/g;

    invoke-virtual {v2}, Lr4/g;->H()I

    move-result v2

    invoke-direct {v1, v2}, Lr4/g;-><init>(I)V

    .line 4
    invoke-virtual {v1}, Lr4/g;->f()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    iget-object v1, p0, Lk4/k;->b:Lr4/g;

    .line 6
    invoke-virtual {v1}, Lr4/g;->f()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    iget-object v1, p0, Lk4/k;->c:Lr4/g;

    .line 8
    invoke-virtual {v1}, Lr4/g;->f()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lk4/k;->b:Lr4/g;

    invoke-virtual {v0}, Lr4/g;->H()I

    move-result v0

    invoke-static {v0}, Lk4/k;->i0(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public I()Lr4/g;
    .locals 1

    iget-object v0, p0, Lk4/k;->d:Lr4/g;

    return-object v0
.end method

.method public M()I
    .locals 1

    iget v0, p0, Lk4/k;->e:I

    return v0
.end method

.method public T(Lr4/j;)Lr4/u;
    .locals 3

    .line 1
    iget-object v0, p0, Lk4/k;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/v;

    .line 2
    invoke-virtual {v1}, Lr4/v;->u()Lr4/j;

    move-result-object v2

    invoke-virtual {v2, p1}, Lr4/j;->V(Lr4/j;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lr4/v;->x()Lr4/u;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public U()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "+",
            "Lr4/v;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lk4/k;->a:Ljava/util/Vector;

    return-object v0
.end method

.method public V()Z
    .locals 2

    iget v0, p0, Lk4/k;->e:I

    const/16 v1, -0x58

    if-eq v0, v1, :cond_0

    const/16 v1, -0x5e

    if-eq v0, v1, :cond_0

    const/16 v1, -0x59

    if-eq v0, v1, :cond_0

    const/16 v1, -0x5c

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public W()Z
    .locals 2

    iget v0, p0, Lk4/k;->e:I

    const/16 v1, -0x5e

    if-eq v0, v1, :cond_1

    const/16 v1, -0x58

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public X(I)V
    .locals 1

    iget-object v0, p0, Lk4/k;->c:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->I(I)V

    return-void
.end method

.method public a0(I)V
    .locals 1

    iget-object v0, p0, Lk4/k;->b:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->I(I)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lk4/k;

    invoke-direct {v0, p0}, Lk4/k;-><init>(Lk4/k;)V

    return-object v0
.end method

.method public d0(I)V
    .locals 1

    iget-object v0, p0, Lk4/k;->c:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->I(I)V

    return-void
.end method

.method public e(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lk4/k;->e:I

    invoke-virtual {p0}, Lk4/k;->F()I

    move-result v1

    invoke-static {p1, v0, v1}, Ll4/a;->m(Ljava/io/OutputStream;II)V

    .line 2
    iget-object v0, p0, Lk4/k;->d:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->e(Ljava/io/OutputStream;)V

    .line 3
    iget-object v0, p0, Lk4/k;->b:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->e(Ljava/io/OutputStream;)V

    .line 4
    iget-object v0, p0, Lk4/k;->c:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->e(Ljava/io/OutputStream;)V

    .line 5
    iget-object v0, p0, Lk4/k;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/v;

    .line 6
    invoke-virtual {v2}, Lr4/v;->f()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const/16 v0, 0x30

    .line 7
    invoke-static {p1, v0, v1}, Ll4/a;->m(Ljava/io/OutputStream;II)V

    .line 8
    iget-object v0, p0, Lk4/k;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/v;

    .line 9
    invoke-virtual {v1, p1}, Lr4/v;->e(Ljava/io/OutputStream;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public e0(I)V
    .locals 1

    iget-object v0, p0, Lk4/k;->b:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->I(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lk4/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lk4/k;

    .line 3
    iget v0, p0, Lk4/k;->e:I

    iget v2, p1, Lk4/k;->e:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lk4/k;->d:Lr4/g;

    iget-object v2, p1, Lk4/k;->d:Lr4/g;

    .line 4
    invoke-static {v0, v2}, Lr4/a;->D(Lr4/a;Lr4/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk4/k;->b:Lr4/g;

    iget-object v2, p1, Lk4/k;->b:Lr4/g;

    .line 5
    invoke-static {v0, v2}, Lr4/a;->D(Lr4/a;Lr4/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk4/k;->c:Lr4/g;

    iget-object v2, p1, Lk4/k;->c:Lr4/g;

    .line 6
    invoke-static {v0, v2}, Lr4/a;->D(Lr4/a;Lr4/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk4/k;->a:Ljava/util/Vector;

    iget-object p1, p1, Lk4/k;->a:Ljava/util/Vector;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/Vector;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public f()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk4/k;->F()I

    move-result v0

    .line 2
    invoke-static {v0}, Ll4/a;->u(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public f0(Lr4/g;)V
    .locals 0

    iput-object p1, p0, Lk4/k;->d:Lr4/g;

    return-void
.end method

.method public g0(I)V
    .locals 0

    iput p1, p0, Lk4/k;->e:I

    return-void
.end method

.method public h(Lr4/v;)V
    .locals 1

    iget-object v0, p0, Lk4/k;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h0()I
    .locals 1

    iget-object v0, p0, Lk4/k;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public j(Ll4/b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ll4/a$a;

    invoke-direct {v0}, Ll4/a$a;-><init>()V

    .line 2
    invoke-static {p1, v0}, Ll4/a;->c(Ll4/b;Ll4/a$a;)I

    move-result v1

    .line 3
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v2

    long-to-int v2, v2

    .line 4
    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 5
    :pswitch_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported PDU type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :pswitch_1
    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result v0

    iput v0, p0, Lk4/k;->e:I

    .line 7
    iget-object v0, p0, Lk4/k;->d:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->j(Ll4/b;)V

    .line 8
    iget-object v0, p0, Lk4/k;->b:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->j(Ll4/b;)V

    .line 9
    iget-object v0, p0, Lk4/k;->c:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->j(Ll4/b;)V

    .line 10
    new-instance v0, Ll4/a$a;

    invoke-direct {v0}, Ll4/a$a;-><init>()V

    .line 11
    invoke-static {p1, v0}, Ll4/a;->c(Ll4/b;Ll4/a$a;)I

    move-result v3

    .line 12
    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_3

    .line 13
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v4

    long-to-int v0, v4

    .line 14
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lk4/k;->a:Ljava/util/Vector;

    .line 15
    :goto_0
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v4

    int-to-long v6, v0

    sub-long/2addr v4, v6

    int-to-long v8, v3

    cmp-long v4, v4, v8

    if-gez v4, :cond_0

    .line 16
    new-instance v4, Lr4/v;

    invoke-direct {v4}, Lr4/v;-><init>()V

    .line 17
    invoke-virtual {v4, p1}, Lr4/v;->j(Ll4/b;)V

    .line 18
    iget-object v5, p0, Lk4/k;->a:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v4

    sub-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-nez v4, :cond_2

    .line 20
    invoke-static {}, Ll4/a;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v3

    long-to-int p1, v3

    sub-int/2addr p1, v2

    .line 22
    invoke-static {v1, p1, p0}, Ll4/a;->b(IILl4/d;)V

    :cond_1
    return-void

    .line 23
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Length of VB sequence ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") does not match real length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v3

    long-to-int p1, v3

    sub-int/2addr p1, v0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered invalid tag, SEQUENCE expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch -0x60
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget v1, p0, Lk4/k;->e:I

    invoke-static {v1}, Lk4/k;->P(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[requestID="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lk4/k;->d:Lr4/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorStatus="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lk4/k;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk4/k;->b:Lr4/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorIndex="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lk4/k;->c:Lr4/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", VBS["

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 10
    :cond_0
    :goto_0
    iget-object v2, p0, Lk4/k;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 11
    iget-object v2, p0, Lk4/k;->a:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    .line 12
    iget-object v2, p0, Lk4/k;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, "; "

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "]]"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk4/k;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 2
    new-instance v0, Lr4/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr4/g;-><init>(I)V

    invoke-virtual {p0, v0}, Lk4/k;->f0(Lr4/g;)V

    return-void
.end method

.method public x(I)Lr4/v;
    .locals 1

    iget-object v0, p0, Lk4/k;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/v;

    return-object p1
.end method
