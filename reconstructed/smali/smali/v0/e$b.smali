.class public final Lv0/e$b;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lw3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv0/e;->b(Lz0/u;)Lw3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw3/d<",
        "Lv0/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:[Lw3/d;


# direct methods
.method public constructor <init>([Lw3/d;)V
    .locals 0

    iput-object p1, p0, Lv0/e$b;->a:[Lw3/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lw3/e;Ld3/d;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lv0/e$b;->a:[Lw3/d;

    .line 2
    new-instance v1, Lv0/e$b$a;

    invoke-direct {v1, v0}, Lv0/e$b$a;-><init>([Lw3/d;)V

    new-instance v2, Lv0/e$b$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lv0/e$b$b;-><init>(Ld3/d;)V

    invoke-static {p1, v0, v1, v2, p2}, Lx3/b;->a(Lw3/e;[Lw3/d;Ll3/a;Ll3/q;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    .line 3
    :cond_0
    sget-object p1, La3/o;->a:La3/o;

    return-object p1
.end method
