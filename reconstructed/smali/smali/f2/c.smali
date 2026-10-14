.class public final synthetic Lf2/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lf2/c;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lf2/c;

    invoke-direct {v0}, Lf2/c;-><init>()V

    sput-object v0, Lf2/c;->a:Lf2/c;

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

    invoke-static {}, Lf2/f;->b()Lf2/f;

    move-result-object v0

    return-object v0
.end method
