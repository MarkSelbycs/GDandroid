.class public final Lg0/d$c$c;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg0/d$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lm3/g;)V
    .locals 0

    invoke-direct {p0}, Lg0/d$c$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg0/d$b;Landroid/database/sqlite/SQLiteDatabase;)Lg0/c;
    .locals 2

    const-string v0, "refHolder"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sqLiteDatabase"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lg0/d$b;->a()Lg0/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p2}, Lg0/c;->f(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    :cond_0
    new-instance v0, Lg0/c;

    invoke-direct {v0, p2}, Lg0/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p1, v0}, Lg0/d$b;->b(Lg0/c;)V

    :cond_1
    return-object v0
.end method
