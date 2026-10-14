.class public final Lr0/u0$a;
.super Lm3/l;
.source "WorkerUpdater.kt"

# interfaces
.implements Ll3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr0/u0;->c(Lr0/p0;Ljava/lang/String;Lq0/b0;)Lq0/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm3/l;",
        "Ll3/a<",
        "La3/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lq0/b0;

.field public final synthetic c:Lr0/p0;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lr0/q;


# direct methods
.method public constructor <init>(Lq0/b0;Lr0/p0;Ljava/lang/String;Lr0/q;)V
    .locals 0

    iput-object p1, p0, Lr0/u0$a;->b:Lq0/b0;

    iput-object p2, p0, Lr0/u0$a;->c:Lr0/p0;

    iput-object p3, p0, Lr0/u0$a;->d:Ljava/lang/String;

    iput-object p4, p0, Lr0/u0$a;->e:Lr0/q;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lr0/u0$a;->b:Lq0/b0;

    invoke-static {v0}, Lb3/n;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lr0/c0;

    iget-object v2, p0, Lr0/u0$a;->c:Lr0/p0;

    iget-object v3, p0, Lr0/u0$a;->d:Ljava/lang/String;

    sget-object v4, Lq0/g;->b:Lq0/g;

    invoke-direct {v1, v2, v3, v4, v0}, Lr0/c0;-><init>(Lr0/p0;Ljava/lang/String;Lq0/g;Ljava/util/List;)V

    .line 3
    new-instance v0, La1/c;

    iget-object v2, p0, Lr0/u0$a;->e:Lr0/q;

    invoke-direct {v0, v1, v2}, La1/c;-><init>(Lr0/c0;Lr0/q;)V

    invoke-virtual {v0}, La1/c;->run()V

    return-void
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr0/u0$a;->b()V

    sget-object v0, La3/o;->a:La3/o;

    return-object v0
.end method
