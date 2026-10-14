.class public abstract Lr4/a;
.super Ljava/lang/Object;
.source "AbstractVariable.java"

# interfaces
.implements Lr4/u;
.implements Ljava/io/Serializable;


# static fields
.field public static final a:[[Ljava/lang/Object;

.field public static b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class<",
            "+",
            "Lr4/u;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final c:Ln4/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const/16 v0, 0xf

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Integer32"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BIT STRING"

    aput-object v3, v2, v4

    const/4 v3, 0x3

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "OCTET STRING"

    aput-object v6, v2, v4

    const/4 v6, 0x4

    .line 3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "OBJECT IDENTIFIER"

    aput-object v7, v2, v4

    const/4 v7, 0x6

    .line 4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TimeTicks"

    aput-object v3, v2, v4

    const/16 v3, 0x43

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Counter"

    aput-object v3, v2, v4

    const/16 v3, 0x41

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "Counter64"

    aput-object v6, v2, v4

    const/16 v6, 0x46

    .line 7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "EndOfMibView"

    aput-object v6, v2, v4

    const/16 v6, 0x82

    .line 8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v6, 0x7

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "Gauge"

    aput-object v6, v2, v4

    const/16 v6, 0x42

    .line 9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v7, 0x8

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "Unsigned32"

    aput-object v7, v2, v4

    aput-object v6, v2, v5

    const/16 v6, 0x9

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "IpAddress"

    aput-object v6, v2, v4

    const/16 v6, 0x40

    .line 10
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v6, 0xa

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "NoSuchInstance"

    aput-object v6, v2, v4

    const/16 v6, 0x81

    .line 11
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v6, 0xb

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "NoSuchObject"

    aput-object v6, v2, v4

    const/16 v6, 0x80

    .line 12
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v6, 0xc

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "Null"

    aput-object v6, v2, v4

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Opaque"

    aput-object v2, v1, v4

    const/16 v2, 0x44

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lr4/a;->a:[[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 15
    sput-object v0, Lr4/a;->b:Ljava/util/Hashtable;

    .line 16
    const-class v0, Lr4/a;

    .line 17
    invoke-static {v0}, Ln4/b;->d(Ljava/lang/Class;)Ln4/a;

    move-result-object v0

    sput-object v0, Lr4/a;->c:Ln4/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static D(Lr4/a;Lr4/a;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lr4/a;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static declared-synchronized F()V
    .locals 9

    const-class v0, Lr4/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "org.snmp4j.smisyntaxes"

    const-string v2, "smisyntaxes.properties"

    .line 1
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    const-class v2, Lr4/u;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 5
    new-instance v4, Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Properties;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/Hashtable;-><init>(I)V

    .line 6
    invoke-virtual {v3}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual {v3, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 10
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v6}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 11
    :try_start_3
    sget-object v7, Lr4/a;->c:Ln4/a;

    invoke-interface {v7, v6}, Ln4/a;->c(Ljava/io/Serializable;)V

    goto :goto_0

    :catch_1
    move-exception v6

    .line 12
    sget-object v7, Lr4/a;->c:Ln4/a;

    invoke-interface {v7, v6}, Ln4/a;->c(Ljava/io/Serializable;)V

    goto :goto_0

    .line 13
    :cond_0
    sput-object v4, Lr4/a;->b:Ljava/util/Hashtable;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_2
    move-exception v1

    .line 15
    :try_start_5
    sget-object v2, Lr4/a;->c:Ln4/a;

    invoke-interface {v2, v1}, Ln4/a;->i(Ljava/io/Serializable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 16
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

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

    .line 18
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    sget-object v3, Lr4/a;->c:Ln4/a;

    invoke-interface {v3, v1}, Ln4/a;->c(Ljava/io/Serializable;)V

    .line 20
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 21
    :goto_2
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catch_4
    move-exception v2

    .line 22
    :try_start_8
    sget-object v3, Lr4/a;->c:Ln4/a;

    invoke-interface {v3, v2}, Ln4/a;->i(Ljava/io/Serializable;)V

    .line 23
    :goto_3
    throw v1

    .line 24
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
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static x(Ll4/b;)Lr4/u;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ll4/b;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lk4/m;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lr4/a;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lr4/a;->F()V

    :cond_0
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Ll4/b;->mark(I)V

    .line 5
    invoke-virtual {p0}, Ll4/b;->read()I

    move-result v0

    .line 6
    invoke-static {}, Lk4/m;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    sget-object v1, Lr4/a;->b:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 8
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/u;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not instantiate variable syntax class for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :catch_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not access variable syntax class for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered unsupported variable syntax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_2
    invoke-static {v0}, Lr4/a;->y(I)Lr4/u;

    move-result-object v0

    .line 15
    :goto_0
    invoke-virtual {p0}, Ll4/b;->reset()V

    .line 16
    invoke-interface {v0, p0}, Ll4/d;->j(Ll4/b;)V

    return-object v0

    .line 17
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "InputStream for decoding a Variable must support marks"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static y(I)Lr4/u;
    .locals 3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/16 v0, 0x46

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported variable syntax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :pswitch_0
    new-instance p0, Lr4/i;

    const/16 v0, 0x82

    invoke-direct {p0, v0}, Lr4/i;-><init>(I)V

    return-object p0

    .line 3
    :pswitch_1
    new-instance p0, Lr4/i;

    const/16 v0, 0x81

    invoke-direct {p0, v0}, Lr4/i;-><init>(I)V

    return-object p0

    .line 4
    :pswitch_2
    new-instance p0, Lr4/i;

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lr4/i;-><init>(I)V

    return-object p0

    .line 5
    :pswitch_3
    new-instance p0, Lr4/l;

    invoke-direct {p0}, Lr4/l;-><init>()V

    return-object p0

    .line 6
    :pswitch_4
    new-instance p0, Lr4/p;

    invoke-direct {p0}, Lr4/p;-><init>()V

    return-object p0

    .line 7
    :pswitch_5
    new-instance p0, Lr4/e;

    invoke-direct {p0}, Lr4/e;-><init>()V

    return-object p0

    .line 8
    :pswitch_6
    new-instance p0, Lr4/c;

    invoke-direct {p0}, Lr4/c;-><init>()V

    return-object p0

    .line 9
    :pswitch_7
    new-instance p0, Lr4/h;

    invoke-direct {p0}, Lr4/h;-><init>()V

    return-object p0

    .line 10
    :cond_0
    new-instance p0, Lr4/j;

    invoke-direct {p0}, Lr4/j;-><init>()V

    return-object p0

    .line 11
    :cond_1
    new-instance p0, Lr4/i;

    invoke-direct {p0}, Lr4/i;-><init>()V

    return-object p0

    .line 12
    :cond_2
    new-instance p0, Lr4/k;

    invoke-direct {p0}, Lr4/k;-><init>()V

    return-object p0

    .line 13
    :cond_3
    new-instance p0, Lr4/d;

    invoke-direct {p0}, Lr4/d;-><init>()V

    return-object p0

    .line 14
    :cond_4
    new-instance p0, Lr4/g;

    invoke-direct {p0}, Lr4/g;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract c()I
.end method

.method public abstract clone()Ljava/lang/Object;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lr4/u;

    invoke-virtual {p0, p1}, Lr4/a;->u(Lr4/u;)I

    move-result p1

    return p1
.end method

.method public abstract e(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract f()I
.end method

.method public abstract hashCode()I
.end method

.method public q()Z
    .locals 1

    invoke-virtual {p0}, Lr4/a;->c()I

    move-result v0

    invoke-static {v0}, Lr4/i;->H(I)Z

    move-result v0

    return v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract u(Lr4/u;)I
.end method
