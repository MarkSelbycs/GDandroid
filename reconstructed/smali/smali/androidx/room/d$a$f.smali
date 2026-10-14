.class public final Landroidx/room/d$a$f;
.super Lm3/l;
.source "AutoClosingRoomOpenHelper.kt"

# interfaces
.implements Ll3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/d$a;->q0()Ljava/lang/String;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final b:Landroidx/room/d$a$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/room/d$a$f;

    invoke-direct {v0}, Landroidx/room/d$a$f;-><init>()V

    sput-object v0, Landroidx/room/d$a$f;->b:Landroidx/room/d$a$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lf0/g;)Ljava/lang/String;
    .locals 1

    const-string v0, "obj"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lf0/g;->q0()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lf0/g;

    invoke-virtual {p0, p1}, Landroidx/room/d$a$f;->b(Lf0/g;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
