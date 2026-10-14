.class public final synthetic Lo1/u;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lo1/u;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lo1/u;

    invoke-direct {v0}, Lo1/u;-><init>()V

    sput-object v0, Lo1/u;->a:Lo1/u;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {p1}, Lo1/x;->q(Ljava/lang/reflect/Method;)Z

    move-result p1

    return p1
.end method
