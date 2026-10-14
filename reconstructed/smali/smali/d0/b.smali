.class public abstract Ld0/b;
.super Ljava/lang/Object;
.source "Migration.java"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ld0/b;->a:I

    .line 3
    iput p2, p0, Ld0/b;->b:I

    return-void
.end method


# virtual methods
.method public abstract a(Lf0/g;)V
.end method
