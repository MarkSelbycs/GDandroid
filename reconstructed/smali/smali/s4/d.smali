.class public abstract Ls4/d;
.super Ls4/a;
.source "UdpTransportMapping.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls4/a<",
        "Lr4/s;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lr4/s;


# direct methods
.method public constructor <init>(Lr4/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls4/a;-><init>()V

    .line 2
    iput-object p1, p0, Ls4/d;->d:Lr4/s;

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lr4/b;",
            ">;"
        }
    .end annotation

    const-class v0, Lr4/s;

    return-object v0
.end method

.method public i()Lr4/s;
    .locals 1

    iget-object v0, p0, Ls4/d;->d:Lr4/s;

    return-object v0
.end method
