.class public final Le0/e$b;
.super Ljava/lang/Object;
.source "TableInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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

    invoke-direct {p0}, Le0/e$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lf0/g;Ljava/lang/String;)Le0/e;
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tableName"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Le0/f;->f(Lf0/g;Ljava/lang/String;)Le0/e;

    move-result-object p1

    return-object p1
.end method
