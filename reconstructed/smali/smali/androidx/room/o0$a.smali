.class public final Landroidx/room/o0$a;
.super Lm3/l;
.source "SharedSQLiteStatement.kt"

# interfaces
.implements Ll3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/o0;-><init>(Landroidx/room/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm3/l;",
        "Ll3/a<",
        "Lf0/k;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final synthetic b:Landroidx/room/o0;


# direct methods
.method public constructor <init>(Landroidx/room/o0;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/o0$a;->b:Landroidx/room/o0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lf0/k;
    .locals 1

    iget-object v0, p0, Landroidx/room/o0$a;->b:Landroidx/room/o0;

    invoke-static {v0}, Landroidx/room/o0;->a(Landroidx/room/o0;)Lf0/k;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/room/o0$a;->b()Lf0/k;

    move-result-object v0

    return-object v0
.end method
