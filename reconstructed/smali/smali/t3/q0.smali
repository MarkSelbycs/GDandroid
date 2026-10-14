.class public final Lt3/q0;
.super Ljava/lang/Object;
.source "Dispatchers.kt"


# static fields
.field public static final a:Lt3/q0;

.field public static final b:Lt3/b0;

.field public static final c:Lt3/b0;

.field public static final d:Lt3/b0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt3/q0;

    invoke-direct {v0}, Lt3/q0;-><init>()V

    sput-object v0, Lt3/q0;->a:Lt3/q0;

    .line 1
    sget-object v0, La4/c;->i:La4/c;

    sput-object v0, Lt3/q0;->b:Lt3/b0;

    .line 2
    sget-object v0, Lt3/z1;->c:Lt3/z1;

    sput-object v0, Lt3/q0;->c:Lt3/b0;

    .line 3
    sget-object v0, La4/b;->d:La4/b;

    sput-object v0, Lt3/q0;->d:Lt3/b0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lt3/b0;
    .locals 3

    sget-object v0, Lt3/q0;->b:Lt3/b0;

    return-object v0
.end method

.method public static final b()Lt3/b0;
    .locals 2

    sget-object v0, Lt3/q0;->d:Lt3/b0;

    return-object v0
.end method

.method public static final c()Lt3/r1;
    .locals 3

    sget-object v0, Ly3/w;->c:Lt3/r1;

    return-object v0
.end method
