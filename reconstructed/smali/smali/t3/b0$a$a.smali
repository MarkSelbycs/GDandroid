.class public final Lt3/b0$a$a;
.super Lm3/l;
.source "CoroutineDispatcher.kt"

# interfaces
.implements Ll3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt3/b0$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm3/l;",
        "Ll3/l<",
        "Ld3/g$b;",
        "Lt3/b0;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lt3/b0$a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt3/b0$a$a;

    invoke-direct {v0}, Lt3/b0$a$a;-><init>()V

    sput-object v0, Lt3/b0$a$a;->b:Lt3/b0$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ld3/g$b;)Lt3/b0;
    .locals 1

    instance-of v0, p1, Lt3/b0;

    if-eqz v0, :cond_0

    check-cast p1, Lt3/b0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ld3/g$b;

    invoke-virtual {p0, p1}, Lt3/b0$a$a;->b(Ld3/g$b;)Lt3/b0;

    move-result-object p1

    return-object p1
.end method
