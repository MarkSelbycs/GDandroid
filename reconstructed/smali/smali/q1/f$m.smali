.class public Lq1/f$m;
.super Ljava/lang/Object;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "m"
.end annotation


# instance fields
.field public final a:Ljava/util/Calendar;

.field public b:I

.field public final synthetic c:Lq1/f;


# direct methods
.method public constructor <init>(Lq1/f;Ljava/util/Calendar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq1/f$m;->c:Lq1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lq1/f$m;->a:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public a()Lq1/f$l;
    .locals 2

    .line 1
    iget v0, p0, Lq1/f$m;->b:I

    iget-object v1, p0, Lq1/f$m;->c:Lq1/f;

    iget-object v1, v1, Lq1/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lq1/f$m;->c:Lq1/f;

    iget-object v0, v0, Lq1/a;->a:Ljava/lang/String;

    iget v1, p0, Lq1/f$m;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3
    invoke-static {v0}, Lq1/f;->c(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lq1/f$m;->b(C)Lq1/f$l;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lq1/f$m;->c()Lq1/f$l;

    move-result-object v0

    return-object v0
.end method

.method public final b(C)Lq1/f$l;
    .locals 4

    .line 1
    iget v0, p0, Lq1/f$m;->b:I

    .line 2
    :cond_0
    iget v1, p0, Lq1/f$m;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lq1/f$m;->b:I

    iget-object v2, p0, Lq1/f$m;->c:Lq1/f;

    iget-object v2, v2, Lq1/a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lq1/f$m;->c:Lq1/f;

    iget-object v1, v1, Lq1/a;->a:Ljava/lang/String;

    iget v2, p0, Lq1/f$m;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, p1, :cond_0

    .line 4
    :cond_1
    iget v1, p0, Lq1/f$m;->b:I

    sub-int/2addr v1, v0

    .line 5
    new-instance v0, Lq1/f$l;

    iget-object v2, p0, Lq1/f$m;->c:Lq1/f;

    iget-object v3, p0, Lq1/f$m;->a:Ljava/util/Calendar;

    invoke-static {v2, p1, v1, v3}, Lq1/f;->j(Lq1/f;CILjava/util/Calendar;)Lq1/f$k;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lq1/f$l;-><init>(Lq1/f$k;I)V

    return-object v0
.end method

.method public final c()Lq1/f$l;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lq1/f$m;->b:I

    iget-object v3, p0, Lq1/f$m;->c:Lq1/f;

    iget-object v3, v3, Lq1/a;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 3
    iget-object v2, p0, Lq1/f$m;->c:Lq1/f;

    iget-object v2, v2, Lq1/a;->a:Ljava/lang/String;

    iget v3, p0, Lq1/f$m;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-nez v1, :cond_0

    .line 4
    invoke-static {v2}, Lq1/f;->c(C)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x27

    if-ne v2, v3, :cond_2

    .line 5
    iget v4, p0, Lq1/f$m;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lq1/f$m;->b:I

    iget-object v5, p0, Lq1/f$m;->c:Lq1/f;

    iget-object v5, v5, Lq1/a;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lq1/f$m;->c:Lq1/f;

    iget-object v4, v4, Lq1/a;->a:Ljava/lang/String;

    iget v5, p0, Lq1/f$m;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_2

    :cond_1
    xor-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget v3, p0, Lq1/f$m;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lq1/f$m;->b:I

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Lq1/f$l;

    new-instance v2, Lq1/f$g;

    invoke-direct {v2, v0}, Lq1/f$g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lq1/f$l;-><init>(Lq1/f$k;I)V

    return-object v1

    .line 10
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unterminated quote"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
