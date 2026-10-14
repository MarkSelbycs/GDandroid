.class public La1/b$a;
.super La1/b;
.source "CancelWorkRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La1/b;->c(Ljava/util/UUID;Lr0/p0;)La1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lr0/p0;

.field public final synthetic c:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lr0/p0;Ljava/util/UUID;)V
    .locals 0

    iput-object p1, p0, La1/b$a;->b:Lr0/p0;

    iput-object p2, p0, La1/b$a;->c:Ljava/util/UUID;

    invoke-direct {p0}, La1/b;-><init>()V

    return-void
.end method


# virtual methods
.method public i()V
    .locals 3

    .line 1
    iget-object v0, p0, La1/b$a;->b:Lr0/p0;

    invoke-virtual {v0}, Lr0/p0;->u()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/room/i0;->e()V

    .line 3
    :try_start_0
    iget-object v1, p0, La1/b$a;->b:Lr0/p0;

    iget-object v2, p0, La1/b$a;->c:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, La1/b;->a(Lr0/p0;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Landroidx/room/i0;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Landroidx/room/i0;->i()V

    .line 6
    iget-object v0, p0, La1/b$a;->b:Lr0/p0;

    invoke-virtual {p0, v0}, La1/b;->h(Lr0/p0;)V

    return-void

    :catchall_0
    move-exception v1

    .line 7
    invoke-virtual {v0}, Landroidx/room/i0;->i()V

    .line 8
    throw v1
.end method
