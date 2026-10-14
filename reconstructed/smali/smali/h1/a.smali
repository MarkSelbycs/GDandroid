.class public final synthetic Lh1/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lv1/i;


# static fields
.field public static final synthetic a:Lh1/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lh1/a;

    invoke-direct {v0}, Lh1/a;-><init>()V

    sput-object v0, Lh1/a;->a:Lh1/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {p1}, Le2/x;->y(Ljava/lang/reflect/Method;)Z

    move-result p1

    return p1
.end method
