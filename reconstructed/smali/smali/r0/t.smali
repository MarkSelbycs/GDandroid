.class public final synthetic Lr0/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lr0/u;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lr0/u;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/t;->a:Lr0/u;

    iput-object p2, p0, Lr0/t;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lr0/t;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lr0/t;->a:Lr0/u;

    iget-object v1, p0, Lr0/t;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lr0/t;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lr0/u;->c(Lr0/u;Ljava/util/ArrayList;Ljava/lang/String;)Lz0/u;

    move-result-object v0

    return-object v0
.end method
