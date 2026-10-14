.class public final synthetic Lo1/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic a:Lo1/p;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lo1/p;

    invoke-direct {v0}, Lo1/p;-><init>()V

    sput-object v0, Lo1/p;->a:Lo1/p;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/reflect/Method;

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-static {p1, p2}, Lo1/x;->D(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method
