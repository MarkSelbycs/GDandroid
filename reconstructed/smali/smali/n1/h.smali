.class public Ln1/h;
.super Ljava/lang/Number;
.source "NumberWithFormat.java"

# interfaces
.implements Ln1/i;


# instance fields
.field public final a:Ljava/lang/Number;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 2
    iput-object p1, p0, Ln1/h;->a:Ljava/lang/Number;

    .line 3
    iput-object p2, p0, Ln1/h;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p2, p0, Ln1/h;->b:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    instance-of p2, p1, Ljava/lang/Class;

    if-eqz p2, :cond_2

    .line 2
    move-object p2, p1

    check-cast p2, Ljava/lang/Class;

    .line 3
    const-class v1, Ljava/util/Date;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance p1, Lo1/n;

    iget-object v1, p0, Ln1/h;->b:Ljava/lang/String;

    invoke-direct {p1, p2, v1}, Lo1/n;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iget-object p2, p0, Ln1/h;->a:Ljava/lang/Number;

    invoke-virtual {p1, p2, v0}, Ln1/a;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    const-class v1, Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance p1, Lo1/o0;

    iget-object v1, p0, Ln1/h;->b:Ljava/lang/String;

    invoke-direct {p1, p2, v1}, Lo1/o0;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iget-object p2, p0, Ln1/h;->a:Ljava/lang/Number;

    invoke-virtual {p1, p2, v0}, Ln1/a;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    const-class v1, Ljava/lang/String;

    if-ne v1, p2, :cond_2

    .line 8
    invoke-virtual {p0}, Ln1/h;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    iget-object p2, p0, Ln1/h;->a:Ljava/lang/Number;

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Ln1/c;->f(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public doubleValue()D
    .locals 2

    iget-object v0, p0, Ln1/h;->a:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    iget-object v0, p0, Ln1/h;->a:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    iget-object v0, p0, Ln1/h;->a:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    iget-object v0, p0, Ln1/h;->a:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ln1/h;->a:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
