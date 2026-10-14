.class public final synthetic Le2/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/security/PrivilegedAction;


# static fields
.field public static final synthetic a:Le2/i;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Le2/i;

    invoke-direct {v0}, Le2/i;-><init>()V

    sput-object v0, Le2/i;->a:Le2/i;

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

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
