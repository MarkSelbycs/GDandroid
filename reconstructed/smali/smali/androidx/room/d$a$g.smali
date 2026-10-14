.class public final Landroidx/room/d$a$g;
.super Lm3/l;
.source "AutoClosingRoomOpenHelper.kt"

# interfaces
.implements Ll3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/d$a;->c()V
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


# static fields
.field public static final b:Landroidx/room/d$a$g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/room/d$a$g;

    invoke-direct {v0}, Landroidx/room/d$a$g;-><init>()V

    sput-object v0, Landroidx/room/d$a$g;->b:Landroidx/room/d$a$g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lf0/g;)Ljava/lang/Object;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lf0/g;

    invoke-virtual {p0, p1}, Landroidx/room/d$a$g;->b(Lf0/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
