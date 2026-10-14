.class public final Lr0/u0$b;
.super Lm3/l;
.source "WorkerUpdater.kt"

# interfaces
.implements Ll3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr0/u0;->f(Lr0/u;Landroidx/work/impl/WorkDatabase;Landroidx/work/a;Ljava/util/List;Lz0/u;Ljava/util/Set;)Lq0/z$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm3/l;",
        "Ll3/l<",
        "Lz0/u;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lr0/u0$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr0/u0$b;

    invoke-direct {v0}, Lr0/u0$b;-><init>()V

    sput-object v0, Lr0/u0$b;->b:Lr0/u0$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lz0/u;)Ljava/lang/String;
    .locals 1

    const-string v0, "spec"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lz0/u;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Periodic"

    goto :goto_0

    :cond_0
    const-string p1, "OneTime"

    :goto_0
    return-object p1
.end method

.method public bridge synthetic x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lz0/u;

    invoke-virtual {p0, p1}, Lr0/u0$b;->b(Lz0/u;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
