.class public final Lf0/f;
.super Ljava/lang/Object;
.source "SupportSQLiteCompat.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lf0/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf0/f;

    invoke-direct {v0}, Lf0/f;-><init>()V

    sput-object v0, Lf0/f;->a:Lf0/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const-string v0, "cursor"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/database/Cursor;->getNotificationUris()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lm3/k;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final b(Landroid/database/Cursor;Landroid/content/ContentResolver;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cursor"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cr"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uris"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Landroid/database/Cursor;->setNotificationUris(Landroid/content/ContentResolver;Ljava/util/List;)V

    return-void
.end method
