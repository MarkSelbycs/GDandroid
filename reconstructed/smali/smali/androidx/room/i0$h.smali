.class public final Landroidx/room/i0$h;
.super Lm3/l;
.source "RoomDatabase.kt"

# interfaces
.implements Ll3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/i0;->e()V
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
.field public final synthetic b:Landroidx/room/i0;


# direct methods
.method public constructor <init>(Landroidx/room/i0;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/i0$h;->b:Landroidx/room/i0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lf0/g;)Ljava/lang/Object;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/room/i0$h;->b:Landroidx/room/i0;

    invoke-static {p1}, Landroidx/room/i0;->a(Landroidx/room/i0;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lf0/g;

    invoke-virtual {p0, p1}, Landroidx/room/i0$h;->b(Lf0/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
