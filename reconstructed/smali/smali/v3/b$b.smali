.class public final Lv3/b$b;
.super Ljava/lang/Object;
.source "BufferedChannel.kt"

# interfaces
.implements Lt3/c2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lt3/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt3/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lt3/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt3/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lt3/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt3/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lv3/b$b;->a:Lt3/j;

    return-object v0
.end method

.method public d(Ly3/e0;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly3/e0<",
            "*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lv3/b$b;->b:Lt3/k;

    invoke-virtual {v0, p1, p2}, Lt3/k;->d(Ly3/e0;I)V

    return-void
.end method
