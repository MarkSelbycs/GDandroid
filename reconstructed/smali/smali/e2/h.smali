.class public final synthetic Le2/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/security/PrivilegedAction;


# static fields
.field public static final synthetic a:Le2/h;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le2/h;

    invoke-direct {v0}, Le2/h;-><init>()V

    sput-object v0, Le2/h;->a:Le2/h;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Le2/j;->a()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
