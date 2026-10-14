.class public final Lf0/e;
.super Ljava/lang/Object;
.source "SupportSQLiteCompat.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lf0/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lf0/e;

    invoke-direct {v0}, Lf0/e;-><init>()V

    sput-object v0, Lf0/e;->a:Lf0/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/database/Cursor;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "cursor"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->setExtras(Landroid/os/Bundle;)V

    return-void
.end method
