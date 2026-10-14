.class public Lcom/msec/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/msec/d;->a:Z

    return-void
.end method

.method public static a()Z
    .locals 2

    sget-boolean v0, Lcom/msec/d;->a:Z

    return v0
.end method
