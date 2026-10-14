.class public final synthetic Lo1/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/t;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lo1/t;->a:Ljava/lang/Class;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, p1}, Lo1/x;->u(Ljava/lang/Class;Ljava/lang/reflect/Method;)Z

    move-result p1

    return p1
.end method
