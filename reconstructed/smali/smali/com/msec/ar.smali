.class public Lcom/msec/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private a:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>(Landroid/location/LocationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/msec/ar;->a:Landroid/location/LocationListener;

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/msec/X3;->Z(Ljava/lang/Object;ZZ)V

    iget-object v0, p0, Lcom/msec/ar;->a:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/msec/ar;->a:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/msec/ar;->a:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/msec/ar;->a:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
