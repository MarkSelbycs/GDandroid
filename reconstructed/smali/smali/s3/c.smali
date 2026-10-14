.class public final Ls3/c;
.super Ljava/lang/Object;
.source "Strings.kt"

# interfaces
.implements Lr3/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr3/b<",
        "Lp3/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:I

.field public final c:I

.field public final d:Ll3/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/p<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "La3/h<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILl3/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Ll3/p<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "La3/h<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls3/c;->a:Ljava/lang/CharSequence;

    .line 3
    iput p2, p0, Ls3/c;->b:I

    .line 4
    iput p3, p0, Ls3/c;->c:I

    .line 5
    iput-object p4, p0, Ls3/c;->d:Ll3/p;

    return-void
.end method

.method public static final synthetic a(Ls3/c;)Ll3/p;
    .locals 0

    iget-object p0, p0, Ls3/c;->d:Ll3/p;

    return-object p0
.end method

.method public static final synthetic b(Ls3/c;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Ls3/c;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final synthetic c(Ls3/c;)I
    .locals 0

    iget p0, p0, Ls3/c;->c:I

    return p0
.end method

.method public static final synthetic d(Ls3/c;)I
    .locals 0

    iget p0, p0, Ls3/c;->b:I

    return p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lp3/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Ls3/c$a;

    invoke-direct {v0, p0}, Ls3/c$a;-><init>(Ls3/c;)V

    return-object v0
.end method
