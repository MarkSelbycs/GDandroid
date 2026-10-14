.class public final Lt3/l;
.super Ljava/lang/Object;
.source "CancellableContinuationImpl.kt"


# static fields
.field public static final a:Ly3/h0;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ly3/h0;

    const-string v1, "RESUME_TOKEN"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lt3/l;->a:Ly3/h0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
