.class public final synthetic Ln/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln/d$a;

.field public final synthetic b:Landroid/graphics/Typeface;


# direct methods
.method public synthetic constructor <init>(Ln/d$a;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/c;->a:Ln/d$a;

    iput-object p2, p0, Ln/c;->b:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ln/c;->a:Ln/d$a;

    iget-object v1, p0, Ln/c;->b:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Ln/d$a;->b(Ln/d$a;Landroid/graphics/Typeface;)V

    return-void
.end method
