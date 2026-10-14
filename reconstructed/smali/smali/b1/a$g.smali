.class public final Lb1/a$g;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:Lb1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb1/a<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final b:Lr2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr2/a<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb1/a;Lr2/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb1/a<",
            "TV;>;",
            "Lr2/a<",
            "+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb1/a$g;->a:Lb1/a;

    .line 3
    iput-object p2, p0, Lb1/a$g;->b:Lr2/a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb1/a$g;->a:Lb1/a;

    iget-object v0, v0, Lb1/a;->a:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lb1/a$g;->b:Lr2/a;

    invoke-static {v0}, Lb1/a;->j(Lr2/a;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    sget-object v1, Lb1/a;->f:Lb1/a$b;

    iget-object v2, p0, Lb1/a$g;->a:Lb1/a;

    invoke-virtual {v1, v2, p0, v0}, Lb1/a$b;->b(Lb1/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lb1/a$g;->a:Lb1/a;

    invoke-static {v0}, Lb1/a;->g(Lb1/a;)V

    :cond_1
    return-void
.end method
