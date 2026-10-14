.class public final Lb4/c;
.super Ljava/lang/Object;
.source "Select.kt"


# static fields
.field public static final a:Ll3/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/q<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ly3/h0;

.field public static final c:Ly3/h0;

.field public static final d:Ly3/h0;

.field public static final e:Ly3/h0;

.field public static final f:Ly3/h0;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lb4/c$a;->b:Lb4/c$a;

    sput-object v0, Lb4/c;->a:Ll3/q;

    .line 2
    new-instance v0, Ly3/h0;

    const-string v1, "STATE_REG"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb4/c;->b:Ly3/h0;

    .line 3
    new-instance v0, Ly3/h0;

    const-string v1, "STATE_COMPLETED"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb4/c;->c:Ly3/h0;

    .line 4
    new-instance v0, Ly3/h0;

    const-string v1, "STATE_CANCELLED"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb4/c;->d:Ly3/h0;

    .line 5
    new-instance v0, Ly3/h0;

    const-string v1, "NO_RESULT"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb4/c;->e:Ly3/h0;

    .line 6
    new-instance v0, Ly3/h0;

    const-string v1, "PARAM_CLAUSE_0"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb4/c;->f:Ly3/h0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(I)Lb4/d;
    .locals 3

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Lb4/d;->d:Lb4/d;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected internal result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    sget-object p0, Lb4/d;->c:Lb4/d;

    goto :goto_0

    .line 4
    :cond_2
    sget-object p0, Lb4/d;->b:Lb4/d;

    goto :goto_0

    .line 5
    :cond_3
    sget-object p0, Lb4/d;->a:Lb4/d;

    :goto_0
    return-object p0
.end method

.method public static final synthetic b(I)Lb4/d;
    .locals 0

    invoke-static {p0}, Lb4/c;->a(I)Lb4/d;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c()Ly3/h0;
    .locals 3

    sget-object v0, Lb4/c;->e:Ly3/h0;

    return-object v0
.end method

.method public static final synthetic d()Ly3/h0;
    .locals 3

    sget-object v0, Lb4/c;->d:Ly3/h0;

    return-object v0
.end method

.method public static final synthetic e()Ly3/h0;
    .locals 2

    sget-object v0, Lb4/c;->c:Ly3/h0;

    return-object v0
.end method

.method public static final synthetic f()Ly3/h0;
    .locals 1

    sget-object v0, Lb4/c;->b:Ly3/h0;

    return-object v0
.end method

.method public static final synthetic g(Lt3/j;Ll3/l;)Z
    .locals 0

    invoke-static {p0, p1}, Lb4/c;->h(Lt3/j;Ll3/l;)Z

    move-result p0

    return p0
.end method

.method public static final h(Lt3/j;Ll3/l;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/j<",
            "-",
            "La3/o;",
            ">;",
            "Ll3/l<",
            "-",
            "Ljava/lang/Throwable;",
            "La3/o;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, La3/o;->a:La3/o;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Lt3/j;->U(Ljava/lang/Object;Ljava/lang/Object;Ll3/l;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-interface {p0, p1}, Lt3/j;->T(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method
