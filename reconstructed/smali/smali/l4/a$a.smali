.class public Ll4/a$a;
.super Ljava/lang/Object;
.source "BER.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-byte v0, p0, Ll4/a$a;->a:B

    return-void
.end method


# virtual methods
.method public a()B
    .locals 1

    iget-byte v0, p0, Ll4/a$a;->a:B

    return v0
.end method

.method public b(B)V
    .locals 0

    iput-byte p1, p0, Ll4/a$a;->a:B

    return-void
.end method
