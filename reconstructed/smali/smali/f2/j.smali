.class public Lf2/j;
.super Ljava/lang/Object;
.source "JSONNull.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lf2/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lf2/j;

    invoke-direct {v0}, Lf2/j;-><init>()V

    sput-object v0, Lf2/j;->a:Lf2/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "null"

    return-object v0
.end method
