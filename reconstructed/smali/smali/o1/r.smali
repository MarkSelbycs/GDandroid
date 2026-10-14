.class public final synthetic Lo1/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lo1/r;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lo1/r;

    invoke-direct {v0}, Lo1/r;-><init>()V

    sput-object v0, Lo1/r;->a:Lo1/r;

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

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {p1}, Lo1/x;->h(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
