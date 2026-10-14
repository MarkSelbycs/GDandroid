.class public final synthetic Lq1/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lq1/k;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lq1/k;

    invoke-direct {v0}, Lq1/k;-><init>()V

    sput-object v0, Lq1/k;->a:Lq1/k;

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

    check-cast p1, Ljava/util/Date;

    invoke-static {p1}, Lq1/m;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
