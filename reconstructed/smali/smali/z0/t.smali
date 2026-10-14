.class public final synthetic Lz0/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Li/a;


# static fields
.field public static final synthetic a:Lz0/t;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lz0/t;

    invoke-direct {v0}, Lz0/t;-><init>()V

    sput-object v0, Lz0/t;->a:Lz0/t;

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

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lz0/u;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
