.class public final synthetic La1/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:La1/g;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(La1/g;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/f;->a:La1/g;

    iput p2, p0, La1/f;->b:I

    iput p3, p0, La1/f;->c:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, La1/f;->a:La1/g;

    iget v1, p0, La1/f;->b:I

    iget v2, p0, La1/f;->c:I

    invoke-static {v0, v1, v2}, La1/g;->a(La1/g;II)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
