.class public final Lt3/o1$a;
.super Lt3/n1;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt3/o1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final e:Lt3/o1;

.field public final f:Lt3/o1$b;

.field public final g:Lt3/q;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lt3/o1;Lt3/o1$b;Lt3/q;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lt3/n1;-><init>()V

    .line 2
    iput-object p1, p0, Lt3/o1$a;->e:Lt3/o1;

    .line 3
    iput-object p2, p0, Lt3/o1$a;->f:Lt3/o1$b;

    .line 4
    iput-object p3, p0, Lt3/o1$a;->g:Lt3/q;

    .line 5
    iput-object p4, p0, Lt3/o1$a;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lt3/o1$a;->z(Ljava/lang/Throwable;)V

    sget-object p1, La3/o;->a:La3/o;

    return-object p1
.end method

.method public z(Ljava/lang/Throwable;)V
    .locals 3

    iget-object p1, p0, Lt3/o1$a;->e:Lt3/o1;

    iget-object v0, p0, Lt3/o1$a;->f:Lt3/o1$b;

    iget-object v1, p0, Lt3/o1$a;->g:Lt3/q;

    iget-object v2, p0, Lt3/o1$a;->h:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lt3/o1;->r(Lt3/o1;Lt3/o1$b;Lt3/q;Ljava/lang/Object;)V

    return-void
.end method
