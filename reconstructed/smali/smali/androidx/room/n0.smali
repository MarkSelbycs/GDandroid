.class public final Landroidx/room/n0;
.super Ljava/lang/Object;
.source "SQLiteCopyOpenHelperFactory.kt"

# interfaces
.implements Lf0/h$c;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/io/File;

.field public final c:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lf0/h$c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Lf0/h$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;",
            "Lf0/h$c;",
            ")V"
        }
    .end annotation

    const-string v0, "mDelegate"

    invoke-static {p4, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/n0;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroidx/room/n0;->b:Ljava/io/File;

    .line 4
    iput-object p3, p0, Landroidx/room/n0;->c:Ljava/util/concurrent/Callable;

    .line 5
    iput-object p4, p0, Landroidx/room/n0;->d:Lf0/h$c;

    return-void
.end method


# virtual methods
.method public a(Lf0/h$b;)Lf0/h;
    .locals 8

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/room/m0;

    .line 2
    iget-object v2, p1, Lf0/h$b;->a:Landroid/content/Context;

    .line 3
    iget-object v3, p0, Landroidx/room/n0;->a:Ljava/lang/String;

    .line 4
    iget-object v4, p0, Landroidx/room/n0;->b:Ljava/io/File;

    .line 5
    iget-object v5, p0, Landroidx/room/n0;->c:Ljava/util/concurrent/Callable;

    .line 6
    iget-object v1, p1, Lf0/h$b;->c:Lf0/h$a;

    iget v6, v1, Lf0/h$a;->a:I

    .line 7
    iget-object v1, p0, Landroidx/room/n0;->d:Lf0/h$c;

    invoke-interface {v1, p1}, Lf0/h$c;->a(Lf0/h$b;)Lf0/h;

    move-result-object v7

    move-object v1, v0

    .line 8
    invoke-direct/range {v1 .. v7}, Landroidx/room/m0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;ILf0/h;)V

    return-object v0
.end method
