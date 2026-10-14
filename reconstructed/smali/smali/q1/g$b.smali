.class public Lq1/g$b;
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
    name = "b"
.end annotation


# instance fields
.field public final a:Lq1/g$d;


# direct methods
.method public constructor <init>(Lq1/g$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq1/g$b;->a:Lq1/g$d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Appendable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lq1/g$b;->a:Lq1/g$d;

    invoke-interface {v0, p1, p2}, Lq1/g$d;->a(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public b(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x7

    .line 1
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 2
    iget-object v1, p0, Lq1/g$b;->a:Lq1/g$d;

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    add-int/lit8 v0, p2, -0x1

    :cond_0
    invoke-interface {v1, p1, v0}, Lq1/g$d;->a(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lq1/g$b;->a:Lq1/g$d;

    invoke-interface {v0}, Lq1/g$f;->c()I

    move-result v0

    return v0
.end method
