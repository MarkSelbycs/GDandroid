.class public final synthetic La2/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:La2/r;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, La2/r;

    invoke-direct {v0}, La2/r;-><init>()V

    sput-object v0, La2/r;->a:La2/r;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/ref/Reference;

    invoke-static {p1}, La2/t;->c(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
