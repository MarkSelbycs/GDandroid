.class public final synthetic Ln/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln/d$a;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ln/d$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/b;->a:Ln/d$a;

    iput p2, p0, Ln/b;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ln/b;->a:Ln/d$a;

    iget v1, p0, Ln/b;->b:I

    invoke-static {v0, v1}, Ln/d$a;->a(Ln/d$a;I)V

    return-void
.end method
