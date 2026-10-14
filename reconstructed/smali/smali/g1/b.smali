.class public Lg1/b;
.super Ljava/lang/Object;
.source "AnnotationUtil.java"


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/annotation/Target;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/annotation/Retention;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/lang/annotation/Inherited;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljava/lang/annotation/Documented;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Ljava/lang/SuppressWarnings;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Override;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Ljava/lang/Deprecated;

    aput-object v2, v0, v1

    invoke-static {v0}, Ll1/c;->k([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lg1/b;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lg1/b;->e(Ljava/lang/reflect/AnnotatedElement;)Lg1/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lg1/c;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static b(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lg1/b;->a(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lg1/b;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0}, Lg1/b;->c(Ljava/lang/Class;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static e(Ljava/lang/reflect/AnnotatedElement;)Lg1/c;
    .locals 1

    .line 1
    instance-of v0, p0, Lg1/c;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lg1/c;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lg1/c;

    invoke-direct {v0, p0}, Lg1/c;-><init>(Ljava/lang/reflect/AnnotatedElement;)V

    return-object v0
.end method
