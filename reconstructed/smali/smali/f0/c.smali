.class public final Lf0/c;
.super Ljava/lang/Object;
.source "SupportSQLiteCompat.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lf0/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf0/c;

    invoke-direct {v0}, Lf0/c;-><init>()V

    sput-object v0, Lf0/c;->a:Lf0/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 1

    const-string v0, "cursor"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/database/Cursor;->getNotificationUri()Landroid/net/Uri;

    move-result-object p0

    const-string v0, "cursor.notificationUri"

    invoke-static {p0, v0}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final b(Landroid/app/ActivityManager;)Z
    .locals 1

    const-string v0, "activityManager"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    return p0
.end method
