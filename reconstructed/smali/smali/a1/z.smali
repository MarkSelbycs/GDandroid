.class public La1/z;
.super Ljava/lang/Object;
.source "WorkProgressUpdater.java"

# interfaces
.implements Lq0/u;


# static fields
.field public static final c:Ljava/lang/String;


# instance fields
.field public final a:Landroidx/work/impl/WorkDatabase;

.field public final b:Lc1/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkProgressUpdater"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La1/z;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Lc1/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La1/z;->a:Landroidx/work/impl/WorkDatabase;

    .line 3
    iput-object p2, p0, La1/z;->b:Lc1/b;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/UUID;Landroidx/work/b;)Lr2/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Landroidx/work/b;",
            ")",
            "Lr2/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lb1/c;->t()Lb1/c;

    move-result-object p1

    .line 2
    iget-object v0, p0, La1/z;->b:Lc1/b;

    new-instance v1, La1/z$a;

    invoke-direct {v1, p0, p2, p3, p1}, La1/z$a;-><init>(La1/z;Ljava/util/UUID;Landroidx/work/b;Lb1/c;)V

    invoke-interface {v0, v1}, Lc1/b;->a(Ljava/lang/Runnable;)V

    return-object p1
.end method
