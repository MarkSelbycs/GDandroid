.class public final Landroidx/work/WorkManagerInitializer;
.super Ljava/lang/Object;
.source "WorkManagerInitializer.java"

# interfaces
.implements Li0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li0/a<",
        "Lq0/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WrkMgrInitializer"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/WorkManagerInitializer;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Li0/a<",
            "*>;>;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/work/WorkManagerInitializer;->c(Landroid/content/Context;)Lq0/z;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;)Lq0/z;
    .locals 3

    .line 1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Landroidx/work/WorkManagerInitializer;->a:Ljava/lang/String;

    const-string v2, "Initializing WorkManager with default configuration."

    invoke-virtual {v0, v1, v2}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroidx/work/a$a;

    invoke-direct {v0}, Landroidx/work/a$a;-><init>()V

    invoke-virtual {v0}, Landroidx/work/a$a;->a()Landroidx/work/a;

    move-result-object v0

    invoke-static {p1, v0}, Lq0/z;->f(Landroid/content/Context;Landroidx/work/a;)V

    .line 3
    invoke-static {p1}, Lq0/z;->e(Landroid/content/Context;)Lq0/z;

    move-result-object p1

    return-object p1
.end method
