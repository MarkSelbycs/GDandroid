.class public Le2/c0;
.super Ljava/lang/Object;
.source "SystemPropsUtil.java"


# static fields
.field public static a:Ljava/lang/String; = "hutool.date.lenient"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Le2/c0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Le2/c0;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lb2/c;->w(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-nez p1, :cond_0

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p0, v2, v0

    const-string v3, "Caught a SecurityException reading the system property \'{}\'; the SystemUtil property value will default to null."

    .line 2
    invoke-static {v3, v2}, Lv1/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 3
    :try_start_1
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    if-nez p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v0

    const-string p0, "Caught a SecurityException reading the system env \'{}\'; the SystemUtil env value will default to null."

    .line 4
    invoke-static {p0, p1}, Lv1/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-object v2
.end method

.method public static d(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-static {p0}, Le2/c0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return p1

    .line 2
    :cond_0
    invoke-static {p0}, Le2/d;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
