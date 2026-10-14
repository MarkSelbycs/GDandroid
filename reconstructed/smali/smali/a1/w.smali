.class public final synthetic La1/w;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:La1/x;

.field public final synthetic b:Lb1/c;


# direct methods
.method public synthetic constructor <init>(La1/x;Lb1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/w;->a:La1/x;

    iput-object p2, p0, La1/w;->b:Lb1/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, La1/w;->a:La1/x;

    iget-object v1, p0, La1/w;->b:Lb1/c;

    invoke-static {v0, v1}, La1/x;->a(La1/x;Lb1/c;)V

    return-void
.end method
