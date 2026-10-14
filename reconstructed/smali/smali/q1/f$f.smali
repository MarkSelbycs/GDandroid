.class public Lq1/f$f;
.super Lq1/f$j;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final b:I

.field public final c:Ljava/util/Locale;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/Calendar;Ljava/util/Locale;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lq1/f$j;-><init>(Lq1/f$a;)V

    .line 2
    iput p1, p0, Lq1/f$f;->b:I

    .line 3
    iput-object p3, p0, Lq1/f$f;->c:Ljava/util/Locale;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "((?iu)"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p2, p3, p1, v0}, Lq1/f;->q(Ljava/util/Calendar;Ljava/util/Locale;ILjava/lang/StringBuilder;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lq1/f$f;->d:Ljava/util/Map;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string p1, ")"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0, v0}, Lq1/f$j;->d(Ljava/lang/StringBuilder;)V

    return-void
.end method


# virtual methods
.method public e(Lq1/f;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lq1/f$f;->d:Ljava/util/Map;

    iget-object v0, p0, Lq1/f$f;->c:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 2
    iget p3, p0, Lq1/f$f;->b:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Ljava/util/Calendar;->set(II)V

    return-void
.end method
