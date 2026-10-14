.class public final Lx3/e;
.super Ljava/lang/Object;
.source "NullSurrogate.kt"


# static fields
.field public static final a:Ly3/h0;

.field public static final b:Ly3/h0;

.field public static final c:Ly3/h0;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ly3/h0;

    const-string v1, "NULL"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lx3/e;->a:Ly3/h0;

    .line 2
    new-instance v0, Ly3/h0;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lx3/e;->b:Ly3/h0;

    .line 3
    new-instance v0, Ly3/h0;

    const-string v1, "DONE"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lx3/e;->c:Ly3/h0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
