.class public Lw/q$d;
.super Lw/q$f;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw/q;->a()Lw/q$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw/q$f<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/Class;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lw/q$f;-><init>(ILjava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroid/view/View;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lw/q$d;->e(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p1}, Lw/q$o;->c(Landroid/view/View;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
