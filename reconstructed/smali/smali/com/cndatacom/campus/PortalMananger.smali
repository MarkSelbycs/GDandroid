.class public Lcom/cndatacom/campus/PortalMananger;
.super Ljava/lang/Object;
.source "PortalMananger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cndatacom/campus/PortalMananger$PermissionRunnable;
    }
.end annotation


# instance fields
.field public A:Landroid/app/AlertDialog;

.field public B:Landroid/widget/ImageView;

.field public C:Landroid/widget/TextView;

.field public D:Landroid/widget/LinearLayout;

.field public E:Z

.field public volatile F:Ljava/lang/String;

.field public G:I

.field public H:Lcom/cndatacom/campus/receiver/AppReceiver;

.field public I:Landroid/app/AlertDialog;

.field public J:Landroid/app/AlertDialog;

.field public K:Landroid/app/AlertDialog;

.field public L:Landroid/widget/TextView;

.field public M:Landroid/widget/TextView;

.field public N:Landroid/widget/EditText;

.field public O:Landroid/widget/TextView;

.field public P:I

.field public Q:Z

.field public R:I

.field public S:Landroid/widget/RelativeLayout;

.field public T:Landroid/widget/TextView;

.field public U:Ljava/lang/String;

.field public V:Landroid/app/AlertDialog;

.field public W:Landroid/widget/TextView;

.field public X:I

.field public Y:I

.field public Z:Landroid/app/AlertDialog;

.field public final a:I

.field public a0:Landroid/app/AlertDialog;

.field public final b:I

.field public b0:Landroid/app/AlertDialog;

.field public volatile c:Z

.field public c0:Landroid/app/AlertDialog;

.field public final d:I

.field public d0:Landroid/view/View;

.field public final e:I

.field public e0:Lcom/cndatacom/download/manager/DownloadTaskManager;

.field public final f:I

.field public f0:I

.field public final g:I

.field public g0:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;

.field public final h:I

.field public h0:Landroid/app/Activity;

.field public final i:I

.field public i0:Landroid/webkit/WebView;

.field public final j:I

.field public j0:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/cndatacom/campus/PortalMananger$PermissionRunnable;",
            ">;"
        }
    .end annotation
.end field

.field public final k:I

.field public k0:Lcom/cndatacom/dialog/Dialog$RefreshUpdateDialogEvent;

.field public final l:I

.field public l0:Ljava/lang/Runnable;

.field public final m:I

.field public m0:Ljava/lang/Runnable;

.field public final n:I

.field public volatile n0:Z

.field public final o:I

.field public o0:Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public v:Landroid/os/Handler;

.field public w:Landroid/os/HandlerThread;

.field public x:Ljava/util/concurrent/ExecutorService;

.field public y:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/cndatacom/campus/uni/UniJSCallback;",
            ">;"
        }
    .end annotation
.end field

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/cndatacom/campus/PortalMananger;->a:I

    const/16 v1, 0x7d0

    .line 3
    iput v1, p0, Lcom/cndatacom/campus/PortalMananger;->b:I

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/cndatacom/campus/PortalMananger;->c:Z

    const/4 v2, 0x2

    .line 5
    iput v2, p0, Lcom/cndatacom/campus/PortalMananger;->d:I

    const v3, 0xea60

    .line 6
    iput v3, p0, Lcom/cndatacom/campus/PortalMananger;->e:I

    const/4 v3, 0x3

    .line 7
    iput v3, p0, Lcom/cndatacom/campus/PortalMananger;->f:I

    const/4 v4, 0x4

    .line 8
    iput v4, p0, Lcom/cndatacom/campus/PortalMananger;->g:I

    const/16 v5, 0x1388

    .line 9
    iput v5, p0, Lcom/cndatacom/campus/PortalMananger;->h:I

    const v5, -0x43a640e5    # -0.013290192f

    .line 10
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iput v5, p0, Lcom/cndatacom/campus/PortalMananger;->i:I

    const v5, -0x2a0dd940

    .line 11
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iput v5, p0, Lcom/cndatacom/campus/PortalMananger;->j:I

    .line 12
    iput v0, p0, Lcom/cndatacom/campus/PortalMananger;->k:I

    .line 13
    iput v2, p0, Lcom/cndatacom/campus/PortalMananger;->l:I

    .line 14
    iput v3, p0, Lcom/cndatacom/campus/PortalMananger;->m:I

    .line 15
    iput v4, p0, Lcom/cndatacom/campus/PortalMananger;->n:I

    const/4 v0, 0x5

    .line 16
    iput v0, p0, Lcom/cndatacom/campus/PortalMananger;->o:I

    const/4 v2, 0x6

    .line 17
    iput v2, p0, Lcom/cndatacom/campus/PortalMananger;->p:I

    const/4 v2, 0x7

    .line 18
    iput v2, p0, Lcom/cndatacom/campus/PortalMananger;->q:I

    const/16 v2, 0x8

    .line 19
    iput v2, p0, Lcom/cndatacom/campus/PortalMananger;->r:I

    const/16 v2, 0x9

    .line 20
    iput v2, p0, Lcom/cndatacom/campus/PortalMananger;->s:I

    const/16 v2, 0xa

    .line 21
    iput v2, p0, Lcom/cndatacom/campus/PortalMananger;->t:I

    const/16 v2, 0xb

    .line 22
    iput v2, p0, Lcom/cndatacom/campus/PortalMananger;->u:I

    .line 23
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/cndatacom/campus/PortalMananger;->y:Landroid/util/ArrayMap;

    .line 24
    iput-boolean v1, p0, Lcom/cndatacom/campus/PortalMananger;->z:Z

    .line 25
    iput-boolean v1, p0, Lcom/cndatacom/campus/PortalMananger;->E:Z

    const-string v2, ""

    .line 26
    iput-object v2, p0, Lcom/cndatacom/campus/PortalMananger;->F:Ljava/lang/String;

    const/4 v2, -0x1

    .line 27
    iput v2, p0, Lcom/cndatacom/campus/PortalMananger;->G:I

    const/16 v2, 0x3c

    .line 28
    iput v2, p0, Lcom/cndatacom/campus/PortalMananger;->P:I

    .line 29
    iput-boolean v1, p0, Lcom/cndatacom/campus/PortalMananger;->Q:Z

    .line 30
    iput v2, p0, Lcom/cndatacom/campus/PortalMananger;->R:I

    .line 31
    iput v0, p0, Lcom/cndatacom/campus/PortalMananger;->X:I

    .line 32
    iput v0, p0, Lcom/cndatacom/campus/PortalMananger;->Y:I

    .line 33
    iput v1, p0, Lcom/cndatacom/campus/PortalMananger;->f0:I

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->j0:Landroid/util/ArrayMap;

    .line 35
    new-instance v0, Lcom/cndatacom/campus/PortalMananger$1;

    invoke-direct {v0, p0}, Lcom/cndatacom/campus/PortalMananger$1;-><init>(Lcom/cndatacom/campus/PortalMananger;)V

    iput-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->k0:Lcom/cndatacom/dialog/Dialog$RefreshUpdateDialogEvent;

    .line 36
    new-instance v0, Lcom/cndatacom/campus/PortalMananger$2;

    invoke-direct {v0, p0}, Lcom/cndatacom/campus/PortalMananger$2;-><init>(Lcom/cndatacom/campus/PortalMananger;)V

    iput-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->l0:Ljava/lang/Runnable;

    .line 37
    new-instance v0, Lcom/cndatacom/campus/PortalMananger$3;

    invoke-direct {v0, p0}, Lcom/cndatacom/campus/PortalMananger$3;-><init>(Lcom/cndatacom/campus/PortalMananger;)V

    iput-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->m0:Ljava/lang/Runnable;

    .line 38
    iput-boolean v1, p0, Lcom/cndatacom/campus/PortalMananger;->n0:Z

    .line 39
    new-instance v0, Lcom/cndatacom/campus/PortalMananger$4;

    invoke-direct {v0, p0}, Lcom/cndatacom/campus/PortalMananger$4;-><init>(Lcom/cndatacom/campus/PortalMananger;)V

    iput-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->o0:Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;

    .line 40
    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->h0:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Lcom/cndatacom/campus/PortalMananger;->i0:Landroid/webkit/WebView;

    return-void
.end method

