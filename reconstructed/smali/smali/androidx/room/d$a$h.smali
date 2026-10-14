.class public final Landroidx/room/d$a$h;
.super Lm3/l;
.source "AutoClosingRoomOpenHelper.kt"

# interfaces
.implements Ll3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/d$a;->U(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Landroid/content/ContentValues;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/d$a$h;->b:Ljava/lang/String;

    iput p2, p0, Landroidx/room/d$a$h;->c:I

    iput-object p3, p0, Landroidx/room/d$a$h;->d:Landroid/content/ContentValues;

    iput-object p4, p0, Landroidx/room/d$a$h;->e:Ljava/lang/String;

    iput-object p5, p0, Landroidx/room/d$a$h;->f:[Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lf0/g;)Ljava/lang/Integer;
    .locals 7

    const-string v0, "db"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Landroidx/room/d$a$h;->b:Ljava/lang/String;

    iget v3, p0, Landroidx/room/d$a$h;->c:I

    .line 2
    iget-object v4, p0, Landroidx/room/d$a$h;->d:Landroid/content/ContentValues;

    iget-object v5, p0, Landroidx/room/d$a$h;->e:Ljava/lang/String;

    iget-object v6, p0, Landroidx/room/d$a$h;->f:[Ljava/lang/Object;

    move-object v1, p1

    .line 3
    invoke-interface/range {v1 .. v6}, Lf0/g;->U(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lf0/g;

    invoke-virtual {p0, p1}, Landroidx/room/d$a$h;->b(Lf0/g;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
