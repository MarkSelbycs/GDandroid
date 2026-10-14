.class public final Lt3/c0$a;
.super Ljava/lang/Object;
.source "CoroutineExceptionHandler.kt"

# interfaces
.implements Ld3/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt3/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld3/g$c<",
        "Lt3/c0;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:Lt3/c0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt3/c0$a;

    invoke-direct {v0}, Lt3/c0$a;-><init>()V

    sput-object v0, Lt3/c0$a;->a:Lt3/c0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
