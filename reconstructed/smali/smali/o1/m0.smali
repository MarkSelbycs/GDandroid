.class public final synthetic Lo1/m0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/time/temporal/TemporalQuery;


# static fields
.field public static final synthetic a:Lo1/m0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lo1/m0;

    invoke-direct {v0}, Lo1/m0;-><init>()V

    sput-object v0, Lo1/m0;->a:Lo1/m0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p1

    return-object p1
.end method
