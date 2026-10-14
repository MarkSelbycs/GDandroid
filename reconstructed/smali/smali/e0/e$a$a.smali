.class public final Le0/e$a$a;
.super Ljava/lang/Object;
.source "TableInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le0/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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

    invoke-direct {p0}, Le0/e$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return v2

    :cond_1
    move v0, v2

    move v3, v0

    move v4, v3

    .line 2
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v0, v5, :cond_5

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v6, v4, 0x1

    const/16 v7, 0x28

    if-nez v4, :cond_2

    if-eq v5, v7, :cond_2

    return v2

    :cond_2
    if-ne v5, v7, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/16 v7, 0x29

    if-ne v5, v7, :cond_4

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_4

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    if-eq v4, v5, :cond_4

    return v2

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v4, v6

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    return v1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    const-string v0, "current"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Le0/e$a$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls3/m;->Z(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
