.class public final Ls3/m$a;
.super Lm3/l;
.source "Strings.kt"

# interfaces
.implements Ll3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls3/m;->I(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lr3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm3/l;",
        "Ll3/p<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Integer;",
        "La3/h<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Ls3/m$a;->b:Ljava/util/List;

    iput-boolean p2, p0, Ls3/m$a;->c:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/CharSequence;I)La3/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "La3/h<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$$receiver"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls3/m$a;->b:Ljava/util/List;

    iget-boolean v1, p0, Ls3/m$a;->c:Z

    const/4 v2, 0x0

    invoke-static {p1, v0, p2, v1, v2}, Ls3/m;->o(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)La3/h;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, La3/h;->e()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, La3/h;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, La3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)La3/h;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ls3/m$a;->b(Ljava/lang/CharSequence;I)La3/h;

    move-result-object p1

    return-object p1
.end method
