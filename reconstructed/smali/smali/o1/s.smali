.class public final synthetic Lo1/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lo1/s;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lo1/s;

    invoke-direct {v0}, Lo1/s;-><init>()V

    sput-object v0, Lo1/s;->a:Lo1/s;

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

    invoke-static {p1}, Lo1/x;->j(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method
