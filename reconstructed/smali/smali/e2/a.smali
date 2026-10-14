.class public final synthetic Le2/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lv1/g;


# instance fields
.field public final synthetic a:Lv1/i;


# direct methods
.method public synthetic constructor <init>(Lv1/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/a;->a:Lv1/i;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le2/a;->a:Lv1/i;

    invoke-static {v0, p1}, Le2/c;->f(Lv1/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
