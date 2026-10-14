.class Landroidx/core/content/UnusedAppRestrictionsBackportService$1;
.super Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService$Stub;
.source "UnusedAppRestrictionsBackportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/UnusedAppRestrictionsBackportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Landroidx/core/content/UnusedAppRestrictionsBackportService;


# direct methods
.method public constructor <init>(Landroidx/core/content/UnusedAppRestrictionsBackportService;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportService$1;->d:Landroidx/core/content/UnusedAppRestrictionsBackportService;

    invoke-direct {p0}, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isPermissionRevocationEnabledForApp(Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Landroidx/core/content/c;

    invoke-direct {v0, p1}, Landroidx/core/content/c;-><init>(Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;)V

    .line 2
    iget-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportService$1;->d:Landroidx/core/content/UnusedAppRestrictionsBackportService;

    invoke-virtual {p1, v0}, Landroidx/core/content/UnusedAppRestrictionsBackportService;->a(Landroidx/core/content/c;)V

    return-void
.end method
