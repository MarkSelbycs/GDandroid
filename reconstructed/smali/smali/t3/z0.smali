.class public abstract Lt3/z0;
.super Lt3/b0;
.source "Executors.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt3/z0$a;
    }
.end annotation


# static fields
.field public static final c:Lt3/z0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lt3/z0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt3/z0$a;-><init>(Lm3/g;)V

    sput-object v0, Lt3/z0;->c:Lt3/z0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lt3/b0;-><init>()V

    return-void
.end method
