.class public final Lw3/i$b;
.super Lm3/l;
.source "Distinct.kt"

# interfaces
.implements Ll3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm3/l;",
        "Ll3/l<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lw3/i$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw3/i$b;

    invoke-direct {v0}, Lw3/i$b;-><init>()V

    sput-object v0, Lw3/i$b;->b:Lw3/i$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method
