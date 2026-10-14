.class public final Lv3/b$c$a;
.super Lm3/l;
.source "BufferedChannel.kt"

# interfaces
.implements Ll3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv3/b$c;->b(Lb4/b;Ljava/lang/Object;Ljava/lang/Object;)Ll3/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm3/l;",
        "Ll3/l<",
        "Ljava/lang/Throwable;",
        "La3/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lv3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/b<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lb4/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb4/b<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lv3/b;Lb4/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lv3/b<",
            "TE;>;",
            "Lb4/b<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lv3/b$c$a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lv3/b$c$a;->c:Lv3/b;

    iput-object p3, p0, Lv3/b$c$a;->d:Lb4/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lv3/b$c$a;->b:Ljava/lang/Object;

    invoke-static {}, Lv3/c;->z()Ly3/h0;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lv3/b$c$a;->c:Lv3/b;

    iget-object p1, p1, Lv3/b;->b:Ll3/l;

    iget-object v0, p0, Lv3/b$c$a;->b:Ljava/lang/Object;

    iget-object v1, p0, Lv3/b$c$a;->d:Lb4/b;

    invoke-interface {v1}, Lb4/b;->b()Ld3/g;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ly3/z;->b(Ll3/l;Ljava/lang/Object;Ld3/g;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lv3/b$c$a;->b(Ljava/lang/Throwable;)V

    sget-object p1, La3/o;->a:La3/o;

    return-object p1
.end method
