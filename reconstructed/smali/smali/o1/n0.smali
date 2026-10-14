.class public final synthetic Lo1/n0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lo1/n0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lo1/n0;

    invoke-direct {v0}, Lo1/n0;-><init>()V

    sput-object v0, Lo1/n0;->a:Lo1/n0;

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

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method
