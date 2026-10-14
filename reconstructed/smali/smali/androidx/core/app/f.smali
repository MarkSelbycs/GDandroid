.class public Landroidx/core/app/f;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field public A:Z

.field public B:Ljava/lang/String;

.field public C:Landroid/os/Bundle;

.field public D:I

.field public E:I

.field public F:Landroid/app/Notification;

.field public G:Landroid/widget/RemoteViews;

.field public H:Landroid/widget/RemoteViews;

.field public I:Landroid/widget/RemoteViews;

.field public J:Ljava/lang/String;

.field public K:I

.field public L:Ljava/lang/String;

.field public M:J

.field public N:I

.field public O:I

.field public P:Z

.field public Q:Landroid/app/Notification;

.field public R:Z

.field public S:Landroid/graphics/drawable/Icon;

.field public T:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public a:Landroid/content/Context;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/d;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/i;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/d;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/app/PendingIntent;

.field public h:Landroid/app/PendingIntent;

.field public i:Landroid/widget/RemoteViews;

.field public j:Landroid/graphics/Bitmap;

.field public k:Ljava/lang/CharSequence;

.field public l:I

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Ljava/lang/CharSequence;

.field public q:Ljava/lang/CharSequence;

.field public r:[Ljava/lang/CharSequence;

.field public s:I

.field public t:I

.field public u:Z

.field public v:Ljava/lang/String;

.field public w:Z

.field public x:Ljava/lang/String;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Landroidx/core/app/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/f;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/f;->c:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/f;->d:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/core/app/f;->n:Z

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Landroidx/core/app/f;->y:Z

    .line 7
    iput v1, p0, Landroidx/core/app/f;->D:I

    .line 8
    iput v1, p0, Landroidx/core/app/f;->E:I

    .line 9
    iput v1, p0, Landroidx/core/app/f;->K:I

    .line 10
    iput v1, p0, Landroidx/core/app/f;->N:I

    .line 11
    iput v1, p0, Landroidx/core/app/f;->O:I

    .line 12
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Landroidx/core/app/f;->Q:Landroid/app/Notification;

    .line 13
    iput-object p1, p0, Landroidx/core/app/f;->a:Landroid/content/Context;

    .line 14
    iput-object p2, p0, Landroidx/core/app/f;->J:Ljava/lang/String;

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/app/Notification;->when:J

    .line 16
    iget-object p1, p0, Landroidx/core/app/f;->Q:Landroid/app/Notification;

    const/4 p2, -0x1

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    .line 17
    iput v1, p0, Landroidx/core/app/f;->m:I

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/core/app/f;->T:Ljava/util/ArrayList;

    .line 19
    iput-boolean v0, p0, Landroidx/core/app/f;->P:Z

    return-void
.end method

.method public static c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 1

    new-instance v0, Landroidx/core/app/g;

    invoke-direct {v0, p0}, Landroidx/core/app/g;-><init>(Landroidx/core/app/f;)V

    invoke-virtual {v0}, Landroidx/core/app/g;->b()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/f;->C:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/f;->C:Landroid/os/Bundle;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/core/app/f;->C:Landroid/os/Bundle;

    return-object v0
.end method

.method public d(Z)Landroidx/core/app/f;
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Landroidx/core/app/f;->h(IZ)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)Landroidx/core/app/f;
    .locals 0

    iput-object p1, p0, Landroidx/core/app/f;->J:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/CharSequence;)Landroidx/core/app/f;
    .locals 0

    invoke-static {p1}, Landroidx/core/app/f;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/f;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public g(I)Landroidx/core/app/f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/f;->Q:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    .line 2
    iget p1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Landroid/app/Notification;->flags:I

    :cond_0
    return-object p0
.end method

.method public final h(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Landroidx/core/app/f;->Q:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    or-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Landroidx/core/app/f;->Q:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    :goto_0
    return-void
.end method

.method public i(Z)Landroidx/core/app/f;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroidx/core/app/f;->h(IZ)V

    return-object p0
.end method

.method public j(I)Landroidx/core/app/f;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/f;->Q:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public k(J)Landroidx/core/app/f;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/f;->Q:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method
