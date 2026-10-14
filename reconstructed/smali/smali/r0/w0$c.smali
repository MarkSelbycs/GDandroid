.class public Lr0/w0$c;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroidx/work/c;

.field public c:Ly0/a;

.field public d:Lc1/b;

.field public e:Landroidx/work/a;

.field public f:Landroidx/work/impl/WorkDatabase;

.field public g:Lz0/u;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Landroidx/work/WorkerParameters$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/a;Lc1/b;Ly0/a;Landroidx/work/impl/WorkDatabase;Lz0/u;Ljava/util/List;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/work/a;",
            "Lc1/b;",
            "Ly0/a;",
            "Landroidx/work/impl/WorkDatabase;",
            "Lz0/u;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/work/WorkerParameters$a;

    invoke-direct {v0}, Landroidx/work/WorkerParameters$a;-><init>()V

    iput-object v0, p0, Lr0/w0$c;->i:Landroidx/work/WorkerParameters$a;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lr0/w0$c;->a:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lr0/w0$c;->d:Lc1/b;

    .line 5
    iput-object p4, p0, Lr0/w0$c;->c:Ly0/a;

    .line 6
    iput-object p2, p0, Lr0/w0$c;->e:Landroidx/work/a;

    .line 7
    iput-object p5, p0, Lr0/w0$c;->f:Landroidx/work/impl/WorkDatabase;

    .line 8
    iput-object p6, p0, Lr0/w0$c;->g:Lz0/u;

    .line 9
    iput-object p7, p0, Lr0/w0$c;->h:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lr0/w0$c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lr0/w0$c;->h:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public b()Lr0/w0;
    .locals 1

    new-instance v0, Lr0/w0;

    invoke-direct {v0, p0}, Lr0/w0;-><init>(Lr0/w0$c;)V

    return-object v0
.end method

.method public c(Landroidx/work/WorkerParameters$a;)Lr0/w0$c;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lr0/w0$c;->i:Landroidx/work/WorkerParameters$a;

    :cond_0
    return-object p0
.end method
