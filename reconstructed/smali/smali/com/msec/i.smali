.class public final Lcom/msec/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msec/i$a;
    }
.end annotation


# static fields
.field public static a:Lcom/msec/b; = null

.field public static b:Z = false

.field public static c:Z = false

.field private static d:Ljava/lang/String; = null

.field private static e:Ljava/lang/String; = null

.field private static j:Ljava/lang/String; = null

.field private static k:Z = true

.field private static l:Z

.field private static m:Z

.field private static n:Z


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/msec/i;->g:Ljava/lang/String;

    sget-object v1, Lcom/msec/X3;->Q1:Landroid/content/Context;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/msec/i;->n:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xfa1

    if-nez p1, :cond_0

    :catch_0
    invoke-static {v1}, Lcom/msec/h;->a(I)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p1, p0, Lcom/msec/i;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/msec/X3;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/msec/i;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/msec/X3;->p(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/msec/i;->h:I

    iget-object p1, p0, Lcom/msec/i;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/msec/X3;->N(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/msec/i;->i:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const/16 v0, 0x497

    invoke-static {v0}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/16 p0, 0x6a9

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/msec/X3;->W(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 p0, 0x6a8

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static declared-synchronized a()V
    .locals 3

    const-class v0, Lcom/msec/i;

    monitor-enter v0

    const/16 v1, 0x657

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 p0, 0x656

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(ILjava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/msec/X3;->U(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/msec/i;->a(I)V

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/msec/i;

    monitor-enter v0

    const/16 v1, 0x655

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v1, v2}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    const/16 p0, 0x654

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lcom/msec/X3;->Q(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/msec/X3;->Q1:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/msec/c;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/16 v0, 0x497

    invoke-static {v0}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/16 p0, 0x653

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Z)V
    .locals 1

    const/16 v0, 0x3f2

    invoke-static {v0}, Lcom/msec/h;->a(I)V

    sput-boolean p0, Lcom/msec/h;->a:Z

    return-void
.end method

.method public static declared-synchronized b()V
    .locals 3

    const-class v0, Lcom/msec/i;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/msec/i;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/msec/c;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private static declared-synchronized b(Landroid/content/Context;)Z
    .locals 4

    const-class v0, Lcom/msec/i;

    monitor-enter v0

    const/16 v1, 0x652

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static c(Ljava/lang/String;)Lcom/msec/i;
    .locals 1

    new-instance v0, Lcom/msec/i;

    invoke-direct {v0, p0}, Lcom/msec/i;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()V
    .locals 1

    const/16 v0, 0x44e

    invoke-static {v0}, Lcom/msec/h;->a(I)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/msec/i;->k:Z

    sget-object v0, Lcom/msec/X3;->Q1:Landroid/content/Context;

    invoke-static {v0}, Lcom/msec/bd;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 p0, 0x651

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x1389

    invoke-static {v0}, Lcom/msec/h;->c(I)V

    sget-object v0, Lcom/msec/i;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/msec/X3;->A()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/msec/i;->e:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/msec/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/msec/X3;->J(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/msec/X3;->K(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static f([B)[B
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/msec/X3;->M([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g()Z
    .locals 1

    sget-boolean v0, Lcom/msec/i;->k:Z

    return v0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 p0, 0x650

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static g([B)Z
    .locals 0

    invoke-static {p0}, Lcom/msec/X3;->P([B)Z

    move-result p0

    return p0
.end method

.method public static h()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/msec/X3;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/msec/X3;->V(Ljava/lang/String;)V

    return-void
.end method

.method public static i()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/msec/X3;->D()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/msec/X3;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/msec/X3;->E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static j(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 p0, 0x65f

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static k()Z
    .locals 1

    sget-boolean v0, Lcom/msec/h;->a:Z

    return v0
.end method

.method public static l()Z
    .locals 1

    sget-boolean v0, Lcom/msec/i;->l:Z

    return v0
.end method

.method public static m()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/msec/X3;->Q1:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-static {}, Lcom/msec/X3;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/msec/X3;->Q1:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-static {}, Lcom/msec/X3;->X()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    iget-boolean v0, p0, Lcom/msec/i;->i:Z

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lcom/msec/q;

    invoke-direct {v0, p1, p0}, Lcom/msec/q;-><init>(Ljava/io/InputStream;Lcom/msec/i;)V

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    iget-boolean v0, p0, Lcom/msec/i;->i:Z

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lcom/msec/s;

    invoke-direct {v0, p1, p0}, Lcom/msec/s;-><init>(Ljava/io/OutputStream;Lcom/msec/i;)V

    return-object v0
.end method

.method public a([B)[B
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 p1, 0x65e

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public b(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x138a

    invoke-static {v0}, Lcom/msec/h;->c(I)V

    iget v0, p0, Lcom/msec/i;->h:I

    iget-object v1, p0, Lcom/msec/i;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/msec/i;->g:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/msec/X3;->q(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b([B)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/msec/X3;->R([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c([B)[B
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 p1, 0x65d

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public d(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 p1, 0x65c

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/msec/i;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d([B)[B
    .locals 2

    iget v0, p0, Lcom/msec/i;->h:I

    iget-object v1, p0, Lcom/msec/i;->f:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/msec/X3;->F(ILjava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public e([B)[B
    .locals 2

    iget v0, p0, Lcom/msec/i;->h:I

    iget-object v1, p0, Lcom/msec/i;->f:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/msec/X3;->G(ILjava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/msec/i;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/msec/X3;->N(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
