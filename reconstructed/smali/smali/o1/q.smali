.class public final synthetic Lo1/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/q;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo1/q;->a:Ljava/lang/Class;

    check-cast p1, Ljava/lang/Class;

    invoke-static {v0, p1}, Lo1/x;->x(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
