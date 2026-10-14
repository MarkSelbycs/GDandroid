.class public final Lcom/msec/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/msec/i;->a(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/util/concurrent/SynchronousQueue;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Ljava/util/concurrent/SynchronousQueue;)V
    .locals 0

    iput p1, p0, Lcom/msec/i$1;->a:I

    iput-object p2, p0, Lcom/msec/i$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/msec/i$1;->c:Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 v1, 0x6d5

    invoke-static {v1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
