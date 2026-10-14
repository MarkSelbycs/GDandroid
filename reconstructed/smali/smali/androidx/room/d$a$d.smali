.class public final synthetic Landroidx/room/d$a$d;
.super Lm3/j;
.source "AutoClosingRoomOpenHelper.kt"

# interfaces
.implements Ll3/l;


# annotations
.annotation runtime La3/f;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/d$a;->s0()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm3/j;",
        "Ll3/l<",
        "Lf0/g;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final o:Landroidx/room/d$a$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/room/d$a$d;

    invoke-direct {v0}, Landroidx/room/d$a$d;-><init>()V

    sput-object v0, Landroidx/room/d$a$d;->o:Landroidx/room/d$a$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v2, Lf0/g;

    const/4 v1, 0x1

    const-string v3, "inTransaction"

    const-string v4, "inTransaction()Z"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lm3/j;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final I(Lf0/g;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lf0/g;->s0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lf0/g;

    invoke-virtual {p0, p1}, Landroidx/room/d$a$d;->I(Lf0/g;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
