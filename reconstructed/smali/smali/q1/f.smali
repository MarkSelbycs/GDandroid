.class public Lq1/f;
.super Lq1/a;
.source "FastDateParser.java"

# interfaces
.implements Lq1/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq1/f$h;,
        Lq1/f$n;,
        Lq1/f$i;,
        Lq1/f$f;,
        Lq1/f$g;,
        Lq1/f$j;,
        Lq1/f$k;,
        Lq1/f$m;,
        Lq1/f$l;
    }
.end annotation


# static fields
.field public static final A:Lq1/f$k;

.field public static final B:Lq1/f$k;

.field public static final C:Lq1/f$k;

.field public static final D:Lq1/f$k;

.field public static final g:Ljava/util/Locale;

.field public static final h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:[Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Lq1/f$k;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Lq1/f$k;

.field public static final p:Lq1/f$k;

.field public static final q:Lq1/f$k;

.field public static final r:Lq1/f$k;

.field public static final s:Lq1/f$k;

.field public static final t:Lq1/f$k;

.field public static final u:Lq1/f$k;

.field public static final v:Lq1/f$k;

.field public static final w:Lq1/f$k;

.field public static final x:Lq1/f$k;

.field public static final y:Lq1/f$k;

.field public static final z:Lq1/f$k;


# instance fields
.field public final d:I

.field public final e:I

.field public transient f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lq1/f$l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ja"

    const-string v2, "JP"

    invoke-direct {v0, v1, v2, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lq1/f;->g:Ljava/util/Locale;

    .line 2
    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lq1/f;->h:Ljava/util/Comparator;

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/util/concurrent/ConcurrentMap;

    .line 3
    sput-object v0, Lq1/f;->i:[Ljava/util/concurrent/ConcurrentMap;

    .line 4
    new-instance v0, Lq1/f$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lq1/f$a;-><init>(I)V

    sput-object v0, Lq1/f;->o:Lq1/f$k;

    .line 5
    new-instance v0, Lq1/f$b;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lq1/f$b;-><init>(I)V

    sput-object v0, Lq1/f;->p:Lq1/f$k;

    .line 6
    new-instance v0, Lq1/f$i;

    invoke-direct {v0, v1}, Lq1/f$i;-><init>(I)V

    sput-object v0, Lq1/f;->q:Lq1/f$k;

    .line 7
    new-instance v0, Lq1/f$i;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lq1/f$i;-><init>(I)V

    sput-object v0, Lq1/f;->r:Lq1/f$k;

    .line 8
    new-instance v0, Lq1/f$i;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lq1/f$i;-><init>(I)V

    sput-object v0, Lq1/f;->s:Lq1/f$k;

    .line 9
    new-instance v0, Lq1/f$i;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lq1/f$i;-><init>(I)V

    sput-object v0, Lq1/f;->t:Lq1/f$k;

    .line 10
    new-instance v0, Lq1/f$i;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lq1/f$i;-><init>(I)V

    sput-object v0, Lq1/f;->u:Lq1/f$k;

    .line 11
    new-instance v0, Lq1/f$c;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lq1/f$c;-><init>(I)V

    sput-object v0, Lq1/f;->v:Lq1/f$k;

    .line 12
    new-instance v0, Lq1/f$i;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lq1/f$i;-><init>(I)V

    sput-object v0, Lq1/f;->w:Lq1/f$k;

    .line 13
    new-instance v0, Lq1/f$i;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lq1/f$i;-><init>(I)V

    sput-object v0, Lq1/f;->x:Lq1/f$k;

    .line 14
    new-instance v0, Lq1/f$d;

    invoke-direct {v0, v1}, Lq1/f$d;-><init>(I)V

    sput-object v0, Lq1/f;->y:Lq1/f$k;

    .line 15
    new-instance v0, Lq1/f$e;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lq1/f$e;-><init>(I)V

    sput-object v0, Lq1/f;->z:Lq1/f$k;

    .line 16
    new-instance v0, Lq1/f$i;

    invoke-direct {v0, v1}, Lq1/f$i;-><init>(I)V

    sput-object v0, Lq1/f;->A:Lq1/f$k;

    .line 17
    new-instance v0, Lq1/f$i;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lq1/f$i;-><init>(I)V

    sput-object v0, Lq1/f;->B:Lq1/f$k;

    .line 18
    new-instance v0, Lq1/f$i;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lq1/f$i;-><init>(I)V

    sput-object v0, Lq1/f;->C:Lq1/f$k;

    .line 19
    new-instance v0, Lq1/f$i;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lq1/f$i;-><init>(I)V

    sput-object v0, Lq1/f;->D:Lq1/f$k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lq1/a;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 2
    invoke-static {p2, p3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p4, :cond_0

    .line 3
    invoke-virtual {p1, p4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    goto :goto_0

    .line 5
    :cond_0
    sget-object p4, Lq1/f;->g:Ljava/util/Locale;

    invoke-virtual {p3, p4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 6
    :cond_1
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 7
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/lit8 p2, p2, -0x50

    .line 8
    :goto_0
    div-int/lit8 p3, p2, 0x64

    mul-int/lit8 p3, p3, 0x64

    iput p3, p0, Lq1/f;->d:I

    sub-int/2addr p2, p3

    .line 9
    iput p2, p0, Lq1/f;->e:I

    .line 10
    invoke-virtual {p0, p1}, Lq1/f;->P(Ljava/util/Calendar;)V

    return-void
.end method

.method public static F(Ljava/util/Calendar;Ljava/util/Locale;ILjava/lang/StringBuilder;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/Locale;",
            "I",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p2, v1, p1}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object p0

    .line 3
    new-instance p2, Ljava/util/TreeSet;

    sget-object v1, Lq1/f;->h:Ljava/util/Comparator;

    invoke-direct {p2, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 4
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p2, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 9
    invoke-static {p3, p1}, Lq1/f;->U(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x7c

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static H(I)Ljava/util/concurrent/ConcurrentMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Lq1/f$k;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lq1/f;->i:[Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v0

    .line 2
    :try_start_0
    aget-object v1, v0, p0

    if-nez v1, :cond_0

    .line 3
    new-instance v1, La2/u;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, La2/u;-><init>(I)V

    aput-object v1, v0, p0

    .line 4
    :cond_0
    aget-object p0, v0, p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static T(C)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static U(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x24

    const/16 v3, 0x5c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_0

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_0

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_0

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_0

    if-eq v1, v3, :cond_0

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 3
    :cond_0
    :pswitch_0
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic c(C)Z
    .locals 0

    invoke-static {p0}, Lq1/f;->T(C)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lq1/f;CILjava/util/Calendar;)Lq1/f$k;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lq1/f;->M(CILjava/util/Calendar;)Lq1/f$k;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Ljava/util/Calendar;Ljava/util/Locale;ILjava/lang/StringBuilder;)Ljava/util/Map;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lq1/f;->F(Ljava/util/Calendar;Ljava/util/Locale;ILjava/lang/StringBuilder;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lq1/f;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lq1/f;->D(I)I

    move-result p0

    return p0
.end method

.method public static synthetic x()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lq1/f;->h:Ljava/util/Comparator;

    return-object v0
.end method

.method public static synthetic y(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-static {p0, p1}, Lq1/f;->U(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final D(I)I
    .locals 2

    .line 1
    iget v0, p0, Lq1/f;->d:I

    add-int/2addr v0, p1

    .line 2
    iget v1, p0, Lq1/f;->e:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x64

    :goto_0
    return v0
.end method

.method public final I(ILjava/util/Calendar;)Lq1/f$k;
    .locals 3

    .line 1
    invoke-static {p1}, Lq1/f;->H(I)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lq1/a;->c:Ljava/util/Locale;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq1/f$k;

    if-nez v1, :cond_1

    const/16 v1, 0xf

    if-ne p1, v1, :cond_0

    .line 3
    new-instance p1, Lq1/f$n;

    iget-object p2, p0, Lq1/a;->c:Ljava/util/Locale;

    invoke-direct {p1, p2}, Lq1/f$n;-><init>(Ljava/util/Locale;)V

    move-object v1, p1

    goto :goto_0

    :cond_0
    new-instance v1, Lq1/f$f;

    iget-object v2, p0, Lq1/a;->c:Ljava/util/Locale;

    invoke-direct {v1, p1, p2, v2}, Lq1/f$f;-><init>(ILjava/util/Calendar;Ljava/util/Locale;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lq1/a;->c:Ljava/util/Locale;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq1/f$k;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public final M(CILjava/util/Calendar;)Lq1/f$k;
    .locals 2

    const/16 v0, 0x79

    const/4 v1, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7a

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Format \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\' not supported"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    if-ne p2, v1, :cond_1

    .line 2
    invoke-static {}, Lq1/f$h;->f()Lq1/f$k;

    move-result-object p1

    return-object p1

    .line 3
    :pswitch_1
    invoke-static {p2}, Lq1/f$h;->g(I)Lq1/f$k;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lq1/f;->s:Lq1/f$k;

    return-object p1

    .line 5
    :sswitch_0
    sget-object p1, Lq1/f;->r:Lq1/f$k;

    return-object p1

    .line 6
    :sswitch_1
    sget-object p1, Lq1/f;->v:Lq1/f$k;

    return-object p1

    .line 7
    :sswitch_2
    sget-object p1, Lq1/f;->C:Lq1/f$k;

    return-object p1

    .line 8
    :sswitch_3
    sget-object p1, Lq1/f;->B:Lq1/f$k;

    return-object p1

    .line 9
    :sswitch_4
    sget-object p1, Lq1/f;->y:Lq1/f$k;

    return-object p1

    .line 10
    :sswitch_5
    sget-object p1, Lq1/f;->z:Lq1/f$k;

    return-object p1

    .line 11
    :sswitch_6
    sget-object p1, Lq1/f;->u:Lq1/f$k;

    return-object p1

    :sswitch_7
    const/16 p1, 0x9

    .line 12
    invoke-virtual {p0, p1, p3}, Lq1/f;->I(ILjava/util/Calendar;)Lq1/f$k;

    move-result-object p1

    return-object p1

    .line 13
    :sswitch_8
    sget-object p1, Lq1/f;->D:Lq1/f$k;

    return-object p1

    :sswitch_9
    const/4 p1, 0x3

    if-lt p2, p1, :cond_0

    .line 14
    invoke-virtual {p0, v1, p3}, Lq1/f;->I(ILjava/util/Calendar;)Lq1/f$k;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lq1/f;->p:Lq1/f$k;

    :goto_0
    return-object p1

    .line 15
    :sswitch_a
    sget-object p1, Lq1/f;->A:Lq1/f$k;

    return-object p1

    .line 16
    :pswitch_3
    sget-object p1, Lq1/f;->x:Lq1/f$k;

    return-object p1

    :pswitch_4
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1, p3}, Lq1/f;->I(ILjava/util/Calendar;)Lq1/f$k;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_5
    sget-object p1, Lq1/f;->w:Lq1/f$k;

    return-object p1

    :pswitch_6
    const/4 p1, 0x7

    .line 19
    invoke-virtual {p0, p1, p3}, Lq1/f;->I(ILjava/util/Calendar;)Lq1/f$k;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_7
    sget-object p1, Lq1/f;->t:Lq1/f$k;

    return-object p1

    :cond_1
    const/16 p1, 0xf

    .line 21
    invoke-virtual {p0, p1, p3}, Lq1/f;->I(ILjava/util/Calendar;)Lq1/f$k;

    move-result-object p1

    return-object p1

    :cond_2
    :pswitch_8
    if-le p2, v1, :cond_3

    .line 22
    sget-object p1, Lq1/f;->q:Lq1/f$k;

    goto :goto_1

    :cond_3
    sget-object p1, Lq1/f;->o:Lq1/f$k;

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x4b -> :sswitch_a
        0x4d -> :sswitch_9
        0x53 -> :sswitch_8
        0x61 -> :sswitch_7
        0x64 -> :sswitch_6
        0x68 -> :sswitch_5
        0x6b -> :sswitch_4
        0x6d -> :sswitch_3
        0x73 -> :sswitch_2
        0x75 -> :sswitch_1
        0x77 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x57
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method

.method public final P(Ljava/util/Calendar;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq1/f;->f:Ljava/util/List;

    .line 2
    new-instance v0, Lq1/f$m;

    invoke-direct {v0, p0, p1}, Lq1/f$m;-><init>(Lq1/f;Ljava/util/Calendar;)V

    .line 3
    :goto_0
    invoke-virtual {v0}, Lq1/f$m;->a()Lq1/f$l;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lq1/f;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 2

    .line 1
    iget-object v0, p0, Lq1/a;->b:Ljava/util/TimeZone;

    iget-object v1, p0, Lq1/a;->c:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lq1/f;->h(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public h(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lq1/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq1/f$l;

    .line 4
    invoke-virtual {v1, v0}, Lq1/f$l;->a(Ljava/util/ListIterator;)I

    move-result v7

    .line 5
    iget-object v2, v1, Lq1/f$l;->a:Lq1/f$k;

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lq1/f$k;->b(Lq1/f;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
