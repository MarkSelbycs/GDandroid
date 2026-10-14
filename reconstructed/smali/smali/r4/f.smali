.class public Lr4/f;
.super Lr4/m;
.source "GenericAddress.java"


# static fields
.field public static final e:Ln4/a;

.field public static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lr4/b;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public d:Lr4/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lr4/f;

    invoke-static {v0}, Ln4/b;->d(Ljava/lang/Class;)Ln4/a;

    move-result-object v0

    sput-object v0, Lr4/f;->e:Ln4/a;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lr4/f;->f:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr4/m;-><init>()V

    return-void
.end method

.method public constructor <init>(Lr4/m;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lr4/m;-><init>()V

    .line 3
    iput-object p1, p0, Lr4/f;->d:Lr4/m;

    return-void
.end method

.method public static H(Ljava/lang/String;)Lr4/b;
    .locals 3

    .line 1
    sget-object v0, Lr4/f;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lr4/f;->I()V

    :cond_0
    const/16 v0, 0x3a

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v1, "udp"

    .line 6
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 7
    sget-object v1, Lr4/f;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 8
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/b;

    .line 9
    invoke-interface {v1, p0}, Lr4/b;->h(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    return-object v1

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    .line 10
    sget-object v1, Lr4/f;->e:Ln4/a;

    invoke-interface {v1, p0}, Ln4/a;->i(Ljava/io/Serializable;)V

    return-object v0

    .line 11
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Address type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " unknown"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized I()V
    .locals 10

    const-class v0, Lr4/f;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lk4/m;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "org.snmp4j.addresses"

    const-string v2, "address.properties"

    .line 2
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    const-class v2, Lr4/u;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 6
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 7
    invoke-virtual {v3}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 8
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual {v3, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 11
    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 12
    :catch_0
    :try_start_3
    sget-object v6, Lr4/f;->e:Ln4/a;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Class name \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' is not a subclass of "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v7, Lr4/b;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ln4/a;->c(Ljava/io/Serializable;)V

    goto :goto_0

    :catch_1
    move-exception v6

    .line 13
    sget-object v7, Lr4/f;->e:Ln4/a;

    invoke-interface {v7, v6}, Ln4/a;->c(Ljava/io/Serializable;)V

    goto :goto_0

    .line 14
    :cond_0
    sput-object v4, Lr4/f;->f:Ljava/util/Map;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_3

    :catch_2
    move-exception v1

    .line 16
    :try_start_5
    sget-object v2, Lr4/f;->e:Ln4/a;

    invoke-interface {v2, v1}, Ln4/a;->i(Ljava/io/Serializable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v3

    .line 17
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\': "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    sget-object v3, Lr4/f;->e:Ln4/a;

    invoke-interface {v3, v1}, Ln4/a;->c(Ljava/io/Serializable;)V

    .line 19
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 20
    :goto_1
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catch_4
    move-exception v2

    .line 21
    :try_start_8
    sget-object v3, Lr4/f;->e:Ln4/a;

    invoke-interface {v3, v2}, Ln4/a;->i(Ljava/io/Serializable;)V

    .line 22
    :goto_2
    throw v1

    .line 23
    :cond_1
    new-instance v2, Ljava/lang/InternalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not read \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' from classpath!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 24
    :cond_2
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const-string v2, "udp"

    .line 25
    const-class v3, Lr4/s;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tcp"

    .line 26
    const-class v3, Lr4/o;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ip"

    .line 27
    const-class v3, Lr4/h;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tls"

    .line 28
    const-class v3, Lr4/q;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sput-object v1, Lr4/f;->f:Ljava/util/Map;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 30
    :goto_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public M(Lr4/m;)V
    .locals 0

    iput-object p1, p0, Lr4/f;->d:Lr4/m;

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lr4/f;->d:Lr4/m;

    invoke-virtual {v0}, Lr4/a;->c()I

    move-result v0

    return v0
.end method

.method public c0()Lr4/b;
    .locals 1

    iget-object v0, p0, Lr4/f;->d:Lr4/m;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lr4/f;

    iget-object v1, p0, Lr4/f;->d:Lr4/m;

    invoke-direct {v0, v1}, Lr4/f;-><init>(Lr4/m;)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lr4/u;

    invoke-virtual {p0, p1}, Lr4/f;->u(Lr4/u;)I

    move-result p1

    return p1
.end method

.method public e(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lr4/f;->d:Lr4/m;

    invoke-virtual {v0, p1}, Lr4/a;->e(Ljava/io/OutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lr4/f;->d:Lr4/m;

    invoke-virtual {v0, p1}, Lr4/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lr4/f;->d:Lr4/m;

    invoke-virtual {v0}, Lr4/a;->f()I

    move-result v0

    return v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lr4/f;->H(Ljava/lang/String;)Lr4/b;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lr4/m;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lr4/m;

    invoke-virtual {p0, p1}, Lr4/f;->M(Lr4/m;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lr4/f;->d:Lr4/m;

    invoke-virtual {v0}, Lr4/a;->hashCode()I

    move-result v0

    return v0
.end method

.method public j(Ll4/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/f;->d:Lr4/m;

    invoke-virtual {v0}, Lr4/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lr4/u;)I
    .locals 1

    iget-object v0, p0, Lr4/f;->d:Lr4/m;

    invoke-virtual {v0, p1}, Lr4/a;->u(Lr4/u;)I

    move-result p1

    return p1
.end method
