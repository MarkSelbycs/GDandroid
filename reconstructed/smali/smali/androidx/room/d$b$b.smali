.class public final Landroidx/room/d$b$b;
.super Lm3/l;
.source "AutoClosingRoomOpenHelper.kt"

# interfaces
.implements Ll3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/d$b;->h(Ll3/l;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm3/l;",
        "Ll3/l<",
        "Lf0/g;",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final synthetic b:Landroidx/room/d$b;

.field public final synthetic c:Ll3/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/l<",
            "Lf0/k;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/d$b;Ll3/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/d$b;",
            "Ll3/l<",
            "-",
            "Lf0/k;",
            "+TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/d$b$b;->b:Landroidx/room/d$b;

    iput-object p2, p0, Landroidx/room/d$b$b;->c:Ll3/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lf0/g;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf0/g;",
            ")TT;"
        }
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/room/d$b$b;->b:Landroidx/room/d$b;

    invoke-static {v0}, Landroidx/room/d$b;->e(Landroidx/room/d$b;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lf0/g;->S(Ljava/lang/String;)Lf0/k;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroidx/room/d$b$b;->b:Landroidx/room/d$b;

    invoke-static {v0, p1}, Landroidx/room/d$b;->c(Landroidx/room/d$b;Lf0/k;)V

    .line 3
    iget-object v0, p0, Landroidx/room/d$b$b;->c:Ll3/l;

    invoke-interface {v0, p1}, Ll3/l;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lf0/g;

    invoke-virtual {p0, p1}, Landroidx/room/d$b$b;->b(Lf0/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
