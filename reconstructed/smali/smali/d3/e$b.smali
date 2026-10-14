.class public final Ld3/e$b;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"

# interfaces
.implements Ld3/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld3/g$c<",
        "Ld3/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:Ld3/e$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld3/e$b;

    invoke-direct {v0}, Ld3/e$b;-><init>()V

    sput-object v0, Ld3/e$b;->a:Ld3/e$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
