.class public final Ln3/c$a;
.super Ln3/c;
.source "Random.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/c;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lm3/g;)V
    .locals 0

    invoke-direct {p0}, Ln3/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    invoke-static {}, Ln3/c;->b()Ln3/c;

    move-result-object v0

    invoke-virtual {v0}, Ln3/c;->c()I

    move-result v0

    return v0
.end method
