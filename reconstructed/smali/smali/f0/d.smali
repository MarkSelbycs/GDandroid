.class public final Lf0/d;
.super Ljava/lang/Object;
.source "SupportSQLiteCompat.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lf0/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf0/d;

    invoke-direct {v0}, Lf0/d;-><init>()V

    sput-object v0, Lf0/d;->a:Lf0/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v0, "context.noBackupFilesDir"

    invoke-static {p0, v0}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
