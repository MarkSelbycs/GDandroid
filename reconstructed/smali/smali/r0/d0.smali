.class public final synthetic Lr0/d0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lf0/h$c;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/d0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lf0/h$b;)Lf0/h;
    .locals 1

    iget-object v0, p0, Lr0/d0;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/work/impl/WorkDatabase$a;->a(Landroid/content/Context;Lf0/h$b;)Lf0/h;

    move-result-object p1

    return-object p1
.end method
