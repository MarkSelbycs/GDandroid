.class public final Lcom/msec/vaq;
.super Ljava/lang/Object;
.source "com/msec/vaq.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/Object;
    .locals 4

    const-class v0, Lcom/msec/bs$a;

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method
