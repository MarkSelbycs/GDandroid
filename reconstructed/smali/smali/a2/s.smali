.class public final synthetic La2/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:La2/s;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, La2/s;

    invoke-direct {v0}, La2/s;-><init>()V

    sput-object v0, La2/s;->a:La2/s;

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

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, La2/t;->b(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object p1

    return-object p1
.end method
