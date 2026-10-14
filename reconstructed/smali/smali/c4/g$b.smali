.class public final Lc4/g$b;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc4/g$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc4/g$b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lc4/g;
    .locals 3

    new-instance v0, Lc4/g;

    iget-object v1, p0, Lc4/g$b;->a:Ljava/util/List;

    invoke-static {v1}, Ld4/c;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lc4/g;-><init>(Ljava/util/List;Lj4/b;Lc4/g$a;)V

    return-object v0
.end method
