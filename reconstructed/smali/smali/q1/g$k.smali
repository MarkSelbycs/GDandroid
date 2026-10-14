.class public Lq1/g$k;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lq1/g$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# static fields
.field public static final b:Lq1/g$k;

.field public static final c:Lq1/g$k;


# instance fields
.field public final a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lq1/g$k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lq1/g$k;-><init>(Z)V

    sput-object v0, Lq1/g$k;->b:Lq1/g$k;

    .line 2
    new-instance v0, Lq1/g$k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq1/g$k;-><init>(Z)V

    sput-object v0, Lq1/g$k;->c:Lq1/g$k;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lq1/g$k;->a:Z

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xf

    .line 1
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr v0, p2

    if-gez v0, :cond_0

    const/16 p2, 0x2d

    .line 2
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    neg-int v0, v0

    goto :goto_0

    :cond_0
    const/16 p2, 0x2b

    .line 3
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_0
    const p2, 0x36ee80

    .line 4
    div-int p2, v0, p2

    .line 5
    invoke-static {p1, p2}, Lq1/g;->c(Ljava/lang/Appendable;I)V

    .line 6
    iget-boolean v1, p0, Lq1/g$k;->a:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x3a

    .line 7
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_1
    const v1, 0xea60

    .line 8
    div-int/2addr v0, v1

    mul-int/lit8 p2, p2, 0x3c

    sub-int/2addr v0, p2

    .line 9
    invoke-static {p1, v0}, Lq1/g;->c(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
