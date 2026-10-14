.class public final synthetic Lx0/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lx0/g;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lx0/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/f;->a:Ljava/util/List;

    iput-object p2, p0, Lx0/f;->b:Lx0/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lx0/f;->a:Ljava/util/List;

    iget-object v1, p0, Lx0/f;->b:Lx0/g;

    invoke-static {v0, v1}, Lx0/g;->a(Ljava/util/List;Lx0/g;)V

    return-void
.end method
