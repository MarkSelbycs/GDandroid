.class public Lcom/msec/bd$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/msec/bd$a;


# direct methods
.method public constructor <init>(Lcom/msec/bd$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/msec/bd$b;->a:Lcom/msec/bd$a;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/msec/bd$b;->a:Lcom/msec/bd$a;

    invoke-virtual {v0, p1}, Lcom/msec/bd$a;->handleMessage(Landroid/os/Message;)V

    const/4 p1, 0x1

    return p1
.end method
