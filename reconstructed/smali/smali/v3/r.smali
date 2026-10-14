.class public final Lv3/r;
.super Ljava/lang/Object;
.source "BufferedChannel.kt"

# interfaces
.implements Lt3/c2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lt3/c2;"
    }
.end annotation


# instance fields
.field public final a:Lt3/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt3/k<",
            "Lv3/h<",
            "+TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt3/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/k<",
            "-",
            "Lv3/h<",
            "+TE;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv3/r;->a:Lt3/k;

    return-void
.end method


# virtual methods
.method public d(Ly3/e0;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly3/e0<",
            "*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lv3/r;->a:Lt3/k;

    invoke-virtual {v0, p1, p2}, Lt3/k;->d(Ly3/e0;I)V

    return-void
.end method
