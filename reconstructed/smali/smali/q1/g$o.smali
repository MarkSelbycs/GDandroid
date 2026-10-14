.class public Lq1/g$o;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lq1/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lq1/g$o;->a:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Appendable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    .line 1
    invoke-static {p1, p2}, Lq1/g;->c(Ljava/lang/Appendable;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2
    invoke-static {p1, p2, v0}, Lq1/g;->j(Ljava/lang/Appendable;II)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lq1/g$o;->a:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lq1/g$o;->a(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
