.class public final Lt3/c1;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lt3/d1;


# instance fields
.field public final a:Lt3/s1;


# direct methods
.method public constructor <init>(Lt3/s1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt3/c1;->a:Lt3/s1;

    return-void
.end method


# virtual methods
.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Lt3/s1;
    .locals 1

    iget-object v0, p0, Lt3/c1;->a:Lt3/s1;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
