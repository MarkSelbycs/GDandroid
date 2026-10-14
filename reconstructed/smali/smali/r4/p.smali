.class public Lr4/p;
.super Lr4/t;
.source "TimeTicks.java"


# static fields
.field public static final e:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lr4/p;->e:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x83d600
        0x57e40
        0x1770
        0x64
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr4/t;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lr4/t;-><init>(J)V

    return-void
.end method


# virtual methods
.method public P(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lr4/t;->I()J

    move-result-wide v0

    const-wide/32 v2, 0x83d600

    .line 2
    div-long v4, v0, v2

    .line 3
    rem-long/2addr v0, v2

    const-wide/32 v2, 0x57e40

    .line 4
    div-long v6, v0, v2

    .line 5
    rem-long/2addr v0, v2

    const-wide/16 v2, 0x1770

    .line 6
    div-long v8, v0, v2

    .line 7
    rem-long/2addr v0, v2

    const-wide/16 v2, 0x64

    .line 8
    div-long v10, v0, v2

    .line 9
    rem-long/2addr v0, v2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Long;

    .line 10
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 11
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 12
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 13
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v2, v1

    .line 15
    invoke-static {p1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x43

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lr4/p;

    iget-wide v1, p0, Lr4/t;->d:J

    invoke-direct {v0, v1, v2}, Lr4/p;-><init>(J)V

    return-object v0
.end method

.method public e(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lr4/t;->I()J

    move-result-wide v0

    const/16 v2, 0x43

    invoke-static {p1, v2, v0, v1}, Ll4/a;->t(Ljava/io/OutputStream;BJ)V

    return-void
.end method

.method public j(Ll4/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ll4/a$a;

    invoke-direct {v0}, Ll4/a$a;-><init>()V

    .line 2
    invoke-static {p1, v0}, Ll4/a;->l(Ll4/b;Ll4/a$a;)J

    move-result-wide v1

    .line 3
    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result p1

    const/16 v3, 0x43

    if-ne p1, v3, :cond_0

    .line 4
    invoke-virtual {p0, v1, v2}, Lr4/t;->M(J)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong type encountered when decoding TimeTicks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "{0,choice,0#|1#1 day, |1<{0,number,integer} days, }{1,number,integer}:{2,number,00}:{3,number,00}.{4,number,00}"

    invoke-virtual {p0, v0}, Lr4/p;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
