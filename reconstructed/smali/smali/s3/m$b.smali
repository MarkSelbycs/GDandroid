.class public final Ls3/m$b;
.super Lm3/l;
.source "Strings.kt"

# interfaces
.implements Ll3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls3/m;->M(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lr3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm3/l;",
        "Ll3/l<",
        "Lp3/h;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Ls3/m$b;->b:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lp3/h;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls3/m$b;->b:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ls3/m;->O(Ljava/lang/CharSequence;Lp3/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lp3/h;

    invoke-virtual {p0, p1}, Ls3/m$b;->b(Lp3/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
