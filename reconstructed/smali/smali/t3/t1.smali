.class public final Lt3/t1;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Lt3/r0;
.implements Lt3/p;


# static fields
.field public static final a:Lt3/t1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lt3/t1;

    invoke-direct {v0}, Lt3/t1;-><init>()V

    sput-object v0, Lt3/t1;->a:Lt3/t1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public g(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NonDisposableHandle"

    return-object v0
.end method
