.class public final synthetic Li2/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Li2/d;


# direct methods
.method public synthetic constructor <init>(Li2/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2/c;->a:Li2/d;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Li2/c;->a:Li2/d;

    invoke-static {v0, p1}, Li2/d;->a(Li2/d;Ljava/lang/Object;)Li2/b;

    move-result-object p1

    return-object p1
.end method
