.class public final La3/i;
.super Ljava/lang/Object;
.source "Result.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La3/i$a;,
        La3/i$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final a:La3/i$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, La3/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La3/i$a;-><init>(Lm3/g;)V

    sput-object v0, La3/i;->a:La3/i$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    return-object p0
.end method

.method public static final c(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    instance-of v0, p0, La3/i$b;

    if-eqz v0, :cond_0

    check-cast p0, La3/i$b;

    iget-object p0, p0, La3/i$b;->a:Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final e(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, La3/i$b;

    return p0
.end method

.method public static final f(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, La3/i$b;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
