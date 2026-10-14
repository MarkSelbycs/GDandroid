.class public final Lg4/d$i$a;
.super Lg4/d$i;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg4/d$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg4/d$i;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lg4/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lg4/a;->s:Lg4/a;

    invoke-virtual {p1, v0}, Lg4/e;->l(Lg4/a;)V

    return-void
.end method
