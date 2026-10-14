.class public Lcom/msec/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/msec/n;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2f0

    invoke-static {v0}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/msec/f;->a:Landroid/content/Context;

    return-void
.end method
