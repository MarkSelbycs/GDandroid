.class public final synthetic Li1/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln1/i;


# instance fields
.field public final synthetic a:Li1/i;


# direct methods
.method public synthetic constructor <init>(Li1/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/h;->a:Li1/i;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Li1/h;->a:Li1/i;

    invoke-static {v0, p1, p2}, Li1/i;->b(Li1/i;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
