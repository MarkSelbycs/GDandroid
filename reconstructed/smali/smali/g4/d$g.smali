.class public Lg4/d$g;
.super Ld4/b;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/d;->k0(ILg4/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lg4/a;

.field public final synthetic d:Lg4/d;


# direct methods
.method public varargs constructor <init>(Lg4/d;Ljava/lang/String;[Ljava/lang/Object;ILg4/a;)V
    .locals 0

    iput-object p1, p0, Lg4/d$g;->d:Lg4/d;

    iput p4, p0, Lg4/d$g;->b:I

    iput-object p5, p0, Lg4/d$g;->c:Lg4/a;

    invoke-direct {p0, p2, p3}, Ld4/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lg4/d$g;->d:Lg4/d;

    invoke-static {v0}, Lg4/d;->K(Lg4/d;)Lg4/m;

    move-result-object v0

    iget v1, p0, Lg4/d$g;->b:I

    iget-object v2, p0, Lg4/d$g;->c:Lg4/a;

    invoke-interface {v0, v1, v2}, Lg4/m;->c(ILg4/a;)V

    .line 2
    iget-object v0, p0, Lg4/d$g;->d:Lg4/d;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lg4/d$g;->d:Lg4/d;

    invoke-static {v1}, Lg4/d;->M(Lg4/d;)Ljava/util/Set;

    move-result-object v1

    iget v2, p0, Lg4/d$g;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
