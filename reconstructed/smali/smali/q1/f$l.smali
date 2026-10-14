.class public Lq1/f$l;
.super Ljava/lang/Object;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field public final a:Lq1/f$k;

.field public final b:I


# direct methods
.method public constructor <init>(Lq1/f$k;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq1/f$l;->a:Lq1/f$k;

    .line 3
    iput p2, p0, Lq1/f$l;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ListIterator;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lq1/f$l;",
            ">;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq1/f$l;->a:Lq1/f$k;

    invoke-virtual {v0}, Lq1/f$k;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq1/f$l;

    iget-object v0, v0, Lq1/f$l;->a:Lq1/f$k;

    .line 3
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Lq1/f$k;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget v1, p0, Lq1/f$l;->b:I

    :cond_1
    :goto_0
    return v1
.end method
