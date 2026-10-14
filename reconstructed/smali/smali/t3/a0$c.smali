.class public final Lt3/a0$c;
.super Lm3/l;
.source "CoroutineContext.kt"

# interfaces
.implements Ll3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt3/a0;->c(Ld3/g;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm3/l;",
        "Ll3/p<",
        "Ljava/lang/Boolean;",
        "Ld3/g$b;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lt3/a0$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt3/a0$c;

    invoke-direct {v0}, Lt3/a0$c;-><init>()V

    sput-object v0, Lt3/a0$c;->b:Lt3/a0$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(ZLd3/g$b;)Ljava/lang/Boolean;
    .locals 0

    if-nez p1, :cond_1

    instance-of p1, p2, Lt3/z;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ld3/g$b;

    invoke-virtual {p0, p1, p2}, Lt3/a0$c;->b(ZLd3/g$b;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
