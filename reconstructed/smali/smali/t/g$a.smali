.class public Lt/g$a;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:[Lt/g$b;


# direct methods
.method public constructor <init>(I[Lt/g$b;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lt/g$a;->a:I

    .line 3
    iput-object p2, p0, Lt/g$a;->b:[Lt/g$b;

    return-void
.end method

.method public static a(I[Lt/g$b;)Lt/g$a;
    .locals 1

    new-instance v0, Lt/g$a;

    invoke-direct {v0, p0, p1}, Lt/g$a;-><init>(I[Lt/g$b;)V

    return-object v0
.end method


# virtual methods
.method public b()[Lt/g$b;
    .locals 1

    iget-object v0, p0, Lt/g$a;->b:[Lt/g$b;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lt/g$a;->a:I

    return v0
.end method
