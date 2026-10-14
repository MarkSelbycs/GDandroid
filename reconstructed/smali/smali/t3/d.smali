.class public final Lt3/d;
.super Ljava/lang/Object;
.source "CancellableContinuationImpl.kt"

# interfaces
.implements Lt3/u1;


# static fields
.field public static final a:Lt3/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lt3/d;

    invoke-direct {v0}, Lt3/d;-><init>()V

    sput-object v0, Lt3/d;->a:Lt3/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Active"

    return-object v0
.end method
