.class public final Lr3/h;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lr3/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr3/b<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:Lr3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ll3/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/l<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr3/b;Ll3/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr3/b<",
            "+TT;>;",
            "Ll3/l<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr3/h;->a:Lr3/b;

    iput-object p2, p0, Lr3/h;->b:Ll3/l;

    return-void
.end method

.method public static final synthetic a(Lr3/h;)Lr3/b;
    .locals 0

    iget-object p0, p0, Lr3/h;->a:Lr3/b;

    return-object p0
.end method

.method public static final synthetic b(Lr3/h;)Ll3/l;
    .locals 0

    iget-object p0, p0, Lr3/h;->b:Ll3/l;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lr3/h$a;

    invoke-direct {v0, p0}, Lr3/h$a;-><init>(Lr3/h;)V

    return-object v0
.end method
