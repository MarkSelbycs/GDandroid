.class public Lk/c;
.super Ljava/lang/Object;
.source "Cache.java"


# instance fields
.field public a:Lk/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/g<",
            "Lk/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lk/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/g<",
            "Lk/i;",
            ">;"
        }
    .end annotation
.end field

.field public c:[Lk/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk/h;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lk/h;-><init>(I)V

    iput-object v0, p0, Lk/c;->a:Lk/g;

    .line 3
    new-instance v0, Lk/h;

    invoke-direct {v0, v1}, Lk/h;-><init>(I)V

    iput-object v0, p0, Lk/c;->b:Lk/g;

    const/16 v0, 0x20

    new-array v0, v0, [Lk/i;

    .line 4
    iput-object v0, p0, Lk/c;->c:[Lk/i;

    return-void
.end method
