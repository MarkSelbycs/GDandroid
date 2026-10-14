.class public final synthetic Ll1/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Ll1/l;

.field public final synthetic b:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ll1/l;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll1/k;->a:Ll1/l;

    iput-object p2, p0, Ll1/k;->b:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Ll1/k;->a:Ll1/l;

    iget-object v1, p0, Ll1/k;->b:Ljava/util/function/Predicate;

    invoke-static {v0, v1, p1}, Ll1/l;->b(Ll1/l;Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
