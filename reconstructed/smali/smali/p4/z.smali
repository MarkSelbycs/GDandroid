.class public Lp4/z;
.super Ljava/lang/Object;
.source "SecurityProtocols.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final e:Ln4/a;

.field public static f:Lp4/z;


# instance fields
.field public a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lr4/j;",
            "Lp4/i;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lr4/j;",
            "Lp4/s;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lp4/z;

    invoke-static {v0}, Ln4/b;->d(Ljava/lang/Class;)Ln4/a;

    move-result-object v0

    sput-object v0, Lp4/z;->e:Ln4/a;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lp4/z;->f:Lp4/z;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lp4/z;->c:I

    .line 3
    iput v0, p0, Lp4/z;->d:I

    .line 4
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lp4/z;->a:Ljava/util/Hashtable;

    .line 5
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lp4/z;->b:Ljava/util/Hashtable;

    return-void
.end method

.method public static h()Lp4/z;
    .locals 2

    .line 1
    sget-object v0, Lp4/z;->f:Lp4/z;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lp4/z;

    invoke-direct {v0}, Lp4/z;-><init>()V

    sput-object v0, Lp4/z;->f:Lp4/z;

    .line 3
    :cond_0
    sget-object v0, Lp4/z;->f:Lp4/z;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized b(Lp4/i;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lp4/z;->a:Ljava/util/Hashtable;

    invoke-interface {p1}, Lp4/i;->a()Lr4/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lp4/z;->a:Ljava/util/Hashtable;

    invoke-interface {p1}, Lp4/i;->a()Lr4/j;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Lp4/i;->k()I

    move-result v0

    iget v1, p0, Lp4/z;->c:I

    if-le v0, v1, :cond_0

    .line 4
    invoke-interface {p1}, Lp4/i;->k()I

    move-result p1

    iput p1, p0, Lp4/z;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()Lp4/z;
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lk4/m;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "org.snmp4j.securityProtocols"

    const-string v1, "SecurityProtocols.properties"

    .line 2
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    const-class v1, Lp4/z;

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 5
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 7
    invoke-virtual {v2}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 8
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 10
    new-instance v6, Lr4/j;

    invoke-direct {v6, v5}, Lr4/j;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :cond_0
    :try_start_2
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 12
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 13
    instance-of v7, v5, Lq4/a;

    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lr4/j;->U()I

    move-result v7

    if-lez v7, :cond_2

    .line 14
    sget-object v7, Lp4/z;->e:Ln4/a;

    invoke-interface {v7}, Ln4/a;->a()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 15
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Assigning custom ID \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "\' to security protocol "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ln4/a;->g(Ljava/lang/CharSequence;)V

    .line 16
    :cond_1
    move-object v7, v5

    check-cast v7, Lq4/a;

    invoke-interface {v7, v6}, Lq4/a;->b(Lr4/j;)V

    .line 17
    :cond_2
    instance-of v6, v5, Lp4/i;

    if-eqz v6, :cond_3

    .line 18
    check-cast v5, Lp4/i;

    invoke-virtual {p0, v5}, Lp4/z;->b(Lp4/i;)V

    goto :goto_0

    .line 19
    :cond_3
    instance-of v6, v5, Lp4/s;

    if-eqz v6, :cond_4

    .line 20
    check-cast v5, Lp4/s;

    invoke-virtual {p0, v5}, Lp4/z;->e(Lp4/s;)V

    goto :goto_0

    .line 21
    :cond_4
    sget-object v5, Lp4/z;->e:Ln4/a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to register security protocol because it does not implement required interfaces: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ln4/a;->c(Ljava/io/Serializable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .line 22
    :try_start_3
    sget-object v3, Lp4/z;->e:Ln4/a;

    invoke-interface {v3, v2}, Ln4/a;->c(Ljava/io/Serializable;)V

    .line 23
    new-instance v3, Ljava/lang/InternalError;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    :cond_5
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    .line 25
    :try_start_5
    sget-object v1, Lp4/z;->e:Ln4/a;

    invoke-interface {v1, v0}, Ln4/a;->i(Ljava/io/Serializable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v2

    .line 26
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not read \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\': "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    sget-object v2, Lp4/z;->e:Ln4/a;

    invoke-interface {v2, v0}, Ln4/a;->c(Ljava/io/Serializable;)V

    .line 29
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 30
    :goto_1
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catch_3
    move-exception v1

    .line 31
    :try_start_8
    sget-object v2, Lp4/z;->e:Ln4/a;

    invoke-interface {v2, v1}, Ln4/a;->i(Ljava/io/Serializable;)V

    .line 32
    :goto_2
    throw v0

    .line 33
    :cond_6
    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' from classpath!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_7
    new-instance v0, Lp4/f;

    invoke-direct {v0}, Lp4/f;-><init>()V

    invoke-virtual {p0, v0}, Lp4/z;->b(Lp4/i;)V

    .line 35
    new-instance v0, Lp4/h;

    invoke-direct {v0}, Lp4/h;-><init>()V

    invoke-virtual {p0, v0}, Lp4/z;->b(Lp4/i;)V

    .line 36
    new-instance v0, Lp4/b;

    invoke-direct {v0}, Lp4/b;-><init>()V

    invoke-virtual {p0, v0}, Lp4/z;->b(Lp4/i;)V

    .line 37
    new-instance v0, Lp4/c;

    invoke-direct {v0}, Lp4/c;-><init>()V

    invoke-virtual {p0, v0}, Lp4/z;->b(Lp4/i;)V

    .line 38
    new-instance v0, Lp4/d;

    invoke-direct {v0}, Lp4/d;-><init>()V

    invoke-virtual {p0, v0}, Lp4/z;->b(Lp4/i;)V

    .line 39
    new-instance v0, Lp4/e;

    invoke-direct {v0}, Lp4/e;-><init>()V

    invoke-virtual {p0, v0}, Lp4/z;->b(Lp4/i;)V

    .line 40
    new-instance v0, Lp4/q;

    invoke-direct {v0}, Lp4/q;-><init>()V

    invoke-virtual {p0, v0}, Lp4/z;->e(Lp4/s;)V

    .line 41
    new-instance v0, Lp4/m;

    invoke-direct {v0}, Lp4/m;-><init>()V

    invoke-virtual {p0, v0}, Lp4/z;->e(Lp4/s;)V

    .line 42
    new-instance v0, Lp4/n;

    invoke-direct {v0}, Lp4/n;-><init>()V

    invoke-virtual {p0, v0}, Lp4/z;->e(Lp4/s;)V

    .line 43
    new-instance v0, Lp4/o;

    invoke-direct {v0}, Lp4/o;-><init>()V

    invoke-virtual {p0, v0}, Lp4/z;->e(Lp4/s;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 44
    :goto_3
    monitor-exit p0

    return-object p0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Lp4/s;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lp4/z;->b:Ljava/util/Hashtable;

    invoke-interface {p1}, Lp4/s;->a()Lr4/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lp4/z;->b:Ljava/util/Hashtable;

    invoke-interface {p1}, Lp4/s;->a()Lr4/j;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Lp4/s;->E()I

    move-result v0

    iget v1, p0, Lp4/z;->d:I

    if-le v0, v1, :cond_0

    .line 4
    invoke-interface {p1}, Lp4/s;->E()I

    move-result p1

    iput p1, p0, Lp4/z;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f(Lr4/j;)Lp4/i;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lp4/z;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp4/i;

    return-object p1
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lp4/z;->c:I

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lp4/z;->d:I

    return v0
.end method

.method public u(Lr4/j;)Lp4/s;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lp4/z;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp4/s;

    return-object p1
.end method

.method public x(Lr4/j;Lr4/j;Lr4/k;[B)[B
    .locals 3

    .line 1
    iget-object v0, p0, Lp4/z;->a:Ljava/util/Hashtable;

    .line 2
    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lp4/i;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lp4/z;->b:Ljava/util/Hashtable;

    .line 4
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp4/s;

    if-nez p1, :cond_1

    return-object v0

    .line 5
    :cond_1
    invoke-interface {p2, p3, p4}, Lp4/i;->G(Lr4/k;[B)[B

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    .line 6
    :cond_2
    array-length v0, v1

    invoke-interface {p1}, Lp4/s;->S()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 7
    array-length p2, v1

    invoke-interface {p1}, Lp4/s;->w()I

    move-result p3

    if-le p2, p3, :cond_3

    .line 8
    invoke-interface {p1}, Lp4/s;->w()I

    move-result p2

    new-array p2, p2, [B

    .line 9
    invoke-interface {p1}, Lp4/s;->w()I

    move-result p1

    const/4 p3, 0x0

    invoke-static {v1, p3, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_3
    return-object v1

    .line 10
    :cond_4
    invoke-interface {p1, v1, p3, p4, p2}, Lp4/s;->L([BLr4/k;[BLp4/i;)[B

    move-result-object p1

    return-object p1
.end method

.method public y(Lr4/j;Lr4/k;[B)[B
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/z;->a:Ljava/util/Hashtable;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp4/i;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p1, p2, p3}, Lp4/i;->G(Lr4/k;[B)[B

    move-result-object p1

    return-object p1
.end method
