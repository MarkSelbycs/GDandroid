.class public final Landroidx/room/d$a$c;
.super Lm3/l;
.source "AutoClosingRoomOpenHelper.kt"

# interfaces
.implements Ll3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/d$a;->O(Ljava/lang/String;[Ljava/lang/Object;)V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/d$a$c;->b:Ljava/lang/String;

    iput-object p2, p0, Landroidx/room/d$a$c;->c:[Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lf0/g;)Ljava/lang/Object;
    .locals 2

    const-string v0, "db"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/d$a$c;->b:Ljava/lang/String;

    iget-object v1, p0, Landroidx/room/d$a$c;->c:[Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lf0/g;->O(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lf0/g;

    invoke-virtual {p0, p1}, Landroidx/room/d$a$c;->b(Lf0/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
