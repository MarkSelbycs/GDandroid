.class public final synthetic Le2/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Le2/t;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Le2/t;

    invoke-direct {v0}, Le2/t;-><init>()V

    sput-object v0, Le2/t;->a:Le2/t;

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

    invoke-static {p1}, Le2/x;->b(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
