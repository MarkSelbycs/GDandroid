.class public final Lv2/d;
.super Ljava/lang/Object;
.source "JsonAdapterAnnotationTypeAdapterFactory.java"

# interfaces
.implements Ls2/t;


# instance fields
.field public final a:Lu2/c;


# direct methods
.method public constructor <init>(Lu2/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv2/d;->a:Lu2/c;

    return-void
.end method

.method public static b(Lu2/c;Ls2/e;Lx2/a;Lt2/b;)Ls2/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu2/c;",
            "Ls2/e;",
            "Lx2/a<",
            "*>;",
            "Lt2/b;",
            ")",
            "Ls2/s<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Lt2/b;->value()Ljava/lang/Class;

    move-result-object p3

    .line 2
    const-class v0, Ls2/s;

    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p3}, Lx2/a;->a(Ljava/lang/Class;)Lx2/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu2/c;->a(Lx2/a;)Lu2/h;

    move-result-object p0

    invoke-interface {p0}, Lu2/h;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls2/s;

    goto :goto_0

    .line 4
    :cond_0
    const-class v0, Ls2/t;

    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {p3}, Lx2/a;->a(Ljava/lang/Class;)Lx2/a;

    move-result-object p3

    invoke-virtual {p0, p3}, Lu2/c;->a(Lx2/a;)Lu2/h;

    move-result-object p0

    .line 6
    invoke-interface {p0}, Lu2/h;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls2/t;

    .line 7
    invoke-interface {p0, p1, p2}, Ls2/t;->a(Ls2/e;Lx2/a;)Ls2/s;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p0}, Ls2/s;->a()Ls2/s;

    move-result-object p0

    :cond_1
    return-object p0

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Ls2/e;Lx2/a;)Ls2/s;
    .locals 2
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

    const-class v1, Lt2/b;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lt2/b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v1, p0, Lv2/d;->a:Lu2/c;

    invoke-static {v1, p1, p2, v0}, Lv2/d;->b(Lu2/c;Ls2/e;Lx2/a;Lt2/b;)Ls2/s;

    move-result-object p1

    return-object p1
.end method
