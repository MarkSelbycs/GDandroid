.class public Lg4/d$f;
.super Ld4/b;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/d;->h0(ILokio/BufferedSource;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lokio/Buffer;

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:Lg4/d;


# direct methods
.method public varargs constructor <init>(Lg4/d;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V
    .locals 0

    iput-object p1, p0, Lg4/d$f;->f:Lg4/d;

    iput p4, p0, Lg4/d$f;->b:I

    iput-object p5, p0, Lg4/d$f;->c:Lokio/Buffer;

    iput p6, p0, Lg4/d$f;->d:I

    iput-boolean p7, p0, Lg4/d$f;->e:Z

    invoke-direct {p0, p2, p3}, Ld4/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lg4/d$f;->f:Lg4/d;

    invoke-static {v0}, Lg4/d;->K(Lg4/d;)Lg4/m;

    move-result-object v0

    iget v1, p0, Lg4/d$f;->b:I

    iget-object v2, p0, Lg4/d$f;->c:Lokio/Buffer;

    iget v3, p0, Lg4/d$f;->d:I

    iget-boolean v4, p0, Lg4/d$f;->e:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lg4/m;->d(ILokio/BufferedSource;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lg4/d$f;->f:Lg4/d;

    iget-object v1, v1, Lg4/d;->y:Lg4/c;

    iget v2, p0, Lg4/d$f;->b:I

    sget-object v3, Lg4/a;->t:Lg4/a;

    invoke-interface {v1, v2, v3}, Lg4/c;->a(ILg4/a;)V

    :cond_0
    if-nez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lg4/d$f;->e:Z

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, Lg4/d$f;->f:Lg4/d;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v1, p0, Lg4/d$f;->f:Lg4/d;

    invoke-static {v1}, Lg4/d;->M(Lg4/d;)Ljava/util/Set;

    move-result-object v1

    iget v2, p0, Lg4/d$f;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
