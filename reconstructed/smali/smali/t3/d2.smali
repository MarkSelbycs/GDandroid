.class public final Lt3/d2;
.super Ld3/a;
.source "Unconfined.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt3/d2$a;
    }
.end annotation


# static fields
.field public static final c:Lt3/d2$a;


# instance fields
.field public b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lt3/d2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt3/d2$a;-><init>(Lm3/g;)V

    sput-object v0, Lt3/d2;->c:Lt3/d2$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lt3/d2;->c:Lt3/d2$a;

    invoke-direct {p0, v0}, Ld3/a;-><init>(Ld3/g$c;)V

    return-void
.end method
