.class public final synthetic Lh1/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lv1/g;


# instance fields
.field public final synthetic a:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1/f;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lh1/f;->a:Ljava/util/Set;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lh1/h;->b(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
