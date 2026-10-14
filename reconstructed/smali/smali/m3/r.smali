.class public Lm3/r;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field public static final a:Lm3/s;

.field public static final b:[Lq3/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm3/s;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lm3/s;

    invoke-direct {v0}, Lm3/s;-><init>()V

    :goto_0
    sput-object v0, Lm3/r;->a:Lm3/s;

    const/4 v0, 0x0

    new-array v0, v0, [Lq3/b;

    .line 4
    sput-object v0, Lm3/r;->b:[Lq3/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lm3/i;)Lq3/d;
    .locals 1

    sget-object v0, Lm3/r;->a:Lm3/s;

    invoke-virtual {v0, p0}, Lm3/s;->a(Lm3/i;)Lq3/d;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Class;)Lq3/b;
    .locals 1

    sget-object v0, Lm3/r;->a:Lm3/s;

    invoke-virtual {v0, p0}, Lm3/s;->b(Ljava/lang/Class;)Lq3/b;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Class;)Lq3/c;
    .locals 2

    sget-object v0, Lm3/r;->a:Lm3/s;

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lm3/s;->c(Ljava/lang/Class;Ljava/lang/String;)Lq3/c;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lm3/n;)Lq3/f;
    .locals 1

    sget-object v0, Lm3/r;->a:Lm3/s;

    invoke-virtual {v0, p0}, Lm3/s;->d(Lm3/n;)Lq3/f;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lm3/h;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lm3/r;->a:Lm3/s;

    invoke-virtual {v0, p0}, Lm3/s;->e(Lm3/h;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lm3/l;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lm3/r;->a:Lm3/s;

    invoke-virtual {v0, p0}, Lm3/s;->f(Lm3/l;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
