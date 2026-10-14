.class public final synthetic Landroidx/work/impl/a$a;
.super Lm3/j;
.source "WorkManagerImplExt.kt"

# interfaces
.implements Ll3/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/a;->e(Landroid/content/Context;Landroidx/work/a;Lc1/b;Landroidx/work/impl/WorkDatabase;Lx0/m;Lr0/u;Ll3/t;ILjava/lang/Object;)Lr0/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm3/j;",
        "Ll3/t<",
        "Landroid/content/Context;",
        "Landroidx/work/a;",
        "Lc1/b;",
        "Landroidx/work/impl/WorkDatabase;",
        "Lx0/m;",
        "Lr0/u;",
        "Ljava/util/List<",
        "+",
        "Lr0/w;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final o:Landroidx/work/impl/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/a$a;

    invoke-direct {v0}, Landroidx/work/impl/a$a;-><init>()V

    sput-object v0, Landroidx/work/impl/a$a;->o:Landroidx/work/impl/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v2, Landroidx/work/impl/a;

    const/4 v1, 0x6

    const-string v3, "createSchedulers"

    const-string v4, "createSchedulers(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/constraints/trackers/Trackers;Landroidx/work/impl/Processor;)Ljava/util/List;"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lm3/j;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final I(Landroid/content/Context;Landroidx/work/a;Lc1/b;Landroidx/work/impl/WorkDatabase;Lx0/m;Lr0/u;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/work/a;",
            "Lc1/b;",
            "Landroidx/work/impl/WorkDatabase;",
            "Lx0/m;",
            "Lr0/u;",
            ")",
            "Ljava/util/List<",
            "Lr0/w;",
            ">;"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p2"

    invoke-static {p3, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p3"

    invoke-static {p4, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p4"

    invoke-static {p5, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p5"

    invoke-static {p6, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p6}, Landroidx/work/impl/a;->a(Landroid/content/Context;Landroidx/work/a;Lc1/b;Landroidx/work/impl/WorkDatabase;Lx0/m;Lr0/u;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Context;

    check-cast p2, Landroidx/work/a;

    check-cast p3, Lc1/b;

    check-cast p4, Landroidx/work/impl/WorkDatabase;

    check-cast p5, Lx0/m;

    check-cast p6, Lr0/u;

    invoke-virtual/range {p0 .. p6}, Landroidx/work/impl/a$a;->I(Landroid/content/Context;Landroidx/work/a;Lc1/b;Landroidx/work/impl/WorkDatabase;Lx0/m;Lr0/u;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
