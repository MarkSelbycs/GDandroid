.class public Lk4/j;
.super Ljava/lang/Object;
.source "MutablePDU.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Lk4/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lk4/k;
    .locals 1

    iget-object v0, p0, Lk4/j;->a:Lk4/k;

    return-object v0
.end method

.method public c(Lk4/k;)V
    .locals 0

    iput-object p1, p0, Lk4/j;->a:Lk4/k;

    return-void
.end method
