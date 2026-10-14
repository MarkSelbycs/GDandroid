.class public final synthetic Ln1/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ln1/g;


# direct methods
.method public synthetic constructor <init>(Ln1/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/f;->a:Ln1/g;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ln1/f;->a:Ln1/g;

    check-cast p1, Ln1/e;

    invoke-static {v0, p1}, Ln1/g;->b(Ln1/g;Ln1/e;)V

    return-void
.end method
