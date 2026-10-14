.class public Lcom/msec/bd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msec/bd$b;,
        Lcom/msec/bd$a;,
        Lcom/msec/bd$d;,
        Lcom/msec/bd$e;,
        Lcom/msec/bd$c;
    }
.end annotation


# static fields
.field private static a:Z


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

.method private static a(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 17

    if-eqz p0, :cond_c

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v4, v2, :cond_9

    aget-object v10, v1, v4

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->isPrimitive()Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/16 v16, 0x5a5

    const/4 v3, 0x4

    const/4 v14, 0x3

    const/4 v0, 0x2

    sparse-switch v15, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const/16 v15, 0x2da

    invoke-static {v15}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move v12, v13

    goto :goto_2

    :sswitch_1
    const/16 v15, 0x2d8

    invoke-static {v15}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move v12, v14

    goto :goto_2

    :sswitch_2
    const/16 v15, 0x2d9

    invoke-static {v15}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move v12, v0

    goto :goto_2

    :sswitch_3
    const/16 v15, 0x2db

    invoke-static {v15}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    goto :goto_2

    :sswitch_4
    invoke-static/range {v16 .. v16}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move v12, v3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v12, -0x1

    :goto_2
    if-eqz v12, :cond_7

    if-eq v12, v13, :cond_6

    if-eq v12, v0, :cond_5

    if-eq v12, v14, :cond_4

    if-eq v12, v3, :cond_3

    invoke-virtual {v11}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static/range {v16 .. v16}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    move-object v9, v10

    goto :goto_3

    :cond_4
    move v8, v13

    goto :goto_3

    :cond_5
    move v6, v13

    goto :goto_3

    :cond_6
    move v7, v13

    goto :goto_3

    :cond_7
    move v5, v13

    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    if-eqz v5, :cond_b

    if-eqz v6, :cond_b

    if-eqz v7, :cond_b

    if-eqz v8, :cond_b

    if-nez v9, :cond_a

    goto :goto_4

    :cond_a
    return-object v9

    :cond_b
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/msec/bd;->a(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0

    :cond_c
    :goto_5
    const/4 v0, 0x0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x78173a01 -> :sswitch_4
        -0x28264b1b -> :sswitch_3
        0x34ae5869 -> :sswitch_2
        0x54f22bac -> :sswitch_1
        0x7305e97a -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/16 p0, 0x693

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/msec/bd;

    monitor-enter v0

    const/16 v1, 0x692

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic a(Landroid/webkit/WebView;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/msec/bd;->b(Landroid/webkit/WebView;Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Landroid/webkit/WebView;Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/16 p0, 0x691

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Landroid/webkit/WebView;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/msec/bd;->b(Landroid/webkit/WebView;Z)V

    return-void
.end method

.method private static a(Landroid/webkit/WebView;Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/16 p0, 0x690

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/webkit/WebView;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/16 p0, 0x69f

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static b(Landroid/webkit/WebView;Z)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const/16 p0, 0x69e

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