.method public static synthetic A(Lcom/cndatacom/campus/PortalMananger;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/campus/PortalMananger;->m0:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic A0(Lcom/cndatacom/campus/PortalMananger;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->Q0(Z)V

    return-void
.end method

.method public static synthetic B(Lcom/cndatacom/campus/PortalMananger;IILcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->M0(IILcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    return-void
.end method

.method public static synthetic B0(Lcom/cndatacom/campus/PortalMananger;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->A2()V

    return-void
.end method

.method public static synthetic C(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/NetInfo;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/cndatacom/campus/PortalMananger;->k1(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/NetInfo;)V

    return-void
.end method

.method public static synthetic C0(Lcom/cndatacom/campus/PortalMananger;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->s1()V

    return-void
.end method

.method public static synthetic D(Lcom/cndatacom/campus/PortalMananger;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/campus/PortalMananger;->x:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static synthetic D0(Lcom/cndatacom/campus/PortalMananger;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/campus/PortalMananger;->i0:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static synthetic E(Lcom/cndatacom/campus/PortalMananger;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cndatacom/campus/PortalMananger;->c:Z

    return p1
.end method

.method public static synthetic E0(Lcom/cndatacom/campus/PortalMananger;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/campus/PortalMananger;->W:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic F(Lcom/cndatacom/campus/PortalMananger;)I
    .locals 0

    iget p0, p0, Lcom/cndatacom/campus/PortalMananger;->f0:I

    return p0
.end method

.method public static synthetic F0(Lcom/cndatacom/campus/PortalMananger;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->V0()V

    return-void
.end method

.method public static synthetic G(Lcom/cndatacom/campus/PortalMananger;I)I
    .locals 0

    iput p1, p0, Lcom/cndatacom/campus/PortalMananger;->f0:I

    return p1
.end method

.method public static synthetic G0(Lcom/cndatacom/campus/PortalMananger;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/campus/PortalMananger;->U:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic H(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->m1(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic I(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->l1(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic J(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->i1(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static synthetic K(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->h1(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic L(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->p1(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic M(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->U2(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic N(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->j1(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic O(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->r1(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    return-void
.end method

.method public static synthetic P(Lcom/cndatacom/campus/PortalMananger;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(Lcom/cndatacom/campus/PortalMananger;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/campus/PortalMananger;->y:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static synthetic R(Lcom/cndatacom/campus/PortalMananger;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/campus/PortalMananger;->j0:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static synthetic S(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/cndatacom/campus/PortalMananger;->y1(Ljava/lang/String;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    return-void
.end method

.method private synthetic S1()V
    .locals 2

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u4e2a\u4eba\u4fe1\u606f\u5df2\u590d\u5236\u5230\u526a\u8d34\u677f"

    invoke-static {v0, v1}, Lcom/cndatacom/sdk/portal/util/ToastUtil;->showBottomText(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic T(Lcom/cndatacom/campus/PortalMananger;ZLcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/cndatacom/campus/PortalMananger;->n1(ZLcom/cndatacom/campus/uni/UniJSCallback;)V

    return-void
.end method

.method private synthetic T1(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->R2(Lcom/alibaba/fastjson/JSONArray;)V

    return-void
.end method

.method public static synthetic U(Lcom/cndatacom/campus/PortalMananger;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->J1(Lcom/cndatacom/campus/uni/UniJSCallback;)V

    return-void
.end method

.method private synthetic U1(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->O1(Lcom/alibaba/fastjson/JSONArray;)V

    return-void
.end method

.method public static synthetic V(Lcom/cndatacom/campus/PortalMananger;)I
    .locals 0

    iget p0, p0, Lcom/cndatacom/campus/PortalMananger;->j:I

    return p0
.end method

.method private synthetic V1(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->V0()V

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_cancel"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/cndatacom/campus/PortalMananger;->N0(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic W(Lcom/cndatacom/campus/PortalMananger;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->I1(Lcom/cndatacom/campus/uni/UniJSCallback;)V

    return-void
.end method

.method private synthetic W1(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->V0()V

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_confirm"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/cndatacom/campus/PortalMananger;->N0(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic X(Lcom/cndatacom/campus/PortalMananger;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->F1(Lcom/cndatacom/campus/uni/UniJSCallback;)V

    return-void
.end method

.method private synthetic X1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->n2(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic Y(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ADInfo;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->D1(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ADInfo;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    return-void
.end method

.method private synthetic Y1(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/cndatacom/campus/PortalMananger;->N:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->W0()V

    .line 4
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->x:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cndatacom/campus/g;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/cndatacom/campus/g;-><init>(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public static synthetic Z(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/Activity;
    .locals 0

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method private synthetic Z1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->L:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->M:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic a(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cndatacom/campus/PortalMananger;->b2(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a0(Lcom/cndatacom/campus/PortalMananger;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->J0(Lcom/cndatacom/campus/uni/UniJSCallback;)V

    return-void
.end method

.method private synthetic a2(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->onGetVerificatioCode(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetVerificatioCode->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/cndatacom/campus/n;

    invoke-direct {v0, p0}, Lcom/cndatacom/campus/n;-><init>(Lcom/cndatacom/campus/PortalMananger;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cndatacom/campus/PortalMananger;->c2(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b0(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->G1(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b2(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean p2, p0, Lcom/cndatacom/campus/PortalMananger;->Q:Z

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/cndatacom/campus/PortalMananger;->L:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p2, p0, Lcom/cndatacom/campus/PortalMananger;->O:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u91cd\u65b0\u83b7\u53d6("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cndatacom/campus/PortalMananger;->R:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/cndatacom/campus/PortalMananger;->Q:Z

    .line 5
    iget-object p2, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->m0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    iget-object p2, p0, Lcom/cndatacom/campus/PortalMananger;->x:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/cndatacom/campus/f;

    invoke-direct {v0, p0, p1}, Lcom/cndatacom/campus/f;-><init>(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/cndatacom/campus/PortalMananger;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->e2(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c0(Lcom/cndatacom/campus/PortalMananger;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/campus/PortalMananger;->B:Landroid/widget/ImageView;

    return-object p0
.end method

.method private synthetic c2(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->W0()V

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_cancel"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/cndatacom/campus/PortalMananger;->N0(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic d(Lcom/cndatacom/campus/PortalMananger;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->T1(Lcom/alibaba/fastjson/JSONArray;)V

    return-void
.end method

.method public static synthetic d0(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/campus/PortalMananger;->A:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private synthetic d2(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    const-string p3, "type"

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->a0:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cndatacom/sdk/portal/util/IntentUtil;->inBrowserOpen(Landroid/app/Activity;Ljava/lang/String;)V

    .line 3
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "clickModule"

    .line 5
    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x2

    .line 7
    invoke-virtual {v1, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "moduleId"

    .line 8
    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "data"

    .line 9
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "eventName"

    const-string p3, "handleListen"

    .line 10
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "result"

    .line 11
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "emitEvent"

    .line 12
    invoke-virtual {p0, p2, p1}, Lcom/cndatacom/campus/PortalMananger;->N0(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic e(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cndatacom/campus/PortalMananger;->W1(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->u1(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic e2(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/cndatacom/campus/l;

    invoke-direct {v1, p0, p2, p3}, Lcom/cndatacom/campus/l;-><init>(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Lcom/cndatacom/dialog/Dialog;->getAdDialog(Landroid/app/Activity;Landroid/graphics/Bitmap;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->a0:Landroid/app/AlertDialog;

    .line 2
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static synthetic f(Lcom/cndatacom/campus/PortalMananger;)V
    .locals 0

    invoke-direct {p0}, Lcom/cndatacom/campus/PortalMananger;->S1()V

    return-void
.end method

.method public static synthetic f0(Lcom/cndatacom/campus/PortalMananger;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/campus/PortalMananger;->d0:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic g(Lcom/cndatacom/campus/PortalMananger;)V
    .locals 0

    invoke-direct {p0}, Lcom/cndatacom/campus/PortalMananger;->Z1()V

    return-void
.end method

.method public static synthetic g0(Lcom/cndatacom/campus/PortalMananger;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->d0:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic h(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->a2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h0(Lcom/cndatacom/campus/PortalMananger;)Lcom/cndatacom/dialog/Dialog$RefreshUpdateDialogEvent;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/campus/PortalMananger;->k0:Lcom/cndatacom/dialog/Dialog$RefreshUpdateDialogEvent;

    return-object p0
.end method

.method public static synthetic i(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->Y1(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i0(Lcom/cndatacom/campus/PortalMananger;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/campus/PortalMananger;->N:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic j(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cndatacom/campus/PortalMananger;->V1(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j0(Lcom/cndatacom/campus/PortalMananger;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/campus/PortalMananger;->T:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic k(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->d2(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k0(Lcom/cndatacom/campus/PortalMananger;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cndatacom/campus/PortalMananger;->E:Z

    return p0
.end method

.method public static synthetic l(Lcom/cndatacom/campus/PortalMananger;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->U1(Lcom/alibaba/fastjson/JSONArray;)V

    return-void
.end method

.method public static synthetic l0(Lcom/cndatacom/campus/PortalMananger;)I
    .locals 0

    iget p0, p0, Lcom/cndatacom/campus/PortalMananger;->Y:I

    return p0
.end method

.method public static synthetic m(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->X1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic m0(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->z1(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic n0(Lcom/cndatacom/campus/PortalMananger;I)I
    .locals 0

    iput p1, p0, Lcom/cndatacom/campus/PortalMananger;->Y:I

    return p1
.end method

.method public static synthetic o(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/campus/PortalMananger;->c0:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic o0(Lcom/cndatacom/campus/PortalMananger;)I
    .locals 2

    iget v0, p0, Lcom/cndatacom/campus/PortalMananger;->Y:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/cndatacom/campus/PortalMananger;->Y:I

    return v0
.end method

.method public static synthetic p(Lcom/cndatacom/campus/PortalMananger;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->c0:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic p0(Lcom/cndatacom/campus/PortalMananger;Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->M1(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic q(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->Y0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic q0(Lcom/cndatacom/campus/PortalMananger;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->h2()Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/cndatacom/campus/PortalMananger;->N0(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic r0(Lcom/cndatacom/campus/PortalMananger;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->i2()Z

    move-result p0

    return p0
.end method

.method public static synthetic s(Lcom/cndatacom/campus/PortalMananger;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/campus/PortalMananger;->l0:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic s0(Lcom/cndatacom/campus/PortalMananger;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->O0(Z)V

    return-void
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->isVpn()Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_1

    .line 3
    const-class v0, Lcom/cndatacom/campus/service/HoldVpnService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cndatacom/sdk/portal/util/ServiceUtil;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p0}, Lcom/cndatacom/campus/service/HoldVpnService;->start(Landroid/content/Context;)Z

    goto :goto_0

    :cond_0
    const-string v0, "HoldVpnService isServiceRunning"

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 6
    invoke-static {p0, v1}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->sendReceiver(Landroid/content/Context;I)V

    goto :goto_0

    .line 7
    :cond_1
    const-class v0, Lcom/cndatacom/campus/service/HoldService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cndatacom/sdk/portal/util/ServiceUtil;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-static {p0}, Lcom/cndatacom/campus/service/HoldService;->start(Landroid/content/Context;)Z

    goto :goto_0

    :cond_2
    const-string v0, "HoldService isServiceRunning"

    .line 9
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 10
    invoke-static {p0, v1}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->sendReceiver(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public static synthetic t(Lcom/cndatacom/campus/PortalMananger;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic t0(Lcom/cndatacom/campus/PortalMananger;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->B1()V

    return-void
.end method

.method public static synthetic u(Lcom/cndatacom/campus/PortalMananger;)I
    .locals 0

    iget p0, p0, Lcom/cndatacom/campus/PortalMananger;->R:I

    return p0
.end method

.method public static synthetic u0(Lcom/cndatacom/campus/PortalMananger;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->X2(I)V

    return-void
.end method

.method public static synthetic v(Lcom/cndatacom/campus/PortalMananger;I)I
    .locals 0

    iput p1, p0, Lcom/cndatacom/campus/PortalMananger;->R:I

    return p1
.end method

.method public static synthetic v0(Lcom/cndatacom/campus/PortalMananger;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->K0(Lcom/cndatacom/campus/uni/UniJSCallback;)V

    return-void
.end method

.method public static synthetic w(Lcom/cndatacom/campus/PortalMananger;)I
    .locals 2

    iget v0, p0, Lcom/cndatacom/campus/PortalMananger;->R:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/cndatacom/campus/PortalMananger;->R:I

    return v0
.end method

.method public static synthetic w0(Lcom/cndatacom/campus/PortalMananger;)I
    .locals 0

    iget p0, p0, Lcom/cndatacom/campus/PortalMananger;->i:I

    return p0
.end method

.method public static synthetic x(Lcom/cndatacom/campus/PortalMananger;)I
    .locals 0

    iget p0, p0, Lcom/cndatacom/campus/PortalMananger;->P:I

    return p0
.end method

.method public static synthetic x0(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/campus/PortalMananger;->b0:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic y(Lcom/cndatacom/campus/PortalMananger;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/campus/PortalMananger;->O:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic y0(Lcom/cndatacom/campus/PortalMananger;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->b0:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic z(Lcom/cndatacom/campus/PortalMananger;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cndatacom/campus/PortalMananger;->Q:Z

    return p1
.end method

.method public static synthetic z0(Lcom/cndatacom/campus/PortalMananger;)I
    .locals 0

    iget p0, p0, Lcom/cndatacom/campus/PortalMananger;->X:I

    return p0
.end method


# virtual methods
.method public final A1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->U:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->V:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f090024

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0700a0

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f07009f

    .line 7
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/cndatacom/campus/PortalMananger;->W:Landroid/widget/TextView;

    const p2, 0x7f07009d

    .line 8
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    .line 9
    new-instance v2, Lcom/cndatacom/campus/j;

    invoke-direct {v2, p0, p1}, Lcom/cndatacom/campus/j;-><init>(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f07009e

    .line 10
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    .line 11
    new-instance v2, Lcom/cndatacom/campus/i;

    invoke-direct {v2, p0, p1}, Lcom/cndatacom/campus/i;-><init>(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 13
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->V:Landroid/app/AlertDialog;

    .line 14
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const p2, 0x106000d

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 15
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->V:Landroid/app/AlertDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 16
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->V:Landroid/app/AlertDialog;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 17
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->V:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 18
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->W:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u53bb\u5145\u503c("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/cndatacom/campus/PortalMananger;->Y:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    iget-object p2, p0, Lcom/cndatacom/campus/PortalMananger;->l0:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final A2()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phoneType"

    const-string v3, "android"

    .line 3
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    const-string v2, "clipboard"

    const-string v3, ""

    .line 5
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "location"

    .line 6
    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/PermissionUtil;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 7
    invoke-static {v1}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v3, "vpn"

    .line 8
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "battery"

    .line 9
    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/BatteryUtil;->isIgnoringBatteryOptimizations(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "HandleQueryPermissionResult"

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/cndatacom/campus/PortalMananger;->N0(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final B1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/cndatacom/campus/PortalMananger;->n0:Z

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/NetUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/PermissionUtil;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/PermissionUtil;->hasLocationServicePermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger;->o0:Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->isOpenSSID()Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;-><init>(Landroid/content/Context;Z)V

    .line 7
    invoke-virtual {v1}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->isUnknown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/cndatacom/campus/PortalMananger;->n0:Z

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->o0:Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;

    invoke-interface {v0, v1}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handleNetworkInfoMsg(Lcom/cndatacom/sdk/portal/entity/NetInfo;)V

    :cond_1
    return-void
.end method

.method public final B2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/cndatacom/personal/PersonalManager;->getInstance()Lcom/cndatacom/personal/PersonalManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Lcom/cndatacom/personal/PersonalManager;->queryPersonalInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public final C1(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->U2(Landroid/content/Context;)V

    const-string v0, "com.cndatacom.campus.receiver.action.bundle.key"

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "com.cndatacom.campus.receiver.action.data.key"

    .line 3
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    .line 4
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->o0:Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p2}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handleConnectFailMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object p2

    const/4 v0, 0x3

    .line 7
    invoke-virtual {p2, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->setLoginState(I)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    const-string v0, "6"

    .line 8
    invoke-static {p1, p2, v0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->term(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    const-wide/16 p1, 0x1388

    .line 11
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 13
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->V2()V

    return-void
.end method

.method public final C2()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->hasDetectUrl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->useIndexDetectUrlData()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/NetUtil;->getWifiState(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/cndatacom/campus/PortalMananger;->P0(Landroid/content/Context;IZZ)V

    return-void
.end method

.method public final D1(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ADInfo;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ADInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".png"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/cndatacom/sdk/portal/constant/ResourceConstants;->PATH_AD:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/cndatacom/sdk/portal/util/ResourceUtil;->getContextFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cndatacom/campus/PortalMananger;->z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v0

    .line 8
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x103012c

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f090025

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f07003c

    .line 10
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/cndatacom/campus/PortalMananger;->D:Landroid/widget/LinearLayout;

    .line 11
    new-instance v5, Lcom/cndatacom/campus/PortalMananger$25;

    invoke-direct {v5, p0}, Lcom/cndatacom/campus/PortalMananger$25;-><init>(Lcom/cndatacom/campus/PortalMananger;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f07003b

    .line 12
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cndatacom/campus/PortalMananger;->C:Landroid/widget/TextView;

    const v3, 0x7f07003a

    .line 13
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/cndatacom/campus/PortalMananger;->B:Landroid/widget/ImageView;

    .line 14
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 15
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/cndatacom/campus/PortalMananger;->A:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 17
    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger;->A:Landroid/app/AlertDialog;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const-string v1, "window"

    .line 18
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 19
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 20
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 21
    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 22
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 23
    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 24
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ADInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/cndatacom/campus/PortalMananger;->B:Landroid/widget/ImageView;

    new-instance v9, Lcom/cndatacom/campus/PortalMananger$26;

    invoke-direct {v9, p0, p3, v0, p2}, Lcom/cndatacom/campus/PortalMananger$26;-><init>(Lcom/cndatacom/campus/PortalMananger;Lcom/cndatacom/campus/uni/UniJSCallback;Landroid/app/Activity;Lcom/cndatacom/sdk/portal/entity/ADInfo;)V

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Lcom/cndatacom/sdk/portal/util/ImageUtil;->loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;IILcom/cndatacom/sdk/portal/util/ImageUtil$ImageCallback;)V

    :cond_0
    return-void
.end method

.method public final D2()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->shareLog(Landroid/content/Context;Landroid/app/Activity;)Z

    return-void
.end method

.method public final E1(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 5

    .line 1
    invoke-static {p1, p2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->getAdvData(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lcom/cndatacom/sdk/portal/entity/ADInfo;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "window"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 6
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 7
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 8
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ADInfo;->getUrl()Ljava/lang/String;

    move-result-object p2

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/cndatacom/sdk/portal/constant/ResourceConstants;->PATH_AD:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/cndatacom/sdk/portal/util/ResourceUtil;->getContextFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 13
    :cond_1
    invoke-static {p1, p2, v0, v1}, Lcom/cndatacom/sdk/portal/util/ImageUtil;->loadImageFormUrl(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 p2, 0x64

    .line 14
    invoke-static {v2, p1, p2}, Lcom/cndatacom/sdk/portal/util/ImageUtil;->writeBitmapToFile(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :cond_2
    const-string p1, "handleSplashAD  -->\u4e0b\u8f7d\u6249\u9875\u5e7f\u544a\u5931\u8d25"

    .line 15
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final E2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 12

    .line 1
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cndatacom/campus/PortalMananger;->F:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "2"

    .line 5
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    const-string v4, "checkItem"

    if-eqz p1, :cond_0

    .line 6
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p2, v0}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Lcom/alibaba/fastjson/JSONObject;)V

    return-void

    .line 8
    :cond_0
    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/NetUtil;->getWifiState(Landroid/content/Context;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "result"

    const/4 v6, 0x1

    if-ne p1, v6, :cond_1

    .line 9
    :try_start_2
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->F:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/cndatacom/campus/PortalMananger;->Q1(Lcom/cndatacom/campus/uni/UniJSCallback;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p0, p2, v0, v6}, Lcom/cndatacom/campus/PortalMananger;->L0(Lcom/cndatacom/campus/uni/UniJSCallback;Lcom/alibaba/fastjson/JSONObject;Z)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->F:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/cndatacom/campus/PortalMananger;->Q1(Lcom/cndatacom/campus/uni/UniJSCallback;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p0, p2, v0, v6}, Lcom/cndatacom/campus/PortalMananger;->L0(Lcom/cndatacom/campus/uni/UniJSCallback;Lcom/alibaba/fastjson/JSONObject;Z)V

    .line 17
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->F:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/cndatacom/campus/PortalMananger;->Q1(Lcom/cndatacom/campus/uni/UniJSCallback;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 18
    :cond_3
    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/NetUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result p1

    .line 19
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v7

    const/4 v8, 0x2

    if-nez p1, :cond_5

    .line 20
    iget-object v9, p0, Lcom/cndatacom/campus/PortalMananger;->F:Ljava/lang/String;

    invoke-virtual {p0, p2, v9}, Lcom/cndatacom/campus/PortalMananger;->Q1(Lcom/cndatacom/campus/uni/UniJSCallback;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {p0, p2, v0, v6}, Lcom/cndatacom/campus/PortalMananger;->L0(Lcom/cndatacom/campus/uni/UniJSCallback;Lcom/alibaba/fastjson/JSONObject;Z)V

    :cond_4
    move v10, v2

    goto :goto_3

    .line 24
    :cond_5
    new-instance v9, Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-direct {v9, v1, v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;-><init>(Landroid/content/Context;Z)V

    .line 25
    invoke-static {v1, v7, v2, v6}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->detect(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;ZZ)I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_6

    move v10, v6

    goto :goto_1

    :cond_6
    const/16 v11, 0xc9

    if-ne v10, v11, :cond_7

    .line 26
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v10

    .line 27
    invoke-virtual {v10}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v10

    .line 28
    invoke-virtual {v10, v9}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->equals(Lcom/cndatacom/sdk/portal/entity/NetInfo;)Z

    move-result v10

    goto :goto_1

    :cond_7
    move v10, v2

    :goto_1
    if-eqz v10, :cond_8

    .line 29
    invoke-virtual {v7, v9}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->setNetInfo(Lcom/cndatacom/sdk/portal/entity/NetInfo;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 30
    :cond_8
    iget-object v9, p0, Lcom/cndatacom/campus/PortalMananger;->F:Ljava/lang/String;

    invoke-virtual {p0, p2, v9}, Lcom/cndatacom/campus/PortalMananger;->Q1(Lcom/cndatacom/campus/uni/UniJSCallback;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    if-eqz v10, :cond_9

    move v9, v2

    goto :goto_2

    :cond_9
    move v9, v3

    .line 31
    :goto_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p0, p2, v0, v6}, Lcom/cndatacom/campus/PortalMananger;->L0(Lcom/cndatacom/campus/uni/UniJSCallback;Lcom/alibaba/fastjson/JSONObject;Z)V

    .line 34
    :cond_a
    :goto_3
    iget-object v8, p0, Lcom/cndatacom/campus/PortalMananger;->F:Ljava/lang/String;

    invoke-virtual {p0, p2, v8}, Lcom/cndatacom/campus/PortalMananger;->Q1(Lcom/cndatacom/campus/uni/UniJSCallback;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    return-void

    :cond_b
    const/4 v8, 0x3

    if-nez v10, :cond_d

    .line 35
    iget-object v9, p0, Lcom/cndatacom/campus/PortalMananger;->F:Ljava/lang/String;

    invoke-virtual {p0, p2, v9}, Lcom/cndatacom/campus/PortalMananger;->Q1(Lcom/cndatacom/campus/uni/UniJSCallback;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {p0, p2, v0, v6}, Lcom/cndatacom/campus/PortalMananger;->L0(Lcom/cndatacom/campus/uni/UniJSCallback;Lcom/alibaba/fastjson/JSONObject;Z)V

    :cond_c
    move v9, v2

    goto :goto_7

    .line 39
    :cond_d
    invoke-virtual {v7}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v9

    .line 40
    invoke-virtual {v9}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getWlanuserip()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    invoke-virtual {v9}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv6()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getWlanuserip()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_4

    :cond_e
    move v9, v2

    goto :goto_5

    :cond_f
    :goto_4
    move v9, v6

    .line 41
    :goto_5
    iget-object v10, p0, Lcom/cndatacom/campus/PortalMananger;->F:Ljava/lang/String;

    invoke-virtual {p0, p2, v10}, Lcom/cndatacom/campus/PortalMananger;->Q1(Lcom/cndatacom/campus/uni/UniJSCallback;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_11

    if-eqz v9, :cond_10

    move v10, v2

    goto :goto_6

    :cond_10
    move v10, v3

    .line 42
    :goto_6
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v5, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p0, p2, v0, v6}, Lcom/cndatacom/campus/PortalMananger;->L0(Lcom/cndatacom/campus/uni/UniJSCallback;Lcom/alibaba/fastjson/JSONObject;Z)V

    .line 45
    :cond_11
    :goto_7
    iget-object v8, p0, Lcom/cndatacom/campus/PortalMananger;->F:Ljava/lang/String;

    invoke-virtual {p0, p2, v8}, Lcom/cndatacom/campus/PortalMananger;->Q1(Lcom/cndatacom/campus/uni/UniJSCallback;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    return-void

    :cond_12
    const/4 v8, 0x4

    if-nez v9, :cond_13

    .line 46
    iget-object v9, p0, Lcom/cndatacom/campus/PortalMananger;->F:Ljava/lang/String;

    invoke-virtual {p0, p2, v9}, Lcom/cndatacom/campus/PortalMananger;->Q1(Lcom/cndatacom/campus/uni/UniJSCallback;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_15

    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {p0, p2, v0, v6}, Lcom/cndatacom/campus/PortalMananger;->L0(Lcom/cndatacom/campus/uni/UniJSCallback;Lcom/alibaba/fastjson/JSONObject;Z)V

    goto :goto_9

    .line 50
    :cond_13
    invoke-static {v1, v7}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->ticket(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object v9

    .line 51
    invoke-virtual {v9}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->isSuccess()Z

    move-result v9

    .line 52
    iget-object v10, p0, Lcom/cndatacom/campus/PortalMananger;->F:Ljava/lang/String;

    invoke-virtual {p0, p2, v10}, Lcom/cndatacom/campus/PortalMananger;->Q1(Lcom/cndatacom/campus/uni/UniJSCallback;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_15

    if-eqz v9, :cond_14

    move v9, v2

    goto :goto_8

    :cond_14
    move v9, v3

    .line 53
    :goto_8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p0, p2, v0, v6}, Lcom/cndatacom/campus/PortalMananger;->L0(Lcom/cndatacom/campus/uni/UniJSCallback;Lcom/alibaba/fastjson/JSONObject;Z)V

    .line 56
    :cond_15
    :goto_9
    iget-object v6, p0, Lcom/cndatacom/campus/PortalMananger;->F:Ljava/lang/String;

    invoke-virtual {p0, p2, v6}, Lcom/cndatacom/campus/PortalMananger;->Q1(Lcom/cndatacom/campus/uni/UniJSCallback;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    return-void

    :cond_16
    const/4 v6, 0x5

    if-nez p1, :cond_17

    .line 57
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->F:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/cndatacom/campus/PortalMananger;->Q1(Lcom/cndatacom/campus/uni/UniJSCallback;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 58
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {p0, p2, v0, v2}, Lcom/cndatacom/campus/PortalMananger;->L0(Lcom/cndatacom/campus/uni/UniJSCallback;Lcom/alibaba/fastjson/JSONObject;Z)V

    goto :goto_a

    :cond_17
    const-string p1, "HomePage"

    const v8, 0x7f0b0042

    .line 61
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, p1, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 63
    new-instance v1, Lcom/cndatacom/sdk/portal/http/HttpClient;

    invoke-direct {v1}, Lcom/cndatacom/sdk/portal/http/HttpClient;-><init>()V

    invoke-virtual {v1, p1}, Lcom/cndatacom/sdk/portal/http/HttpClient;->get(Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->isSuccessful()Z

    move-result p1

    .line 65
    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger;->F:Ljava/lang/String;

    invoke-virtual {p0, p2, v1}, Lcom/cndatacom/campus/PortalMananger;->Q1(Lcom/cndatacom/campus/uni/UniJSCallback;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    if-eqz p1, :cond_18

    move v3, v2

    .line 66
    :cond_18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p0, p2, v0, v2}, Lcom/cndatacom/campus/PortalMananger;->L0(Lcom/cndatacom/campus/uni/UniJSCallback;Lcom/alibaba/fastjson/JSONObject;Z)V

    goto :goto_a

    .line 69
    :cond_19
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->F:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/cndatacom/campus/PortalMananger;->Q1(Lcom/cndatacom/campus/uni/UniJSCallback;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {p0, p2, v0, v2}, Lcom/cndatacom/campus/PortalMananger;->L0(Lcom/cndatacom/campus/uni/UniJSCallback;Lcom/alibaba/fastjson/JSONObject;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_a

    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1a
    :goto_a
    return-void
.end method

.method public final F1(Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->y:Landroid/util/ArrayMap;

    iget v1, p0, Lcom/cndatacom/campus/PortalMananger;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->getAdvData(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lcom/cndatacom/sdk/portal/entity/ADInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Lcom/cndatacom/campus/PortalMananger$24;

    invoke-direct {v3, p0, v0, v2, p1}, Lcom/cndatacom/campus/PortalMananger$24;-><init>(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ADInfo;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final F2(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cndatacom/campus/work/CheckRegularWorker;->getInstance()Lcom/cndatacom/campus/work/CheckRegularWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cndatacom/campus/work/CheckRegularWorker;->closeCheckNetRegularly()V

    .line 2
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v1

    const/4 v2, 0x3

    .line 4
    invoke-virtual {v1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->setLoginState(I)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 5
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;

    move-result-object v2

    iget-object v3, p0, Lcom/cndatacom/campus/PortalMananger;->o0:Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;

    invoke-virtual {v2, v0, v1, p1, v3}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->onTerm(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;)V

    return-void
.end method

.method public final G1(Ljava/lang/String;)V
    .locals 8

    const-string v0, ""

    .line 1
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Local_SplashAD_Key"

    const-string v4, "[]"

    .line 3
    invoke-virtual {v1, v3, v4}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "account"

    .line 6
    invoke-virtual {v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ostype"

    const-string v7, "4"

    .line 7
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "cid"

    .line 8
    invoke-virtual {v1, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getSchoolId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "version"

    .line 9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "clientid"

    .line 10
    invoke-virtual {v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "stattime"

    .line 13
    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "count"

    const/4 v2, 0x1

    .line 14
    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "type"

    const/4 v2, 0x2

    .line 15
    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "moduleId"

    .line 16
    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 18
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final G2(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "coolMethod->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move v0, v2

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "onIntentVpnPage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "hideModal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "showLoading"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "showCheckBoxModal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "onExitApplication"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "hideLoading"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "onCheckNet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "onCheckNetGoon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "onQueryPermission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "onTerm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "onAuth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "onMoveTaskToBack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "onExitVisitor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "onRetry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x8

    goto :goto_1

    :sswitch_e
    const-string v0, "onHandleCheckNetRegular"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_f
    const-string v0, "onAskSSIDPermission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_10
    const-string v0, "onIntentAskVpnPage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_11
    const-string v0, "onAskPermission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_12
    const-string v0, "InitMananger"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_13
    const-string v0, "showToast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_14
    const-string v1, "showPopup"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "showModal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    move v0, v3

    :cond_15
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 3
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->x:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cndatacom/campus/PortalMananger$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/cndatacom/campus/PortalMananger$6;-><init>(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_2

    .line 4
    :pswitch_0
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->P1()V

    .line 5
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->H2()V

    .line 6
    :pswitch_1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    new-instance v1, Lcom/cndatacom/campus/PortalMananger$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/cndatacom/campus/PortalMananger$5;-><init>(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 7
    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->r1(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x72727a50 -> :sswitch_15
        -0x72480451 -> :sswitch_14
        -0x720fded6 -> :sswitch_13
        -0x67bad7c3 -> :sswitch_12
        -0x64f00277 -> :sswitch_11
        -0x5d8eb35b -> :sswitch_10
        -0x585041bc -> :sswitch_f
        -0x50634d80 -> :sswitch_e
        -0x4fc407f7 -> :sswitch_d
        -0x41a541ef -> :sswitch_c
        -0x3edb15a9 -> :sswitch_b
        -0x3c68a7d9 -> :sswitch_a
        -0x3c604115 -> :sswitch_9
        -0x32044f28 -> :sswitch_8
        -0x208f72a5 -> :sswitch_7
        0xb4f274 -> :sswitch_6
        0xce38d9a -> :sswitch_5
        0xeb90573 -> :sswitch_4
        0x18960ccd -> :sswitch_3
        0x2b33b77f -> :sswitch_2
        0x31e2268b -> :sswitch_1
        0x7fd6e3c8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final H0(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x3

    .line 4
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v0

    invoke-static {p1, v0, v4, v5, v6}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->authOtherClient(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v2

    invoke-static/range {v1 .. v6}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->authOtherClient(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    move-result-object p1

    .line 9
    :goto_0
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->toJsonString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 10
    invoke-virtual {p2, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public final H1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->K:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f090028

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0700f2

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cndatacom/campus/PortalMananger;->L:Landroid/widget/TextView;

    const v2, 0x7f0700ef

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cndatacom/campus/PortalMananger;->M:Landroid/widget/TextView;

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/cndatacom/campus/PortalMananger;->M:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p2, p0, Lcom/cndatacom/campus/PortalMananger;->M:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const p2, 0x7f0700f0

    .line 9
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/cndatacom/campus/PortalMananger;->N:Landroid/widget/EditText;

    .line 10
    new-instance v2, Lcom/cndatacom/campus/PortalMananger$30;

    invoke-direct {v2, p0}, Lcom/cndatacom/campus/PortalMananger$30;-><init>(Lcom/cndatacom/campus/PortalMananger;)V

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p2, 0x7f0700f1

    .line 11
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/cndatacom/campus/PortalMananger;->O:Landroid/widget/TextView;

    .line 12
    new-instance v2, Lcom/cndatacom/campus/d;

    invoke-direct {v2, p0, p3}, Lcom/cndatacom/campus/d;-><init>(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0700ec

    .line 13
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    .line 14
    new-instance v2, Lcom/cndatacom/campus/h;

    invoke-direct {v2, p0, p1}, Lcom/cndatacom/campus/h;-><init>(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0700ed

    .line 15
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->S:Landroid/widget/RelativeLayout;

    .line 16
    new-instance p2, Lcom/cndatacom/campus/k;

    invoke-direct {p2, p0, p3, p4}, Lcom/cndatacom/campus/k;-><init>(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0700ee

    .line 17
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->T:Landroid/widget/TextView;

    .line 18
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 19
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->K:Landroid/app/AlertDialog;

    .line 20
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const p2, 0x106000d

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 21
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->K:Landroid/app/AlertDialog;

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 22
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->K:Landroid/app/AlertDialog;

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 23
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->K:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final H2()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 5
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 6
    new-instance v3, Lcom/cndatacom/campus/PortalMananger$34;

    invoke-direct {v3, p0, v1}, Lcom/cndatacom/campus/PortalMananger$34;-><init>(Lcom/cndatacom/campus/PortalMananger;Landroid/net/ConnectivityManager;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 7
    :cond_0
    new-instance v1, Lcom/cndatacom/campus/receiver/AppReceiver;

    invoke-direct {v1}, Lcom/cndatacom/campus/receiver/AppReceiver;-><init>()V

    iput-object v1, p0, Lcom/cndatacom/campus/PortalMananger;->H:Lcom/cndatacom/campus/receiver/AppReceiver;

    .line 8
    new-instance v2, Lcom/cndatacom/campus/PortalMananger$35;

    invoke-direct {v2, p0}, Lcom/cndatacom/campus/PortalMananger$35;-><init>(Lcom/cndatacom/campus/PortalMananger;)V

    invoke-virtual {v1, v2}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->setReceiverListener(Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver$AppReceiverListener;)V

    .line 9
    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger;->H:Lcom/cndatacom/campus/receiver/AppReceiver;

    invoke-virtual {v1, v0}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->registerReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public final I0(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 2

    const-string v0, "dialuptype"

    const-string v1, "51"

    .line 1
    invoke-virtual {p1, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    const-string v0, "ccmpid"

    const-string v1, "cpb-factory-app-cz"

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    const-string v0, "recharge-num"

    const-string v1, "A-%s-%s@%s-100"

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {p1, v1, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 5
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getIpType()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv6()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "ip"

    invoke-virtual {p1, v1, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 7
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clientId"

    invoke-virtual {p1, v1, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getUserAgent(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userAgent"

    invoke-virtual {p1, v1, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 9
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "OSVersion"

    invoke-virtual {p1, v1, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 10
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    return-void
.end method

.method public final I1(Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v2, "action"

    const-string v3, "visitor"

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "phoneType"

    const-string v3, "android"

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7f0b0047

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "province"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7f0b0028

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "appName"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1, v1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public final I2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->runInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p2, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Z)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p2, v0}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Z)V

    return-void
.end method

.method public final J0(Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "action"

    const-string v2, "closeSplash"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1, v0}, Lcom/cndatacom/campus/uni/UniJSCallback;->invokeAndKeepAlive(Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final J1(Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v1

    .line 3
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f090029

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f07008a

    .line 5
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b005c

    .line 6
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0b0028

    .line 7
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\{appName\\}"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b005d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 10
    new-instance v6, Lcom/cndatacom/campus/PortalMananger$20;

    invoke-direct {v6, p0, v1}, Lcom/cndatacom/campus/PortalMananger$20;-><init>(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/cndatacom/campus/util/SpannableStringUtil;->bindLinkText(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 12
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const v2, 0x7f070049

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 14
    new-instance v3, Lcom/cndatacom/campus/PortalMananger$21;

    invoke-direct {v3, p0, v1, p1}, Lcom/cndatacom/campus/PortalMananger$21;-><init>(Lcom/cndatacom/campus/PortalMananger;Landroid/app/AlertDialog;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f070058

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 16
    new-instance v2, Lcom/cndatacom/campus/PortalMananger$22;

    invoke-direct {v2, p0, v1, p1}, Lcom/cndatacom/campus/PortalMananger$22;-><init>(Lcom/cndatacom/campus/PortalMananger;Landroid/app/AlertDialog;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 17
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 18
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 19
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 20
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final J2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->setCacheData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2, v0}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Z)V

    :cond_0
    return-void
.end method

.method public final K0(Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/ThreadPoolManager;->getInstance()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/cndatacom/campus/PortalMananger$27;

    invoke-direct {v1, p0, p1}, Lcom/cndatacom/campus/PortalMananger$27;-><init>(Lcom/cndatacom/campus/PortalMananger;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final K1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b0061

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cndatacom/sdk/portal/util/ToastUtil;->showBottomText(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f0b0062

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cndatacom/sdk/portal/util/ToastUtil;->showBottomText(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final K2(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "title"

    const-string v1, "SSID\u663e\u793a\u7533\u8bf7\u83b7\u53d6\u4f4d\u7f6e\u6743\u9650"

    .line 2
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "gravity"

    const-string v1, "bottom"

    .line 3
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "titleBold"

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "contentAlign"

    const-string v1, "left"

    .line 5
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "content"

    const-string v1, "\u5141\u8bb8\u540e\uff0c\u4f60\u53ef\u4ee5\u5728\u7f51\u7edc\u68c0\u6d4b\u754c\u9762\u67e5\u770b\u5f53\u524d\u8fde\u63a5SSID\uff08\u4f60\u53ef\u4ee5\u524d\u5f80[\u6211\u7684-\u4e2a\u4eba\u4fe1\u606f\u4e0e\u6743\u9650-\u7cfb\u7edf\u6743\u9650\u7ba1\u7406-\u4f4d\u7f6e\u4fe1\u606f-\u5f00\u542f\u6216\u5173\u95ed\u6b64\u6743\u9650]\uff09"

    .line 6
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "confirmText"

    const-string v1, "\u5141\u8bb8"

    .line 7
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cancelText"

    const-string v1, "\u62d2\u7edd"

    .line 8
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    new-instance v0, Lcom/cndatacom/campus/PortalMananger$45;

    invoke-direct {v0, p0}, Lcom/cndatacom/campus/PortalMananger$45;-><init>(Lcom/cndatacom/campus/PortalMananger;)V

    .line 10
    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger;->h0:Landroid/app/Activity;

    invoke-static {v1, p1, v0}, Lcom/cndatacom/dialog/Dialog;->alert(Landroid/app/Activity;Lorg/json/JSONObject;Lcom/cndatacom/dialog/Dialog$DialogEvent;)Landroid/app/AlertDialog;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final L0(Lcom/cndatacom/campus/uni/UniJSCallback;Lcom/alibaba/fastjson/JSONObject;Z)V
    .locals 3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callbackNetCheckToolResult -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-static {p3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, p2}, Lcom/cndatacom/campus/uni/UniJSCallback;->invokeAndKeepAlive(Lcom/alibaba/fastjson/JSONObject;)V

    const-wide/16 p1, 0x5dc

    .line 3
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, p2}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Lcom/alibaba/fastjson/JSONObject;)V

    :goto_0
    return-void
.end method

.method public final L1(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const-string v0, "type"

    const-string v1, "com.cndatacom.campus.receiver.action.bundle.key"

    .line 1
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "com.cndatacom.campus.receiver.action.data.key"

    const-string v2, ""

    .line 2
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 4
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, -0x1

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "InfoUpdateLastDate"

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    :try_start_1
    const-string v4, "location"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move v3, v8

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move v3, v6

    goto :goto_0

    :sswitch_2
    const-string v4, "href"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_3
    const-string v4, "permission"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move v3, v10

    goto :goto_0

    :sswitch_4
    const-string v4, "moduleClick"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move v3, v7

    goto :goto_0

    :sswitch_5
    const-string v4, "vpnservice"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p2, :cond_0

    move v3, v9

    :cond_0
    :goto_0
    const-string p2, "url"

    if-eqz v3, :cond_6

    if-eq v3, v10, :cond_5

    if-eq v3, v9, :cond_4

    if-eq v3, v8, :cond_3

    const-string p1, "emitEvent"

    const-string v4, "result"

    const-string v8, "handleListen"

    const-string v9, "eventName"

    const-string v10, "data"

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_1

    .line 7
    :try_start_2
    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/cndatacom/sdk/portal/util/IntentUtil;->inBrowserOpen(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9
    :cond_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 10
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 11
    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    invoke-virtual {v2, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    invoke-virtual {p2, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    invoke-virtual {p2, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/cndatacom/campus/PortalMananger;->N0(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 16
    :cond_2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 17
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "clickModule"

    .line 18
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "moduletype"

    .line 20
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "moduleId"

    const-string v6, "moduleid"

    .line 21
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v3, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    invoke-virtual {p2, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/cndatacom/campus/PortalMananger;->N0(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 26
    :cond_3
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->u2()V

    goto :goto_1

    .line 27
    :cond_4
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->x2()V

    goto :goto_1

    .line 28
    :cond_5
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->v2()V

    goto :goto_1

    .line 29
    :cond_6
    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "titleName"

    .line 30
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0b0032

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lcom/cndatacom/campus/PortalWebviewActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6f303cbf -> :sswitch_5
        -0x48c5ad84 -> :sswitch_4
        -0x1eda3a31 -> :sswitch_3
        0x30ff2b -> :sswitch_2
        0x2df8a3bb -> :sswitch_1
        0x714f9fb5 -> :sswitch_0
    .end sparse-switch
.end method

.method public final L2()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/BatteryUtil;->isIgnoringBatteryOptimizations(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->A2()V

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "title"

    const-string v2, "\u5f00\u542f\u8017\u7535\u4fdd\u62a4"

    .line 7
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gravity"

    const-string v2, "bottom"

    .line 8
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x1

    const-string v2, "titleBold"

    .line 9
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "content"

    const-string v2, "\u60a8\u8fd8\u6ca1\u6709\u5f00\u542f\u8017\u7535\u4fdd\u62a4\u670d\u52a1\uff0c\u5f00\u542f\u540e\u53ef\u4fdd\u6301APP\u5728\u540e\u53f0\u8fd0\u884c\uff0c\u4ee5\u53ca\u63a5\u6536\u5e94\u7528\u4fe1\u606f\u3002"

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "contentAlign"

    const-string v2, "left"

    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "confirmText"

    const-string v2, "\u7ee7\u7eed"

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cancelText"

    const-string v2, "\u4ee5\u540e\u518d\u8bf4"

    .line 13
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/cndatacom/campus/PortalMananger$9;

    invoke-direct {v2, p0}, Lcom/cndatacom/campus/PortalMananger$9;-><init>(Lcom/cndatacom/campus/PortalMananger;)V

    invoke-static {v1, v0, v2}, Lcom/cndatacom/dialog/Dialog;->alert(Landroid/app/Activity;Lorg/json/JSONObject;Lcom/cndatacom/dialog/Dialog$DialogEvent;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final M0(IILcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    .line 2
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "newState"

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "errorCode"

    .line 4
    invoke-virtual {p3}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "subErrCode"

    .line 5
    invoke-virtual {p3}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getSubErrorCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "extern"

    .line 6
    invoke-virtual {p3}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getExtern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "cndatacomEvent"

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/cndatacom/campus/PortalMananger;->N0(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final M1(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iput-boolean v1, p0, Lcom/cndatacom/campus/PortalMananger;->z:Z

    .line 4
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->y:Landroid/util/ArrayMap;

    iget v0, p0, Lcom/cndatacom/campus/PortalMananger;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cndatacom/campus/uni/UniJSCallback;

    .line 5
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->A:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/cndatacom/campus/PortalMananger$40;

    invoke-direct {v1, p0, p1}, Lcom/cndatacom/campus/PortalMananger$40;-><init>(Lcom/cndatacom/campus/PortalMananger;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->K0(Lcom/cndatacom/campus/uni/UniJSCallback;)V

    .line 8
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->y:Landroid/util/ArrayMap;

    iget v0, p0, Lcom/cndatacom/campus/PortalMananger;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 10
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/cndatacom/campus/PortalMananger$39;

    invoke-direct {v1, p0, p1}, Lcom/cndatacom/campus/PortalMananger$39;-><init>(Lcom/cndatacom/campus/PortalMananger;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    const-string p1, "check Hold(Vpn)Service is alive"

    .line 11
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/cndatacom/campus/service/HoldVpnService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cndatacom/sdk/portal/util/ServiceUtil;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/cndatacom/campus/service/HoldService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cndatacom/sdk/portal/util/ServiceUtil;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "Hold(Vpn)Service is killed"

    .line 13
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/campus/PortalMananger;->startService(Landroid/content/Context;)V

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_5
    const-string p1, "onNetworkChange->"

    .line 16
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->j2()V

    :goto_0
    return-void
.end method

.method public final M2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 10

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v5

    .line 3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f09001f

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const/4 v9, 0x0

    .line 5
    invoke-virtual {p1, v9}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const p1, 0x7f0700df

    .line 7
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v4, "titleText"

    const v6, 0x7f0b003d

    .line 8
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "allowHtml"

    .line 9
    invoke-virtual {v3, p1, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const v4, 0x7f07008a

    .line 10
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v6, "content"

    .line 11
    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_0

    .line 12
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const p1, 0x7f07004f

    .line 14
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/widget/CheckBox;

    const p1, 0x7f070051

    .line 15
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v6, "checkboxText"

    .line 16
    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f07004a

    .line 17
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v6, "cancelText"

    .line 18
    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f070059

    .line 19
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v6, "confirmText"

    .line 20
    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "toastText"

    .line 21
    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 23
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const v0, 0x7f070049

    .line 24
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 25
    new-instance v2, Lcom/cndatacom/campus/PortalMananger$31;

    invoke-direct {v2, p0, p1, p2}, Lcom/cndatacom/campus/PortalMananger$31;-><init>(Lcom/cndatacom/campus/PortalMananger;Landroid/app/AlertDialog;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070058

    .line 26
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 27
    new-instance v1, Lcom/cndatacom/campus/PortalMananger$32;

    move-object v2, v1

    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/cndatacom/campus/PortalMananger$32;-><init>(Lcom/cndatacom/campus/PortalMananger;Landroid/widget/CheckBox;Landroid/content/Context;Ljava/lang/String;Landroid/app/AlertDialog;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {p1, v9}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 29
    invoke-virtual {p1, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 30
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const v0, 0x106000d

    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 31
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final N0(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "var customEvent = new CustomEvent(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\',"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "{"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detail:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "document.dispatchEvent(customEvent);"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object p2

    new-instance v0, Lcom/cndatacom/campus/PortalMananger$48;

    invoke-direct {v0, p0, p1}, Lcom/cndatacom/campus/PortalMananger$48;-><init>(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final N1(Landroid/content/Context;)V
    .locals 3

    const-string v0, "BatteryTips"

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, v0, v1}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 2
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/BatteryUtil;->isIgnoringBatteryOptimizations(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-static {p1, v0, v1}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 4
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/cndatacom/campus/PortalMananger$41;

    invoke-direct {v1, p0, p1}, Lcom/cndatacom/campus/PortalMananger$41;-><init>(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final N2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/cndatacom/campus/PortalMananger;->J:Landroid/app/AlertDialog;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string p2, "title"

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/cndatacom/dialog/Dialog;->loading(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->J:Landroid/app/AlertDialog;

    .line 4
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final O0(Z)V
    .locals 2

    const-string v0, "checkNetGoon->"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    new-instance v1, Lcom/cndatacom/campus/PortalMananger$42;

    invoke-direct {v1, p0, p1}, Lcom/cndatacom/campus/PortalMananger$42;-><init>(Lcom/cndatacom/campus/PortalMananger;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final O1(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "vetifyPopup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "loginFailPopup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->V0()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->W0()V

    :goto_0
    return-void
.end method

.method public final O2(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b002b

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0028

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{appName}"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const v3, 0x7f0b002c

    .line 8
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "title"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "gravity"

    const-string v3, "bottom"

    .line 9
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x1

    const-string v3, "titleBold"

    .line 10
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "content"

    .line 11
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "contentAlign"

    const-string v1, "left"

    .line 12
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "confirmText"

    const-string v1, "\u7ee7\u7eed"

    .line 13
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cancelText"

    const-string v1, "\u4ee5\u540e\u518d\u8bf4"

    .line 14
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/cndatacom/campus/PortalMananger$10;

    invoke-direct {v1, p0, p1}, Lcom/cndatacom/campus/PortalMananger$10;-><init>(Lcom/cndatacom/campus/PortalMananger;I)V

    invoke-static {v0, v2, v1}, Lcom/cndatacom/dialog/Dialog;->alert(Landroid/app/Activity;Lorg/json/JSONObject;Lcom/cndatacom/dialog/Dialog$DialogEvent;)Landroid/app/AlertDialog;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final P0(Landroid/content/Context;IZZ)V
    .locals 7

    .line 1
    iput p2, p0, Lcom/cndatacom/campus/PortalMananger;->G:I

    .line 2
    iget-boolean v0, p0, Lcom/cndatacom/campus/PortalMananger;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/cndatacom/campus/PortalMananger;->c:Z

    .line 4
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;

    move-result-object v1

    iget-object v6, p0, Lcom/cndatacom/campus/PortalMananger;->o0:Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->onCheckNet(Landroid/content/Context;IZZLcom/cndatacom/sdk/portal/interfaces/PortalEvent;)V

    return-void
.end method

.method public final P1()V
    .locals 3

    const/16 v0, 0x32

    .line 1
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->x:Ljava/util/concurrent/ExecutorService;

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "handleMainActivityData"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->w:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger;->w:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/cndatacom/campus/PortalMananger$36;

    invoke-direct {v2, p0}, Lcom/cndatacom/campus/PortalMananger$36;-><init>(Lcom/cndatacom/campus/PortalMananger;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    .line 5
    new-instance v0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->g0:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;

    .line 6
    new-instance v1, Lcom/cndatacom/campus/PortalMananger$37;

    invoke-direct {v1, p0}, Lcom/cndatacom/campus/PortalMananger$37;-><init>(Lcom/cndatacom/campus/PortalMananger;)V

    invoke-virtual {v0, v1}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->setPermissionEvent(Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$PermissionEvent;)V

    return-void
.end method

.method public final P2(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b002e

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0028

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{appName}"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const v3, 0x7f0b0030

    .line 5
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "title"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "gravity"

    const-string v3, "bottom"

    .line 6
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "titleBold"

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "content"

    .line 8
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "contentAlign"

    const-string v1, "left"

    .line 9
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "confirmText"

    const-string v1, "\u7ee7\u7eed"

    .line 10
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cancelText"

    const-string v1, "\u4ee5\u540e\u518d\u8bf4"

    .line 11
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/cndatacom/campus/PortalMananger$11;

    invoke-direct {v1, p0, p1}, Lcom/cndatacom/campus/PortalMananger$11;-><init>(Lcom/cndatacom/campus/PortalMananger;I)V

    invoke-static {v0, v2, v1}, Lcom/cndatacom/dialog/Dialog;->alert(Landroid/app/Activity;Lorg/json/JSONObject;Lcom/cndatacom/dialog/Dialog$DialogEvent;)Landroid/app/AlertDialog;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final Q0(Z)V
    .locals 11

    const-string v0, "contentAlign"

    const-string v1, "titleAlign"

    const-string v2, "content"

    const-string v3, "titleBold"

    const-string v4, "title"

    const-string v5, "left"

    const/4 v6, 0x1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/NetUtil;->getWifiState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0, v6, v6}, Lcom/cndatacom/campus/PortalMananger;->P0(Landroid/content/Context;IZZ)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object p1

    const-string v7, "FINE_LOCATION"

    .line 4
    invoke-static {p1, v7, v6}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    .line 5
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/PermissionUtil;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v8

    if-eqz v7, :cond_1

    if-eqz v8, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->K2(Landroid/content/Context;)V

    return-void

    .line 7
    :cond_1
    :try_start_0
    new-instance v7, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;

    invoke-direct {v7}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;-><init>()V

    .line 8
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const v9, 0x7f0b002c

    .line 9
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    invoke-virtual {v8, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 11
    invoke-virtual {v8, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const v9, 0x7f0b002b

    .line 12
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    invoke-virtual {v8, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    invoke-virtual {v7, v8}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->setTipDialogOptions(Lorg/json/JSONObject;)V

    .line 15
    invoke-virtual {v7, v6}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->setRequestCode(I)V

    const-string v8, "android.permission.ACCESS_FINE_LOCATION"

    .line 16
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->setPermissions([Ljava/lang/String;)V

    .line 17
    iget-object v8, p0, Lcom/cndatacom/campus/PortalMananger;->g0:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;

    invoke-virtual {v8, v7}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->addPermission(Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;)V

    const v7, 0x7f0b002d

    .line 18
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "{appName}"

    const v9, 0x7f0b0028

    .line 19
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 20
    new-instance v8, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;

    invoke-direct {v8}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;-><init>()V

    .line 21
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const v10, 0x7f0b002f

    .line 22
    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    invoke-virtual {v9, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 24
    invoke-virtual {v9, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const v1, 0x7f0b002e

    .line 25
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    invoke-virtual {v9, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    invoke-virtual {v8, v9}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->setTipDialogOptions(Lorg/json/JSONObject;)V

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const v1, 0x7f0b0030

    .line 29
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "gravity"

    const-string v1, "bottom"

    .line 30
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 32
    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "confirmText"

    const-string v1, "\u53bb\u5f00\u542f"

    .line 33
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "cancelText"

    const-string v1, "\u4ee5\u540e\u518d\u8bf4"

    .line 34
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    invoke-virtual {v8, v0}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->setAskDialogOptions(Lorg/json/JSONObject;)V

    const/4 p1, 0x2

    .line 36
    invoke-virtual {v8, p1}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->setRequestCode(I)V

    .line 37
    new-instance p1, Lcom/cndatacom/campus/PortalMananger$43;

    invoke-direct {p1, p0}, Lcom/cndatacom/campus/PortalMananger$43;-><init>(Lcom/cndatacom/campus/PortalMananger;)V

    invoke-virtual {v8, p1}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->setConfirmEvent(Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;)V

    .line 38
    new-instance p1, Lcom/cndatacom/campus/PortalMananger$44;

    invoke-direct {p1, p0}, Lcom/cndatacom/campus/PortalMananger$44;-><init>(Lcom/cndatacom/campus/PortalMananger;)V

    invoke-virtual {v8, p1}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->setCancelEvent(Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;)V

    .line 39
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->g0:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;

    invoke-virtual {p1, v8}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->addPermission(Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;)V

    .line 40
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->g0:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;

    invoke-virtual {p1}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final Q1(Lcom/cndatacom/campus/uni/UniJSCallback;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final Q2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->I:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->I:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object p1

    new-instance v1, Lcom/cndatacom/campus/PortalMananger$33;

    invoke-direct {v1, p0, p2}, Lcom/cndatacom/campus/PortalMananger$33;-><init>(Lcom/cndatacom/campus/PortalMananger;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    invoke-static {p1, v0, v1}, Lcom/cndatacom/dialog/Dialog;->alert(Landroid/app/Activity;Lorg/json/JSONObject;Lcom/cndatacom/dialog/Dialog$DialogEvent;)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->I:Landroid/app/AlertDialog;

    .line 6
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final R0(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "CAMERA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/PermissionUtil;->hasCameraPermission(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p2, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Z)V

    return-void

    .line 5
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->y:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p2, Lcom/cndatacom/campus/PortalMananger$14;

    invoke-direct {p2, p0, p1}, Lcom/cndatacom/campus/PortalMananger$14;-><init>(Lcom/cndatacom/campus/PortalMananger;I)V

    .line 8
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->j0:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object p2

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public final R1(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSLOG_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "error"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_1
    const-string v3, "debug"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_2
    const-string v3, "warn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "info"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_0

    :sswitch_4
    const-string v3, "log"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v4, v0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-array v1, v2, [Ljava/lang/String;

    aput-object p1, v1, v0

    .line 5
    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    new-array v1, v2, [Ljava/lang/String;

    aput-object p1, v1, v0

    .line 6
    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->d([Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    new-array v1, v2, [Ljava/lang/String;

    aput-object p1, v1, v0

    .line 7
    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1a344 -> :sswitch_4
        0x3164ae -> :sswitch_3
        0x379286 -> :sswitch_2
        0x5b09653 -> :sswitch_1
        0x5c4d208 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final R2(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v0, v5

    goto :goto_1

    :sswitch_0
    const-string v0, "loginFailPopup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "vetifyPopup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :sswitch_2
    const-string v2, "historyPopup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 3
    :pswitch_0
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, v1, p1}, Lcom/cndatacom/campus/PortalMananger;->A1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5
    :pswitch_1
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 7
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/cndatacom/campus/PortalMananger;->H1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 9
    :pswitch_2
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p0, v1, p1}, Lcom/cndatacom/campus/PortalMananger;->t1(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x75c8a788 -> :sswitch_2
        -0x4c6cc64b -> :sswitch_1
        0x2c93e2c5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final S0(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/cndatacom/sdk/portal/constant/ResourceConstants;->PATH_APK:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/cndatacom/sdk/portal/util/ResourceUtil;->getContextFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/FileUtil;->delFile(Ljava/io/File;)Z

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/cndatacom/sdk/portal/constant/ResourceConstants;->PATH_AD:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/cndatacom/sdk/portal/util/ResourceUtil;->getContextFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v2, 0x3

    if-eqz p1, :cond_1

    .line 8
    invoke-static {v0, v2}, Lcom/cndatacom/sdk/portal/util/FileUtil;->delFile(Ljava/io/File;I)Z

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/cndatacom/sdk/portal/constant/ResourceConstants;->PATH_IMAGE:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/cndatacom/sdk/portal/util/ResourceUtil;->getContextFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    invoke-static {v0, v2}, Lcom/cndatacom/sdk/portal/util/FileUtil;->delFile(Ljava/io/File;I)Z

    :cond_2
    return-void
.end method

.method public final S2(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "title"

    const-string v1, ""

    .line 3
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cndatacom/sdk/portal/util/ToastUtil;->showBottomText(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final T0(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->des3EncodeECB([B)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p2, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final T2()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->A2()V

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.VPN_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public final U0(Landroid/content/Context;)V
    .locals 1

    const-string v0, "destroy->"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->x1(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->g0:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->release()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->b0:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->b0:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->J:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->J:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->I:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->I:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->c0:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->c0:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->H:Lcom/cndatacom/campus/receiver/AppReceiver;

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {v0, p1}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->unregisterReceiver(Landroid/content/Context;)V

    .line 15
    :cond_5
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17
    :cond_6
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->w:Landroid/os/HandlerThread;

    if-eqz p1, :cond_7

    .line 18
    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    .line 19
    :cond_7
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->x:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_8

    .line 20
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_8
    return-void
.end method

.method public final U2(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/cndatacom/campus/service/HoldVpnService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cndatacom/sdk/portal/util/ServiceUtil;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/cndatacom/campus/service/VpnKeepService;

    invoke-static {v0, v1}, Lcom/cndatacom/sdk/portal/service/BaseIntentService;->cancel(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-static {p1}, Lcom/cndatacom/campus/service/HoldVpnService;->stop(Landroid/content/Context;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/cndatacom/campus/service/HoldService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cndatacom/sdk/portal/util/ServiceUtil;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {p1}, Lcom/cndatacom/campus/service/HoldService;->stop(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final V0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->V:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->V:Landroid/app/AlertDialog;

    .line 4
    iget v0, p0, Lcom/cndatacom/campus/PortalMananger;->X:I

    iput v0, p0, Lcom/cndatacom/campus/PortalMananger;->Y:I

    .line 5
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger;->l0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final V2()V
    .locals 3

    const-string v0, "termAndCheckNet->"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/NetUtil;->getWifiState(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/cndatacom/campus/PortalMananger;->P0(Landroid/content/Context;IZZ)V

    return-void
.end method

.method public final W0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->K:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->K:Landroid/app/AlertDialog;

    .line 4
    iget v0, p0, Lcom/cndatacom/campus/PortalMananger;->P:I

    iput v0, p0, Lcom/cndatacom/campus/PortalMananger;->R:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/cndatacom/campus/PortalMananger;->Q:Z

    .line 6
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger;->m0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final W2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v0, v1, p1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->termOtherClient(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 6
    invoke-virtual {p2, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public final X0(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/cndatacom/campus/PortalMananger$28;

    invoke-direct {v2, p0, p1}, Lcom/cndatacom/campus/PortalMananger$28;-><init>(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/cndatacom/campus/PortalMananger;->Y0(Ljava/lang/String;)V

    return-void
.end method

.method public final X2(I)V
    .locals 3

    if-gez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->C:Landroid/widget/TextView;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->C:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v2, p1, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 5
    iput v1, v0, Landroid/os/Message;->what:I

    add-int/lit16 p1, p1, -0x3e8

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method public final Y0(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger;->e0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/cndatacom/download/manager/DownloadTaskManager;

    const-string v2, "app_task"

    invoke-direct {v1, v0, v2}, Lcom/cndatacom/download/manager/DownloadTaskManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cndatacom/campus/PortalMananger;->e0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    .line 4
    new-instance v0, Lcom/cndatacom/campus/PortalMananger$29;

    invoke-direct {v0, p0}, Lcom/cndatacom/campus/PortalMananger$29;-><init>(Lcom/cndatacom/campus/PortalMananger;)V

    invoke-virtual {v1, v0}, Lcom/cndatacom/download/manager/DownloadTaskManager;->setIDownloadTaskEvent(Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;)V

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/cndatacom/campus/PortalMananger;->isDownloadExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 7
    :cond_1
    new-instance v1, Lcom/cndatacom/download/entity/DownloadTask;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/cndatacom/download/entity/DownloadTask;-><init>(I)V

    const-string v2, "apk"

    .line 8
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/cndatacom/sdk/portal/constant/ResourceConstants;->PATH_APK:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/cndatacom/sdk/portal/util/ResourceUtil;->getContextFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/cndatacom/sdk/portal/constant/ResourceConstants;->PATH_CACHE:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".temp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/cndatacom/sdk/portal/util/ResourceUtil;->getContextFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 10
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v5}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYMDHMSString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cndatacom/download/entity/DownloadTask;->setCreateTime(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, v2}, Lcom/cndatacom/download/entity/DownloadTask;->setTaskExt(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, v0}, Lcom/cndatacom/download/entity/DownloadTask;->setTaskId(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, v0}, Lcom/cndatacom/download/entity/DownloadTask;->setTaskName(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, v3}, Lcom/cndatacom/download/entity/DownloadTask;->setTaskPath(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, v4}, Lcom/cndatacom/download/entity/DownloadTask;->setTaskTempPath(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, p1}, Lcom/cndatacom/download/entity/DownloadTask;->setTaskUrl(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->e0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-virtual {p1, v1}, Lcom/cndatacom/download/manager/DownloadTaskManager;->addDownloadTask(Lcom/cndatacom/download/entity/DownloadTask;)V

    return-void
.end method

.method public final Y2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/cndatacom/campus/PortalMananger;->o0:Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-direct {v1, v0, p2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;-><init>(Landroid/content/Context;Z)V

    .line 5
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->o0:Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;

    invoke-interface {p1, v1}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handleNetworkInfoMsg(Lcom/cndatacom/sdk/portal/entity/NetInfo;)V

    :cond_1
    return-void
.end method

.method public final Z0()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->h0:Landroid/app/Activity;

    return-object v0
.end method

.method public final a1(Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v2, "phoneType"

    const-string v3, "android"

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "province"

    const v3, 0x7f0b0047

    .line 4
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appName"

    const v3, 0x7f0b0028

    .line 5
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "versionCode"

    .line 6
    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "versionName"

    .line 7
    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "copyright"

    const v3, 0x7f0b0037

    .line 8
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1, v1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final b1(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->getCacheData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c1()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public callbackCheckResultToJs(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v2, "reason"

    .line 3
    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "extern"

    .line 4
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "CHECK_NET_REGULARLY"

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/cndatacom/campus/PortalMananger;->N0(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public coolMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/cndatacom/campus/uni/UniJSCallback;

    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger;->h0:Landroid/app/Activity;

    iget-object v2, p0, Lcom/cndatacom/campus/PortalMananger;->i0:Landroid/webkit/WebView;

    invoke-direct {v0, v1, v2, p3}, Lcom/cndatacom/campus/uni/UniJSCallback;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/cndatacom/campus/PortalMananger;->G2(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    return-void
.end method

.method public final d1(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/cndatacom/personal/PersonalManager;->getInstance()Lcom/cndatacom/personal/PersonalManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cndatacom/personal/PersonalManager;->getPersonalInfoText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object p2

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string v0, "label"

    .line 3
    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 4
    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 5
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lcom/cndatacom/campus/m;

    invoke-direct {p2, p0}, Lcom/cndatacom/campus/m;-><init>(Lcom/cndatacom/campus/PortalMananger;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final e1(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->getCacheData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p2, v0}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_1
    return-void
.end method

.method public final f1(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cndatacom/personal/PersonalManager;->getInstance()Lcom/cndatacom/personal/PersonalManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    const-string v1, "all"

    const-string v2, ""

    invoke-virtual {p1, v0, v1, v2}, Lcom/cndatacom/personal/PersonalManager;->queryPersonalInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public final f2(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->getInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    .line 3
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 4
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 5
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/cndatacom/sdk/portal/constant/ResourceConstants;->PATH_IMAGE:Ljava/lang/String;

    invoke-static {v5, v6, v4}, Lcom/cndatacom/sdk/portal/util/ResourceUtil;->getContextFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4, v2, v0, v1}, Lcom/cndatacom/sdk/portal/util/ImageUtil;->loadImageFormFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/cndatacom/campus/o;

    invoke-direct {v2, p0, v0, v3, p1}, Lcom/cndatacom/campus/o;-><init>(Lcom/cndatacom/campus/PortalMananger;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final g1()V
    .locals 7

    :try_start_0
    const-string v0, "AddressHistory"

    .line 1
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->isUnknown()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getSsid()Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const-string v4, ""

    .line 6
    invoke-virtual {v1, v0, v4}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 8
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    move v5, v4

    .line 9
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 10
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 12
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 13
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public final g2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->getInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    .line 3
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/cndatacom/sdk/portal/constant/ResourceConstants;->PATH_IMAGE:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/cndatacom/sdk/portal/util/ResourceUtil;->getContextFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, p1, v0, v1}, Lcom/cndatacom/sdk/portal/util/ImageUtil;->loadImageFormFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 9
    invoke-virtual {v0, p1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p2, v0}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final h1(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final h2()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FINE_LOCATION"

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v1, v2}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    .line 3
    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/PermissionUtil;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    if-eqz v2, :cond_1

    .line 4
    invoke-static {v0, v1, v5}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    :cond_1
    return v2
.end method

.method public final i1(Landroid/content/Context;ZZ)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/cndatacom/campus/PortalMananger;->startService(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/cndatacom/campus/work/CheckRegularWorker;->getInstance()Lcom/cndatacom/campus/work/CheckRegularWorker;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v1, v0, v2}, Lcom/cndatacom/campus/work/CheckRegularWorker;->startCheckNetRegularly(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;I)V

    if-eqz p3, :cond_0

    .line 4
    invoke-static {}, Lcom/cndatacom/personal/PersonalManager;->getInstance()Lcom/cndatacom/personal/PersonalManager;

    move-result-object p3

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v1}, Lcom/cndatacom/personal/PersonalManager;->collectionAccountInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->g1()V

    .line 6
    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->N1(Landroid/content/Context;)V

    .line 7
    invoke-static {p1, v0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->getSchoolInfo(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    .line 8
    invoke-static {}, Lcom/cndatacom/collection/CollectionManager;->getInstance()Lcom/cndatacom/collection/CollectionManager;

    move-result-object p3

    invoke-virtual {p3, p1, v0}, Lcom/cndatacom/collection/CollectionManager;->uploadCollectionInfo(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    .line 9
    invoke-static {}, Lcom/cndatacom/collection/CollectionManager;->getInstance()Lcom/cndatacom/collection/CollectionManager;

    move-result-object p3

    invoke-virtual {p3, p1, v0}, Lcom/cndatacom/collection/CollectionManager;->start(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    .line 10
    invoke-static {p1, v0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->uploadLog(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    .line 11
    invoke-static {p1, v0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->uploadModuleLog(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    .line 12
    invoke-static {p1, v0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->uploadSSIDData(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    .line 13
    invoke-static {p1, v0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->uploadPhoneMarketingData(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/cndatacom/campus/PortalMananger;->E1(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    .line 15
    invoke-static {p1, v0}, Lcom/cndatacom/sdk/portal/work/KeepUserAgentWorker;->getKeepUserAgent(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    .line 16
    :cond_0
    iget-object p3, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/32 v2, 0xea60

    invoke-virtual {p3, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 17
    invoke-static {}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->getInstance()Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->start(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    .line 18
    invoke-static {}, Lcom/cndatacom/traffic/TrafficStatsManager;->getInstance()Lcom/cndatacom/traffic/TrafficStatsManager;

    move-result-object p3

    invoke-virtual {p3, p1, v0, p2}, Lcom/cndatacom/traffic/TrafficStatsManager;->start(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Z)V

    .line 19
    invoke-static {}, Lcom/cndatacom/safecollection/SafeCollectionManager;->getInstance()Lcom/cndatacom/safecollection/SafeCollectionManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/cndatacom/safecollection/SafeCollectionManager;->start(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    .line 20
    invoke-static {}, Lcom/cndatacom/campus/work/CapabilityWorker;->getInstance()Lcom/cndatacom/campus/work/CapabilityWorker;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/cndatacom/campus/work/CapabilityWorker;->startTask(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    .line 21
    invoke-static {}, Lcom/cndatacom/campus/work/WiFiInfoWorker;->getInstance()Lcom/cndatacom/campus/work/WiFiInfoWorker;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cndatacom/campus/work/WiFiInfoWorker;->release(Landroid/content/Context;)V

    .line 22
    invoke-static {}, Lcom/cndatacom/campus/work/WiFiInfoWorker;->getInstance()Lcom/cndatacom/campus/work/WiFiInfoWorker;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/cndatacom/campus/work/WiFiInfoWorker;->startTask(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    .line 23
    invoke-static {}, Lcom/cndatacom/campus/work/InterfaceInfoWorker;->getInstance()Lcom/cndatacom/campus/work/InterfaceInfoWorker;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/cndatacom/campus/work/InterfaceInfoWorker;->uploadInterfaceInfo(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    .line 24
    invoke-static {}, Lcom/cndatacom/campus/work/RoutingdelayWorker;->getInstance()Lcom/cndatacom/campus/work/RoutingdelayWorker;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cndatacom/campus/work/RoutingdelayWorker;->release(Landroid/content/Context;)V

    .line 25
    invoke-static {}, Lcom/cndatacom/campus/work/RoutingdelayWorker;->getInstance()Lcom/cndatacom/campus/work/RoutingdelayWorker;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/cndatacom/campus/work/RoutingdelayWorker;->startTask(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    .line 26
    invoke-static {}, Lcom/cndatacom/topology/TopologyManager;->getInstance()Lcom/cndatacom/topology/TopologyManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/cndatacom/topology/TopologyManager;->start(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    return-void
.end method

.method public final i2()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    const-string v1, "LOCATION_SERVICE"

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v1, v2}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    .line 3
    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/PermissionUtil;->hasLocationServicePermission(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    if-eqz v2, :cond_1

    .line 4
    invoke-static {v0, v1, v5}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    :cond_1
    return v2
.end method

.method public isDownloadExists(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->e0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-virtual {v0}, Lcom/cndatacom/download/manager/DownloadTaskManager;->getDownloadTasks()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v2, v1

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cndatacom/download/entity/DownloadTask;

    .line 4
    invoke-virtual {v3}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final j1(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->x1(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->V2()V

    return-void
.end method

.method public final j2()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/cndatacom/campus/PortalMananger;->G:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->q1()V

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/cndatacom/campus/PortalMananger;->Q0(Z)V

    .line 4
    iput-boolean v0, p0, Lcom/cndatacom/campus/PortalMananger;->E:Z

    return-void
.end method

.method public final k1(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/NetInfo;)V
    .locals 1

    invoke-static {}, Lcom/cndatacom/personal/PersonalManager;->getInstance()Lcom/cndatacom/personal/PersonalManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cndatacom/personal/PersonalManager;->collectionNetworkInfo(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/NetInfo;)V

    return-void
.end method

.method public final k2(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_1
    const-string v2, "location_service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :sswitch_2
    const-string v0, "vpn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_3
    const-string v0, "battery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_4
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v5

    goto :goto_1

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->L2()V

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->T2()V

    goto :goto_2

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/IntentUtil;->gotoAppDetailSetting(Landroid/app/Activity;)V

    goto :goto_2

    :cond_4
    const/4 p1, 0x6

    .line 6
    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->O2(I)V

    goto :goto_2

    :cond_5
    const/4 p1, 0x7

    .line 7
    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->P2(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5f64226a -> :sswitch_4
        -0x13be51f3 -> :sswitch_3
        0x1c8f4 -> :sswitch_2
        0xa76882b -> :sswitch_1
        0x714f9fb5 -> :sswitch_0
    .end sparse-switch
.end method

.method public final l1(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final l2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/PermissionUtil;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 p1, 0xa

    .line 4
    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->O2(I)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/PermissionUtil;->hasLocationServicePermission(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0xb

    .line 6
    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->P2(I)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->isOpenSSID()Z

    move-result p1

    .line 8
    invoke-virtual {p2, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final m1(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/cndatacom/campus/PortalMananger;->I0(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    .line 3
    invoke-static {p1, v0}, Lcom/cndatacom/sdk/portal/work/KeepUserAgentWorker;->loadCurUserAgentData(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    return-void
.end method

.method public final m2(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const/4 v3, 0x2

    .line 5
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 6
    :goto_0
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/cndatacom/campus/PortalMananger;->n2(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final n(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getBoolean(I)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v1

    const-string v2, "PrivacyKey"

    .line 3
    invoke-static {v1, v2, v0}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/cndatacom/campus/PortalMananger$15;

    invoke-direct {v0, p0, v2, p2}, Lcom/cndatacom/campus/PortalMananger$15;-><init>(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cndatacom/campus/PortalMananger;->n1(ZLcom/cndatacom/campus/uni/UniJSCallback;)V

    :goto_0
    return-void
.end method

.method public final n1(ZLcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/ThreadPoolManager;->getInstance()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/cndatacom/campus/PortalMananger$23;

    invoke-direct {v0, p0, p2}, Lcom/cndatacom/campus/PortalMananger$23;-><init>(Lcom/cndatacom/campus/PortalMananger;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lcom/cndatacom/campus/PortalMananger;->K0(Lcom/cndatacom/campus/uni/UniJSCallback;)V

    return-void
.end method

.method public final n2(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->isVpn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v1}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Cache_Account"

    .line 4
    invoke-virtual {p1, v0, p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putCacheConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    const-string p2, "Cache_Password"

    .line 5
    invoke-virtual {p1, p2, p3}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putCacheConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    const-string p2, "Cache_Verify"

    .line 6
    invoke-virtual {p1, p2, p4}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putCacheConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->w2(I)V

    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;

    move-result-object v0

    iget-object v6, p0, Lcom/cndatacom/campus/PortalMananger;->o0:Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->onAuth(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;)V

    return-void
.end method

.method public final o1(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    new-instance v0, Lcom/cndatacom/campus/PortalMananger$47;

    invoke-direct {v0, p0}, Lcom/cndatacom/campus/PortalMananger$47;-><init>(Lcom/cndatacom/campus/PortalMananger;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->o0:Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;

    if-eqz p1, :cond_1

    .line 3
    new-instance v0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    const-string v1, "200123"

    invoke-direct {v0, v1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handleConnectFailMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final o2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 2

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.intent.action.DIAL"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 4
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->g0:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;

    invoke-virtual {p1}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->onRequestPermissionsResult()V

    .line 2
    invoke-virtual {p0, p2}, Lcom/cndatacom/campus/PortalMananger;->o1(I)V

    goto/16 :goto_1

    :cond_0
    const/16 p2, 0x9

    if-ne p1, p2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->g0:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;

    invoke-virtual {p1}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->onRequestPermissionsResult()V

    .line 4
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->K1()V

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 5
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->g0:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;

    invoke-virtual {p1}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->onRequestPermissionsResult()V

    goto :goto_1

    :cond_2
    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->O0(Z)V

    goto :goto_1

    :cond_3
    const/4 p2, 0x4

    if-ne p1, p2, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->K1()V

    goto :goto_1

    :cond_4
    const/4 p2, 0x5

    if-eq p1, p2, :cond_6

    const/4 p3, 0x6

    if-eq p1, p3, :cond_6

    const/4 p3, 0x7

    if-eq p1, p3, :cond_6

    const/16 p3, 0x8

    if-ne p1, p3, :cond_5

    goto :goto_0

    :cond_5
    const/16 p2, 0xa

    if-ne p1, p2, :cond_8

    .line 8
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/PermissionUtil;->hasLocationPermission(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/PermissionUtil;->hasLocationServicePermission(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8

    const/16 p1, 0xb

    .line 10
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->P2(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_6
    :goto_0
    if-ne p1, p2, :cond_7

    .line 12
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    new-instance p2, Lcom/cndatacom/campus/PortalMananger$46;

    invoke-direct {p2, p0}, Lcom/cndatacom/campus/PortalMananger$46;-><init>(Lcom/cndatacom/campus/PortalMananger;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 13
    :cond_7
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->A2()V

    :cond_8
    :goto_1
    return-void
.end method

.method public onExitApplication(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v1

    .line 3
    iget v2, p0, Lcom/cndatacom/campus/PortalMananger;->f0:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/NetUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->isOnline()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    const-string v2, "2"

    goto :goto_0

    :cond_0
    const-string v2, "1"

    .line 4
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->term(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    .line 5
    :cond_1
    invoke-virtual {p0, v0}, Lcom/cndatacom/campus/PortalMananger;->U2(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/cndatacom/campus/PortalMananger;->U0(Landroid/content/Context;)V

    if-eqz p1, :cond_2

    .line 7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :cond_2
    return-void
.end method

.method public onNetworkChange()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->v:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/stub/StubApp;->interface22(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->g0:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;

    invoke-virtual {p1}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->onRequestPermissionsResult()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/cndatacom/campus/PortalMananger;->j0:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/cndatacom/campus/PortalMananger;->j0:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cndatacom/campus/PortalMananger$PermissionRunnable;

    .line 4
    invoke-virtual {p1}, Lcom/cndatacom/campus/PortalMananger$PermissionRunnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final p1(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/cndatacom/traffic/TrafficStatsManager;->getInstance()Lcom/cndatacom/traffic/TrafficStatsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cndatacom/traffic/TrafficStatsManager;->release(Landroid/content/Context;)V

    return-void
.end method

.method public final p2()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/NetUtil;->getWifiState(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/cndatacom/campus/PortalMananger;->P0(Landroid/content/Context;IZZ)V

    return-void
.end method

.method public final q1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/cndatacom/campus/work/CheckRegularWorker;->getInstance()Lcom/cndatacom/campus/work/CheckRegularWorker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cndatacom/campus/work/CheckRegularWorker;->closeCheckNetRegularly()V

    .line 3
    invoke-static {}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->getInstance()Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->release()V

    .line 4
    invoke-static {}, Lcom/cndatacom/traffic/TrafficStatsManager;->getInstance()Lcom/cndatacom/traffic/TrafficStatsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cndatacom/traffic/TrafficStatsManager;->changeNet(Landroid/content/Context;)V

    const/4 v1, 0x5

    .line 5
    invoke-static {v0, v1}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->sendReceiver(Landroid/content/Context;I)V

    .line 6
    invoke-static {}, Lcom/cndatacom/topology/TopologyManager;->getInstance()Lcom/cndatacom/topology/TopologyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cndatacom/topology/TopologyManager;->release(Landroid/content/Context;)V

    .line 7
    invoke-static {}, Lcom/cndatacom/safecollection/SafeCollectionManager;->getInstance()Lcom/cndatacom/safecollection/SafeCollectionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cndatacom/safecollection/SafeCollectionManager;->release(Landroid/content/Context;)V

    .line 8
    invoke-static {}, Lcom/cndatacom/campus/work/WiFiInfoWorker;->getInstance()Lcom/cndatacom/campus/work/WiFiInfoWorker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cndatacom/campus/work/WiFiInfoWorker;->release(Landroid/content/Context;)V

    .line 9
    invoke-static {}, Lcom/cndatacom/campus/work/RoutingdelayWorker;->getInstance()Lcom/cndatacom/campus/work/RoutingdelayWorker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cndatacom/campus/work/RoutingdelayWorker;->release(Landroid/content/Context;)V

    return-void
.end method

.method public final q2(Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->onCheckUpdate(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckUpdate ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public final r1(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x10

    const/16 v2, 0xe

    const/16 v3, 0x9

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "onIntentVpnPage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v6, 0x35

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "onShareLog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v6, 0x34

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "onVersionUpdate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v6, 0x33

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "getCopyPersonalInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v6, 0x32

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "postNotification"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v6, 0x31

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "authOtherClient"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v6, 0x30

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "onInAppBrowser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v6, 0x2f

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "loadImage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v6, 0x2e

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "getPersonalInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v6, 0x2d

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "updateNetworkInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v6, 0x2c

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "loadDialogAD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v6, 0x2b

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "runInstalledApp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v6, 0x2a

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "setCacheData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v6, 0x29

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "postBackgroundNotification"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v6, 0x28

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "termOtherClient"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v6, 0x27

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "hidePopup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v6, 0x26

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "hideModal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v6, 0x25

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "runManagerInternetTool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v6, 0x24

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "onIntentWiFiPage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v6, 0x23

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "showLoading"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v6, 0x22

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "checkPermission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v6, 0x21

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "onIntentPermissionPage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v6, 0x20

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "onInWebView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v6, 0x1f

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "getMulCacheData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v6, 0x1e

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "showCheckBoxModal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v6, 0x1d

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "revokePrivacy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v6, 0x1c

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "onExitApplication"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v6, 0x1b

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "getAppInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v6, 0x1a

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "hideLoading"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v6, 0x19

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "onStartNetCheckTool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v6, 0x18

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "jsLog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v6, 0x17

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "onCheckNet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v6, 0x16

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "onQueryPersonalInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v6, 0x15

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "onGetVerificatioCode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v6, 0x14

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "onCheckNetGoon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v6, 0x13

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "getCacheData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v6, 0x12

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "onQueryPermission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v6, 0x11

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "onTerm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto/16 :goto_0

    :cond_25
    move v6, v1

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "onCall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v6, 0xf

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "onAuth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto/16 :goto_0

    :cond_27
    move v6, v2

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "onMoveTaskToBack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v6, 0xd

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "onExitVisitor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v6, 0xc

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "downloadApp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v6, 0xb

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "onResetDetectSettings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v6, 0xa

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "onRetry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto/16 :goto_0

    :cond_2c
    move v6, v3

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "onIntentLocationServicePage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v6, 0x8

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "onAskSSIDPermission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_0

    :cond_2e
    const/4 v6, 0x7

    goto :goto_0

    :sswitch_2f
    const-string v0, "onIntentAskVpnPage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_0

    :cond_2f
    const/4 v6, 0x6

    goto :goto_0

    :sswitch_30
    const-string v0, "onAskPermission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto :goto_0

    :cond_30
    const/4 v6, 0x5

    goto :goto_0

    :sswitch_31
    const-string v0, "InitMananger"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_0

    :cond_31
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_32
    const-string v0, "des3EncodeECB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto :goto_0

    :cond_32
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_33
    const-string v0, "showToast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_0

    :cond_33
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_34
    const-string v0, "showPopup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_0

    :cond_34
    move v6, v4

    goto :goto_0

    :sswitch_35
    const-string v0, "showModal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto :goto_0

    :cond_35
    move v6, v5

    :goto_0
    const-string p1, ""

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_2

    .line 2
    :pswitch_0
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->x2()V

    .line 3
    invoke-virtual {p3, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4
    :pswitch_1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->D2()V

    .line 5
    invoke-virtual {p3, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6
    :pswitch_2
    invoke-virtual {p0, p3}, Lcom/cndatacom/campus/PortalMananger;->q2(Lcom/cndatacom/campus/uni/UniJSCallback;)V

    goto/16 :goto_2

    .line 7
    :pswitch_3
    invoke-virtual {p0, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->d1(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    goto/16 :goto_2

    .line 8
    :pswitch_4
    invoke-virtual {p0, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->H0(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    goto/16 :goto_2

    .line 9
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/cndatacom/campus/PortalMananger;->s2(Lcom/alibaba/fastjson/JSONArray;)V

    .line 10
    invoke-virtual {p3, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 11
    :pswitch_6
    invoke-virtual {p0, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->g2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    goto/16 :goto_2

    .line 12
    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->f1(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    goto/16 :goto_2

    .line 13
    :pswitch_8
    invoke-virtual {p0, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->Y2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    goto/16 :goto_2

    .line 14
    :pswitch_9
    invoke-virtual {p0, p2}, Lcom/cndatacom/campus/PortalMananger;->f2(Lcom/alibaba/fastjson/JSONArray;)V

    .line 15
    invoke-virtual {p3, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 16
    :pswitch_a
    invoke-virtual {p0, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->I2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    goto/16 :goto_2

    .line 17
    :pswitch_b
    invoke-virtual {p0, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->J2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    goto/16 :goto_2

    .line 18
    :pswitch_c
    invoke-static {}, Lcom/cndatacom/campus/CampusApplication;->isRunBackground()Z

    move-result p1

    if-nez p1, :cond_36

    goto/16 :goto_2

    .line 19
    :cond_36
    :pswitch_d
    :try_start_0
    invoke-virtual {p2, v5}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {}, Lcom/cndatacom/sdk/portal/notify/NotifyManager;->getInstance()Lcom/cndatacom/sdk/portal/notify/NotifyManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0a0001

    invoke-virtual {p2, p3, p1, v0}, Lcom/cndatacom/sdk/portal/notify/NotifyManager;->postNotification(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 22
    :pswitch_e
    invoke-virtual {p0, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->W2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    goto/16 :goto_2

    .line 23
    :pswitch_f
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object p1

    new-instance p3, Lcom/cndatacom/campus/e;

    invoke-direct {p3, p0, p2}, Lcom/cndatacom/campus/e;-><init>(Lcom/cndatacom/campus/PortalMananger;Lcom/alibaba/fastjson/JSONArray;)V

    invoke-virtual {p1, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 24
    :pswitch_10
    invoke-virtual {p3, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->I:Landroid/app/AlertDialog;

    if-eqz p1, :cond_38

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 26
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->I:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_2

    .line 27
    :pswitch_11
    invoke-virtual {p0, p3}, Lcom/cndatacom/campus/PortalMananger;->z2(Lcom/cndatacom/campus/uni/UniJSCallback;)V

    goto/16 :goto_2

    .line 28
    :pswitch_12
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->y2()V

    .line 29
    invoke-virtual {p3, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 30
    :pswitch_13
    invoke-virtual {p0, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->N2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    goto/16 :goto_2

    .line 31
    :pswitch_14
    invoke-virtual {p0, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->R0(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    goto/16 :goto_2

    .line 32
    :pswitch_15
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->v2()V

    .line 33
    invoke-virtual {p3, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 34
    :pswitch_16
    invoke-virtual {p0, p2}, Lcom/cndatacom/campus/PortalMananger;->t2(Lcom/alibaba/fastjson/JSONArray;)V

    .line 35
    invoke-virtual {p3, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 36
    :pswitch_17
    invoke-virtual {p0, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->e1(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    goto/16 :goto_2

    .line 37
    :pswitch_18
    invoke-virtual {p0, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->M2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    goto/16 :goto_2

    .line 38
    :pswitch_19
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object p1

    const-string p2, "PrivacyKey"

    invoke-static {p1, p2, v5}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 39
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object p1

    const-string p2, "FINE_LOCATION"

    invoke-static {p1, p2, v4}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 40
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->setOpenSSID(Z)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 41
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->sendReceiver(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 42
    :goto_1
    :pswitch_1a
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->J:Landroid/app/AlertDialog;

    if-eqz p1, :cond_37

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 43
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->J:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 44
    :cond_37
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object p2

    const p3, 0x7f0b003e

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v5}, Lcom/cndatacom/dialog/Dialog;->loading(Landroid/app/Activity;Ljava/lang/String;Z)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->J:Landroid/app/AlertDialog;

    .line 45
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 46
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->x:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/cndatacom/campus/PortalMananger$7;

    invoke-direct {p2, p0}, Lcom/cndatacom/campus/PortalMananger$7;-><init>(Lcom/cndatacom/campus/PortalMananger;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_2

    .line 47
    :pswitch_1b
    invoke-virtual {p0, p3}, Lcom/cndatacom/campus/PortalMananger;->a1(Lcom/cndatacom/campus/uni/UniJSCallback;)V

    goto/16 :goto_2

    .line 48
    :pswitch_1c
    invoke-virtual {p3, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->J:Landroid/app/AlertDialog;

    if-eqz p1, :cond_38

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 50
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->J:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_2

    .line 51
    :pswitch_1d
    invoke-virtual {p0, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->E2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    goto/16 :goto_2

    .line 52
    :pswitch_1e
    invoke-virtual {p0, p2}, Lcom/cndatacom/campus/PortalMananger;->R1(Lcom/alibaba/fastjson/JSONArray;)V

    .line 53
    invoke-virtual {p3, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 54
    :pswitch_1f
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->j2()V

    .line 55
    invoke-virtual {p3, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 56
    :pswitch_20
    invoke-virtual {p0, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->B2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    goto/16 :goto_2

    .line 57
    :pswitch_21
    invoke-virtual {p0, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->r2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    goto/16 :goto_2

    .line 58
    :pswitch_22
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->p2()V

    .line 59
    invoke-virtual {p3, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 60
    :pswitch_23
    invoke-virtual {p0, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->b1(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    goto/16 :goto_2

    .line 61
    :pswitch_24
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->A2()V

    goto/16 :goto_2

    :pswitch_25
    const-string p2, "1"

    .line 62
    invoke-virtual {p0, p2}, Lcom/cndatacom/campus/PortalMananger;->F2(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p3, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 64
    :pswitch_26
    invoke-virtual {p0, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->o2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    goto/16 :goto_2

    .line 65
    :pswitch_27
    invoke-virtual {p0, p2}, Lcom/cndatacom/campus/PortalMananger;->m2(Lcom/alibaba/fastjson/JSONArray;)V

    .line 66
    invoke-virtual {p3, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 67
    :pswitch_28
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto/16 :goto_2

    .line 68
    :pswitch_29
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->y:Landroid/util/ArrayMap;

    iget p2, p0, Lcom/cndatacom/campus/PortalMananger;->j:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->sendReceiver(Landroid/content/Context;I)V

    goto :goto_2

    .line 70
    :pswitch_2a
    invoke-virtual {p0, p2}, Lcom/cndatacom/campus/PortalMananger;->X0(Lcom/alibaba/fastjson/JSONArray;)V

    .line 71
    invoke-virtual {p3, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Ljava/lang/String;)V

    goto :goto_2

    .line 72
    :pswitch_2b
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->resetLastLocalDetectUrlData()V

    .line 73
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lcom/cndatacom/campus/PortalMananger$8;

    invoke-direct {p2, p0}, Lcom/cndatacom/campus/PortalMananger$8;-><init>(Lcom/cndatacom/campus/PortalMananger;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 74
    :pswitch_2c
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->C2()V

    goto :goto_2

    .line 75
    :pswitch_2d
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->u2()V

    .line 76
    invoke-virtual {p3, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Ljava/lang/String;)V

    goto :goto_2

    .line 77
    :pswitch_2e
    invoke-virtual {p0, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->l2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    goto :goto_2

    .line 78
    :pswitch_2f
    invoke-virtual {p0, v3}, Lcom/cndatacom/campus/PortalMananger;->w2(I)V

    .line 79
    invoke-virtual {p3, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Ljava/lang/String;)V

    goto :goto_2

    .line 80
    :pswitch_30
    invoke-virtual {p0, p2}, Lcom/cndatacom/campus/PortalMananger;->k2(Lcom/alibaba/fastjson/JSONArray;)V

    goto :goto_2

    .line 81
    :pswitch_31
    invoke-virtual {p0, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->n(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    goto :goto_2

    .line 82
    :pswitch_32
    invoke-virtual {p0, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->T0(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    goto :goto_2

    .line 83
    :pswitch_33
    invoke-virtual {p0, p2}, Lcom/cndatacom/campus/PortalMananger;->S2(Lcom/alibaba/fastjson/JSONArray;)V

    .line 84
    invoke-virtual {p3, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Ljava/lang/String;)V

    goto :goto_2

    .line 85
    :pswitch_34
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object p1

    new-instance p3, Lcom/cndatacom/campus/p;

    invoke-direct {p3, p0, p2}, Lcom/cndatacom/campus/p;-><init>(Lcom/cndatacom/campus/PortalMananger;Lcom/alibaba/fastjson/JSONArray;)V

    invoke-virtual {p1, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 86
    :pswitch_35
    invoke-virtual {p0, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->Q2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    :cond_38
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72727a50 -> :sswitch_35
        -0x72480451 -> :sswitch_34
        -0x720fded6 -> :sswitch_33
        -0x6d0733d3 -> :sswitch_32
        -0x67bad7c3 -> :sswitch_31
        -0x64f00277 -> :sswitch_30
        -0x5d8eb35b -> :sswitch_2f
        -0x585041bc -> :sswitch_2e
        -0x56f0616c -> :sswitch_2d
        -0x4fc407f7 -> :sswitch_2c
        -0x4d9fc14a -> :sswitch_2b
        -0x4830f387 -> :sswitch_2a
        -0x41a541ef -> :sswitch_29
        -0x3edb15a9 -> :sswitch_28
        -0x3c68a7d9 -> :sswitch_27
        -0x3c680b23 -> :sswitch_26
        -0x3c604115 -> :sswitch_25
        -0x32044f28 -> :sswitch_24
        -0x21990c6a -> :sswitch_23
        -0x208f72a5 -> :sswitch_22
        -0xfdbacb7 -> :sswitch_21
        -0x68d429 -> :sswitch_20
        0xb4f274 -> :sswitch_1f
        0x60b2d3b -> :sswitch_1e
        0xbd75706 -> :sswitch_1d
        0xce38d9a -> :sswitch_1c
        0xe759639 -> :sswitch_1b
        0xeb90573 -> :sswitch_1a
        0x119c6a22 -> :sswitch_19
        0x18960ccd -> :sswitch_18
        0x1983095e -> :sswitch_17
        0x1d225415 -> :sswitch_16
        0x21d6fb39 -> :sswitch_15
        0x28e6dcf7 -> :sswitch_14
        0x2b33b77f -> :sswitch_13
        0x2db1c5df -> :sswitch_12
        0x3034983b -> :sswitch_11
        0x31e2268b -> :sswitch_10
        0x320c9c8a -> :sswitch_f
        0x33657aef -> :sswitch_e
        0x390ce9f9 -> :sswitch_d
        0x3abab40a -> :sswitch_c
        0x3dc87672 -> :sswitch_b
        0x3e94b671 -> :sswitch_a
        0x4860b373 -> :sswitch_9
        0x51827184 -> :sswitch_8
        0x519a1415 -> :sswitch_7
        0x5ab5dc4b -> :sswitch_6
        0x5c870433 -> :sswitch_5
        0x5d3a85ab -> :sswitch_4
        0x60b5c299 -> :sswitch_3
        0x64662422 -> :sswitch_2
        0x78c4fde4 -> :sswitch_1
        0x7fd6e3c8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2, p1}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->onGetVerificatioCode(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetVerificatioCode->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p2, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Z)V

    :cond_0
    return-void
.end method

.method public final s1()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v0

    const-string v1, "Cache_Account"

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getCacheConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Cache_Password"

    .line 3
    invoke-virtual {v0, v3, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getCacheConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cache_Verify"

    .line 4
    invoke-virtual {v0, v4, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getCacheConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/cndatacom/campus/PortalMananger;->n2(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final s2(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cndatacom/sdk/portal/util/IntentUtil;->inBrowserOpen(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public final t1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->Z:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    const v1, 0x7f0700a1

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 9
    new-instance v3, Lcom/cndatacom/campus/adapter/HistoryAdapter;

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/cndatacom/campus/adapter/HistoryAdapter;-><init>(Landroid/content/Context;Lorg/json/JSONArray;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f070094

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 12
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    :goto_0
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 14
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->Z:Landroid/app/AlertDialog;

    .line 15
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/16 v0, 0x35

    .line 17
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v0, 0xf0

    .line 18
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 19
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->Z:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const p2, 0x106000d

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 21
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->Z:Landroid/app/AlertDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 22
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->Z:Landroid/app/AlertDialog;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 23
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->Z:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final t2(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http:"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///android_asset/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onInWebView->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1, p1}, Lcom/cndatacom/campus/PortalWebviewActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final u1(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Lz2/a;->d()V

    .line 2
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/cndatacom/sdk/portal/manager/PortalSdkManager;->initLog(Landroid/content/Context;Z)V

    .line 3
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 4
    invoke-static {}, Lcom/cndatacom/personal/PersonalManager;->getInstance()Lcom/cndatacom/personal/PersonalManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cndatacom/personal/PersonalManager;->collectionDeviceInfo(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->S0(Landroid/content/Context;)V

    return-void
.end method

.method public final u2()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final v1(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "com.cndatacom.campus.receiver.action.bundle.key"

    .line 1
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "com.cndatacom.campus.receiver.action.data.key"

    .line 2
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "url"

    const-string v1, ""

    .line 5
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p2, "startTime"

    const-wide/16 v1, 0x0

    .line 6
    invoke-virtual {v0, p2, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string p2, "endTime"

    .line 7
    invoke-virtual {v0, p2, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-string p2, "status"

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 9
    invoke-static {}, Lcom/cndatacom/campus/work/InterfaceInfoWorker;->getInstance()Lcom/cndatacom/campus/work/InterfaceInfoWorker;

    move-result-object v2

    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v4

    move-object v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/cndatacom/campus/work/InterfaceInfoWorker;->collection(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;Ljava/lang/String;JJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final v2()V
    .locals 1

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/IntentUtil;->goToPermissionSetting(Landroid/app/Activity;)V

    return-void
.end method

.method public final w1(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.cndatacom.campus.receiver.action.bundle.key"

    .line 1
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "com.cndatacom.campus.receiver.action.data.key"

    .line 2
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    .line 3
    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "200117"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->hasDetectUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/DetectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/manager/DetectManager;->removeDetectUrl()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger;->o0:Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0, p2}, Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;->handleConnectFailMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    .line 8
    :cond_1
    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->U2(Landroid/content/Context;)V

    .line 9
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->V2()V

    return-void
.end method

.method public final w2(I)V
    .locals 5

    const-string v0, "left"

    .line 1
    :try_start_0
    new-instance v1, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;

    invoke-direct {v1}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;-><init>()V

    .line 2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "title"

    const-string v4, "VPN\u6743\u9650\u4f7f\u7528\u8bf4\u660e"

    .line 3
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "titleBold"

    const/4 v4, 0x1

    .line 4
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "titleAlign"

    .line 5
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "content"

    const-string v4, "\u5f53\u60a8\u4f7f\u7528APP\u65f6\uff0c\u5728\u9632\u6b62APP\u8fdb\u7a0b\u88ab\u6740\u65f6\u4f1a\u4f7f\u7528VPN\u6743\u9650\u3002\u5982\u679c\u4e0d\u6388\u6743\u4e0a\u8ff0\u6743\u9650\uff0c\u4f1a\u5bfc\u81f4\u5ba2\u6237\u7aef\u65e0\u6cd5\u6b63\u5e38\u4fdd\u6301\u4e0a\u7f51\u72b6\u6001\uff0c\u5efa\u8bae\u9009\u62e9\u5141\u8bb8\u3002"

    .line 6
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "contentAlign"

    .line 7
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {v1, v2}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->setTipDialogOptions(Lorg/json/JSONObject;)V

    .line 9
    invoke-virtual {v1, p1}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->setRequestCode(I)V

    .line 10
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->g0:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;

    invoke-virtual {p1, v1}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->addPermission(Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;)V

    .line 11
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->g0:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;

    invoke-virtual {p1}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final x1(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/cndatacom/topology/TopologyManager;->getInstance()Lcom/cndatacom/topology/TopologyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cndatacom/topology/TopologyManager;->release(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/cndatacom/traffic/TrafficStatsManager;->getInstance()Lcom/cndatacom/traffic/TrafficStatsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cndatacom/traffic/TrafficStatsManager;->release(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/cndatacom/safecollection/SafeCollectionManager;->getInstance()Lcom/cndatacom/safecollection/SafeCollectionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cndatacom/safecollection/SafeCollectionManager;->release(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/cndatacom/collection/CollectionManager;->getInstance()Lcom/cndatacom/collection/CollectionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cndatacom/collection/CollectionManager;->release(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lcom/cndatacom/campus/work/CapabilityWorker;->getInstance()Lcom/cndatacom/campus/work/CapabilityWorker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cndatacom/campus/work/CapabilityWorker;->release(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Lcom/cndatacom/campus/work/WiFiInfoWorker;->getInstance()Lcom/cndatacom/campus/work/WiFiInfoWorker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cndatacom/campus/work/WiFiInfoWorker;->release(Landroid/content/Context;)V

    .line 7
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->getInstance()Lcom/cndatacom/sdk/portal/manager/WorkManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->cancelAll()V

    .line 8
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "onTrimMemoryEvent"

    invoke-virtual {p0, v0, p1}, Lcom/cndatacom/campus/PortalMananger;->N0(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final x2()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->isVpn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/cndatacom/campus/PortalMananger$12;

    invoke-direct {v2, p0, v0}, Lcom/cndatacom/campus/PortalMananger$12;-><init>(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/cndatacom/campus/PortalMananger$13;

    invoke-direct {v2, p0, v0}, Lcom/cndatacom/campus/PortalMananger$13;-><init>(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final y1(Ljava/lang/String;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v7

    .line 3
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07008a

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0039

    .line 6
    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0028

    .line 7
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\{appName\\}"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f07004f

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/CheckBox;

    const v1, 0x7f070051

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    const v1, 0x7f0b004a

    .line 11
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0046

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 13
    new-instance v6, Lcom/cndatacom/campus/PortalMananger$16;

    invoke-direct {v6, p0, v7}, Lcom/cndatacom/campus/PortalMananger$16;-><init>(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;)V

    const/4 v5, 0x0

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Lcom/cndatacom/campus/util/SpannableStringUtil;->bindLinkText(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 15
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    const v1, 0x7f070049

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 17
    new-instance v2, Lcom/cndatacom/campus/PortalMananger$17;

    invoke-direct {v2, p0, v8}, Lcom/cndatacom/campus/PortalMananger$17;-><init>(Lcom/cndatacom/campus/PortalMananger;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f070058

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 19
    new-instance v11, Lcom/cndatacom/campus/PortalMananger$18;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v9

    move-object v4, v7

    move-object v5, v8

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/cndatacom/campus/PortalMananger$18;-><init>(Lcom/cndatacom/campus/PortalMananger;Landroid/widget/CheckBox;Landroid/content/Context;Landroid/app/AlertDialog;Ljava/lang/String;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0700f4

    .line 20
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 21
    new-instance v0, Lcom/cndatacom/campus/PortalMananger$19;

    invoke-direct {v0, p0, v8, p2}, Lcom/cndatacom/campus/PortalMananger$19;-><init>(Lcom/cndatacom/campus/PortalMananger;Landroid/app/AlertDialog;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 22
    invoke-virtual {v8, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 23
    invoke-virtual {v8, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 24
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const p2, 0x106000d

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 25
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final y2()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->Z0()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final z1(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_6

    const/4 v1, 0x2

    if-eq p3, v1, :cond_5

    const/4 v1, 0x3

    if-eq p3, v1, :cond_5

    const/4 v1, 0x7

    if-eq p3, v1, :cond_4

    const/16 v1, 0xa

    if-eq p3, v1, :cond_3

    const/16 v1, 0xd

    if-eq p3, v1, :cond_2

    const/16 v1, 0xf

    if-eq p3, v1, :cond_1

    const/16 v0, 0x3e8

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cndatacom/campus/PortalMananger;->v1(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->y:Landroid/util/ArrayMap;

    iget p2, p0, Lcom/cndatacom/campus/PortalMananger;->j:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cndatacom/campus/uni/UniJSCallback;

    if-eqz p1, :cond_7

    .line 3
    invoke-virtual {p1, v0}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Z)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/cndatacom/campus/PortalMananger;->L1(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string p1, "ACTION_ACTIVITY_RESUME :"

    .line 5
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger;->x:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/cndatacom/campus/PortalMananger$38;

    invoke-direct {p2, p0}, Lcom/cndatacom/campus/PortalMananger$38;-><init>(Lcom/cndatacom/campus/PortalMananger;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    const-string p2, "PortalMananger releaseMemory->"

    .line 7
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalMananger;->x1(Landroid/content/Context;)V

    goto :goto_0

    .line 9
    :cond_5
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->freeDaMod()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/cndatacom/campus/PortalMananger;->C1(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 11
    :cond_6
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->freeDaMod()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/cndatacom/campus/PortalMananger;->w1(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public final z2(Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger;->c1()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol;->onQueryClient(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryClient -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method
