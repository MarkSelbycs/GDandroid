.class public final synthetic La2/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic a:La2/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, La2/b;

    invoke-direct {v0}, La2/b;-><init>()V

    sput-object v0, La2/b;->a:La2/b;

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

    invoke-static {p1}, La2/c;->U(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
