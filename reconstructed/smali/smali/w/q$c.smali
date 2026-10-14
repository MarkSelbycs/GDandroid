.class public Lw/q$c;
.super Lw/q$f;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw/q;->b0()Lw/q$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw/q$f<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/Class;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lw/q$f;-><init>(ILjava/lang/Class;II)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroid/view/View;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lw/q$c;->e(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p1}, Lw/q$q;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
