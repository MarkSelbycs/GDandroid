.class public final Ly3/z$a;
.super Lm3/l;
.source "OnUndeliveredElement.kt"

# interfaces
.implements Ll3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly3/z;->a(Ll3/l;Ljava/lang/Object;Ld3/g;)Ll3/l;
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
.field public final synthetic b:Ll3/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/l<",
            "TE;",
            "La3/o;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final synthetic d:Ld3/g;


# direct methods
.method public constructor <init>(Ll3/l;Ljava/lang/Object;Ld3/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/l<",
            "-TE;",
            "La3/o;",
            ">;TE;",
            "Ld3/g;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Ly3/z$a;->b:Ll3/l;

    iput-object p2, p0, Ly3/z$a;->c:Ljava/lang/Object;

    iput-object p3, p0, Ly3/z$a;->d:Ld3/g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Ly3/z$a;->b:Ll3/l;

    iget-object v0, p0, Ly3/z$a;->c:Ljava/lang/Object;

    iget-object v1, p0, Ly3/z$a;->d:Ld3/g;

    invoke-static {p1, v0, v1}, Ly3/z;->b(Ll3/l;Ljava/lang/Object;Ld3/g;)V

    return-void
.end method

.method public bridge synthetic x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ly3/z$a;->b(Ljava/lang/Throwable;)V

    sget-object p1, La3/o;->a:La3/o;

    return-object p1
.end method
