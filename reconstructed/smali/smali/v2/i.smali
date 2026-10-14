.class public final Lv2/i;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"

# interfaces
.implements Ls2/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/i$b;,
        Lv2/i$c;
    }
.end annotation


# instance fields
.field public final a:Lu2/c;

.field public final b:Ls2/d;

.field public final c:Lu2/d;


# direct methods
.method public constructor <init>(Lu2/c;Ls2/d;Lu2/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv2/i;->a:Lu2/c;

    .line 3
    iput-object p2, p0, Lv2/i;->b:Ls2/d;

    .line 4
    iput-object p3, p0, Lv2/i;->c:Lu2/d;

    return-void
.end method

.method public static d(Ljava/lang/reflect/Field;ZLu2/d;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lu2/d;->d(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0, p1}, Lu2/d;->e(Ljava/lang/reflect/Field;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g(Ls2/d;Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls2/d;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lt2/c;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lt2/c;

    .line 2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p0, p1}, Ls2/d;->b(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {v0}, Lt2/c;->value()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {v0}, Lt2/c;->alternate()[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v2, p0, v0

    .line 6
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method


# virtual methods
.method public a(Ls2/e;Lx2/a;)Ls2/s;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls2/e;",
            "Lx2/a<",
            "TT;>;)",
            "Ls2/s<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lx2/a;->c()Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v1, p0, Lv2/i;->a:Lu2/c;

    invoke-virtual {v1, p2}, Lu2/c;->a(Lx2/a;)Lu2/h;

    move-result-object v1

    .line 4
    new-instance v2, Lv2/i$b;

    invoke-virtual {p0, p1, p2, v0}, Lv2/i;->e(Ls2/e;Lx2/a;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lv2/i$b;-><init>(Lu2/h;Ljava/util/Map;)V

    return-object v2
.end method

.method public final b(Ls2/e;Ljava/lang/reflect/Field;Ljava/lang/String;Lx2/a;ZZ)Lv2/i$c;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls2/e;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lx2/a<",
            "*>;ZZ)",
            "Lv2/i$c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p4}, Lx2/a;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lu2/i;->b(Ljava/lang/reflect/Type;)Z

    move-result v9

    .line 2
    new-instance v0, Lv2/i$a;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move v4, p5

    move/from16 v5, p6

    move-object v6, p1

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v9}, Lv2/i$a;-><init>(Lv2/i;Ljava/lang/String;ZZLs2/e;Ljava/lang/reflect/Field;Lx2/a;Z)V

    return-object v0
.end method

.method public c(Ljava/lang/reflect/Field;Z)Z
    .locals 1

    iget-object v0, p0, Lv2/i;->c:Lu2/d;

    invoke-static {p1, p2, v0}, Lv2/i;->d(Ljava/lang/reflect/Field;ZLu2/d;)Z

    move-result p1

    return p1
.end method

.method public final e(Ls2/e;Lx2/a;Ljava/lang/Class;)Ljava/util/Map;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls2/e;",
            "Lx2/a<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lv2/i$c;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 1
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v8

    .line 3
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lx2/a;->e()Ljava/lang/reflect/Type;

    move-result-object v9

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 4
    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq v11, v0, :cond_7

    .line 5
    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    .line 6
    array-length v13, v12

    const/4 v14, 0x0

    move v15, v14

    :goto_1
    if-ge v15, v13, :cond_6

    aget-object v6, v12, v15

    const/4 v0, 0x1

    .line 7
    invoke-virtual {v7, v6, v0}, Lv2/i;->c(Ljava/lang/reflect/Field;Z)Z

    move-result v1

    .line 8
    invoke-virtual {v7, v6, v14}, Lv2/i;->c(Ljava/lang/reflect/Field;Z)Z

    move-result v16

    if-nez v1, :cond_1

    if-nez v16, :cond_1

    goto/16 :goto_5

    .line 9
    :cond_1
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 10
    invoke-virtual {v10}, Lx2/a;->e()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v0, v11, v2}, Lu2/b;->p(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v17

    .line 11
    invoke-virtual {v7, v6}, Lv2/i;->h(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v5

    const/4 v0, 0x0

    move-object v4, v0

    move v3, v14

    .line 12
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 13
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    move/from16 v18, v14

    goto :goto_3

    :cond_2
    move/from16 v18, v1

    .line 14
    :goto_3
    invoke-static/range {v17 .. v17}, Lx2/a;->b(Ljava/lang/reflect/Type;)Lx2/a;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 p2, v2

    move-object v2, v6

    move/from16 v20, v3

    move-object/from16 v3, p2

    move-object v14, v4

    move-object/from16 v4, v19

    move-object/from16 v19, v5

    move/from16 v5, v18

    move-object/from16 v21, v6

    move/from16 v6, v16

    .line 15
    invoke-virtual/range {v0 .. v6}, Lv2/i;->b(Ls2/e;Ljava/lang/reflect/Field;Ljava/lang/String;Lx2/a;ZZ)Lv2/i$c;

    move-result-object v0

    move-object/from16 v1, p2

    .line 16
    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/i$c;

    if-nez v14, :cond_3

    move-object v4, v0

    goto :goto_4

    :cond_3
    move-object v4, v14

    :goto_4
    add-int/lit8 v3, v20, 0x1

    move/from16 v1, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v21

    const/4 v14, 0x0

    goto :goto_2

    :cond_4
    move-object v14, v4

    if-nez v14, :cond_5

    :goto_5
    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x0

    goto :goto_1

    .line 17
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declares multiple JSON fields named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lv2/i$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_6
    invoke-virtual {v10}, Lx2/a;->e()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v11, v1}, Lu2/b;->p(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lx2/a;->b(Ljava/lang/reflect/Type;)Lx2/a;

    move-result-object v10

    .line 19
    invoke-virtual {v10}, Lx2/a;->c()Ljava/lang/Class;

    move-result-object v11

    goto/16 :goto_0

    :cond_7
    return-object v8
.end method

.method public f(Ls2/e;Ljava/lang/reflect/Field;Lx2/a;)Ls2/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls2/e;",
            "Ljava/lang/reflect/Field;",
            "Lx2/a<",
            "*>;)",
            "Ls2/s<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Lt2/b;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    check-cast p2, Lt2/b;

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Lv2/i;->a:Lu2/c;

    invoke-static {v0, p1, p3, p2}, Lv2/d;->b(Lu2/c;Ls2/e;Lx2/a;Lt2/b;)Ls2/s;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    .line 3
    :cond_0
    invoke-virtual {p1, p3}, Ls2/e;->g(Lx2/a;)Ls2/s;

    move-result-object p1

    return-object p1
.end method

.method public final h(Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lv2/i;->b:Ls2/d;

    invoke-static {v0, p1}, Lv2/i;->g(Ls2/d;Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
