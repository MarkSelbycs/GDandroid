.class public final synthetic Ll1/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Ll1/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ll1/b;

    invoke-direct {v0}, Ll1/b;-><init>()V

    sput-object v0, Ll1/b;->a:Ll1/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p1, p2}, Ll1/c;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
