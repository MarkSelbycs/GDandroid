.class public Lq1/g$n;
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
    name = "n"
.end annotation


# static fields
.field public static final a:Lq1/g$n;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lq1/g$n;

    invoke-direct {v0}, Lq1/g$n;-><init>()V

    sput-object v0, Lq1/g$n;->a:Lq1/g$n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Appendable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lq1/g;->c(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public b(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Lq1/g$n;->a(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
