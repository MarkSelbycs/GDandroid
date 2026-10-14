.class public final Lp3/f$a;
.super Ljava/lang/Object;
.source "Progressions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lm3/g;)V
    .locals 0

    invoke-direct {p0}, Lp3/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)Lp3/f;
    .locals 1

    new-instance v0, Lp3/f;

    invoke-direct {v0, p1, p2, p3}, Lp3/f;-><init>(III)V

    return-object v0
.end method
