.class public final Lv3/o$b;
.super Lm3/l;
.source "Produce.kt"

# interfaces
.implements Ll3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv3/o;->a(Lv3/q;Ll3/a;Ld3/d;)Ljava/lang/Object;
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
.field public final synthetic b:Lt3/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt3/j<",
            "La3/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt3/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/j<",
            "-",
            "La3/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lv3/o$b;->b:Lt3/j;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lv3/o$b;->b:Lt3/j;

    sget-object v0, La3/i;->a:La3/i$a;

    sget-object v0, La3/o;->a:La3/o;

    invoke-static {v0}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ld3/d;->F(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lv3/o$b;->b(Ljava/lang/Throwable;)V

    sget-object p1, La3/o;->a:La3/o;

    return-object p1
.end method
