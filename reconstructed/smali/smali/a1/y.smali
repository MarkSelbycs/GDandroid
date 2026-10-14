.class public La1/y;
.super Ljava/lang/Object;
.source "WorkForegroundUpdater.java"

# interfaces
.implements Lq0/i;


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Lc1/b;

.field public final b:Ly0/a;

.field public final c:Lz0/v;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "WMFgUpdater"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La1/y;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Ly0/a;Lc1/b;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, La1/y;->b:Ly0/a;

    .line 3
    iput-object p3, p0, La1/y;->a:Lc1/b;

    .line 4
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->J()Lz0/v;

    move-result-object p1

    iput-object p1, p0, La1/y;->c:Lz0/v;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/UUID;Lq0/h;)Lr2/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Lq0/h;",
            ")",
            "Lr2/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lb1/c;->t()Lb1/c;

    move-result-object v6

    .line 2
    iget-object v7, p0, La1/y;->a:Lc1/b;

    new-instance v8, La1/y$a;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, La1/y$a;-><init>(La1/y;Lb1/c;Ljava/util/UUID;Lq0/h;Landroid/content/Context;)V

    invoke-interface {v7, v8}, Lc1/b;->a(Ljava/lang/Runnable;)V

    return-object v6
.end method
