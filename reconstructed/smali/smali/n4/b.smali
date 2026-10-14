.class public Ln4/b;
.super Ljava/lang/Object;
.source "LogFactory.java"


# static fields
.field public static a:Ln4/b;

.field public static b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    .line 1
    sget-boolean v0, Ln4/b;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Ln4/b;->b:Z

    .line 3
    invoke-static {}, Ln4/b;->c()V

    :cond_0
    return-void
.end method

.method public static declared-synchronized c()V
    .locals 4

    const-class v0, Ln4/b;

    monitor-enter v0

    :try_start_0
    const-string v1, "snmp4j.LogFactory"

    const/4 v2, 0x0

    .line 1
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln4/b;

    sput-object v1, Ln4/b;->a:Ln4/b;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 5
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v1

    .line 6
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    .line 8
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static d(Ljava/lang/Class;)Ln4/a;
    .locals 1

    .line 1
    invoke-static {}, Ln4/b;->a()V

    .line 2
    sget-object v0, Ln4/b;->a:Ln4/b;

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Ln4/c;->a:Ln4/c;

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln4/b;->b(Ljava/lang/String;)Ln4/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ln4/a;
    .locals 0

    sget-object p1, Ln4/c;->a:Ln4/c;

    return-object p1
.end method
