.class public final La4/e;
.super La4/g;
.source "Tasks.kt"


# static fields
.field public static final a:La4/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, La4/e;

    invoke-direct {v0}, La4/e;-><init>()V

    sput-object v0, La4/e;->a:La4/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La4/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
