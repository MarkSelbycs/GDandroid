.class public final synthetic Le2/z;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Le2/z;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le2/z;

    invoke-direct {v0}, Le2/z;-><init>()V

    sput-object v0, Le2/z;->a:Le2/z;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Le2/j;->c()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
