.class public Lcom/cndatacom/sdk/portal/util/PermissionUtil;
.super Ljava/lang/Object;
.source "PermissionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 2
    aget-object v2, p1, v1

    .line 3
    invoke-static {p0, v2}, Landroidx/core/content/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static hasCameraPermission(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.CAMERA"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lcom/cndatacom/sdk/portal/util/PermissionUtil;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasLocationPermission(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lcom/cndatacom/sdk/portal/util/PermissionUtil;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasLocationServicePermission(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "location"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string v0, "gps"

    .line 2
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "network"

    .line 3
    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static hasReadPhoneState(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lcom/cndatacom/sdk/portal/util/PermissionUtil;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
