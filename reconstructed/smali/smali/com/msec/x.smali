.class public Lcom/msec/x;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    new-instance v0, Lcom/msec/x;

    invoke-direct {v0}, Lcom/msec/x;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/msec/x;->a(I)V

    return-void
.end method


# virtual methods
.method public native a(I)V
.end method
