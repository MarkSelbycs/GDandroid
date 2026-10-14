.class public Lcom/msec/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/msec/n;


# instance fields
.field private a:Landroid/content/Context;

.field private b:F

.field private c:F

.field private d:F

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/msec/e;->b:F

    iput v0, p0, Lcom/msec/e;->c:F

    iput v0, p0, Lcom/msec/e;->d:F

    const-string v0, ""

    iput-object v0, p0, Lcom/msec/e;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/msec/e;->f:Ljava/lang/String;

    const/4 v0, 0x6

    iput v0, p0, Lcom/msec/e;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/msec/e;->h:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 v1, 0x604

    invoke-static {v1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    iput-object p1, p0, Lcom/msec/e;->a:Landroid/content/Context;

    const/16 v0, 0x4000

    :try_start_0
    invoke-static {v0}, Lcom/msec/u;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/msec/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/msec/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x58b

    invoke-static {v2}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0x58c

    invoke-static {v2}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/msec/e;->a:Landroid/content/Context;

    const/16 v1, 0x547

    invoke-static {v1}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const/16 v1, 0x286

    invoke-static {v1}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_2

    const/16 v1, 0x2ec

    invoke-static {v1}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    const/16 v1, 0x2eb

    invoke-static {v1}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    const-string v0, ""

    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lcom/msec/e;->g:I

    invoke-static {v2, v3}, Lcom/msec/g;->a(FI)F

    move-result v2

    iput v2, p0, Lcom/msec/e;->b:F

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lcom/msec/e;->g:I

    invoke-static {v2, v3}, Lcom/msec/g;->a(FI)F

    move-result v2

    iput v2, p0, Lcom/msec/e;->c:F

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lcom/msec/e;->g:I

    invoke-static {v2, v3}, Lcom/msec/g;->a(FI)F

    move-result v2

    iput v2, p0, Lcom/msec/e;->d:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/msec/e;->h:Z

    const/16 v2, 0x545

    invoke-static {v2}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/msec/e;->b:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/msec/X3;->A1(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2ea

    invoke-static {v2}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/msec/e;->c:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/msec/X3;->A1(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2e9

    invoke-static {v2}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/msec/e;->d:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/msec/X3;->A1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :try_start_2
    new-instance v4, Landroid/location/Geocoder;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v4, p1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    :try_start_3
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/msec/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/msec/e;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/msec/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/msec/e;->f:Ljava/lang/String;

    const/16 p1, 0x2e8

    invoke-static {p1}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/msec/e;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/msec/X3;->A1(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2e7

    invoke-static {p1}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/msec/e;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/msec/X3;->A1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    nop

    :catch_1
    :cond_5
    :goto_1
    return-void
.end method
