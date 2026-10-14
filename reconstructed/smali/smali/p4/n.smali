.class public Lp4/n;
.super Lp4/p;
.source "PrivAES192.java"

# interfaces
.implements Lq4/a;


# static fields
.field public static o:Lr4/j;


# instance fields
.field public i:Lr4/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/j;

    sget-object v1, Lo4/m;->h:Lr4/j;

    invoke-direct {v0, v1}, Lr4/j;-><init>(Lr4/j;)V

    sput-object v0, Lp4/n;->o:Lr4/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lp4/p;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Lr4/j;
    .locals 1

    iget-object v0, p0, Lp4/n;->i:Lr4/j;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lp4/n;->j()Lr4/j;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public b(Lr4/j;)V
    .locals 1

    new-instance v0, Lr4/j;

    invoke-direct {v0, p1}, Lr4/j;-><init>(Lr4/j;)V

    iput-object v0, p0, Lp4/n;->i:Lr4/j;

    return-void
.end method

.method public j()Lr4/j;
    .locals 1

    sget-object v0, Lp4/n;->o:Lr4/j;

    invoke-virtual {v0}, Lr4/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/j;

    return-object v0
.end method
