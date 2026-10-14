.class public final synthetic Lh1/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lx1/a;


# direct methods
.method public synthetic constructor <init>(Lx1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1/c;->a:Lx1/a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lh1/c;->a:Lx1/a;

    check-cast p1, Ljava/lang/Class;

    invoke-static {v0, p1}, Lh1/d;->b(Lx1/a;Ljava/lang/Class;)Lh1/b;

    move-result-object p1

    return-object p1
.end method
