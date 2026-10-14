.class public final synthetic Lq1/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lq1/j;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lq1/j;

    invoke-direct {v0}, Lq1/j;-><init>()V

    sput-object v0, Lq1/j;->a:Lq1/j;

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

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lq1/m;->d(Ljava/lang/CharSequence;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method
