.class public final Le0/e$d;
.super Ljava/lang/Object;
.source "TableInfo.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Le0/e$d;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "from"

    invoke-static {p3, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p4, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le0/e$d;->a:I

    .line 3
    iput p2, p0, Le0/e$d;->b:I

    .line 4
    iput-object p3, p0, Le0/e$d;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Le0/e$d;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Le0/e$d;)I
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Le0/e$d;->a:I

    iget v1, p1, Le0/e$d;->a:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Le0/e$d;->b:I

    iget p1, p1, Le0/e$d;->b:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le0/e$d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Le0/e$d;

    invoke-virtual {p0, p1}, Le0/e$d;->a(Le0/e$d;)I

    move-result p1

    return p1
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Le0/e$d;->a:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le0/e$d;->d:Ljava/lang/String;

    return-object v0
.end method
