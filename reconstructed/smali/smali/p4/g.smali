.class public Lp4/g;
.super Lp4/a;
.source "AuthSHA2.java"


# instance fields
.field public h:Lr4/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lr4/j;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4, p5}, Lp4/a;-><init>(Ljava/lang/String;III)V

    .line 2
    iput-object p2, p0, Lp4/g;->h:Lr4/j;

    return-void
.end method


# virtual methods
.method public a()Lr4/j;
    .locals 1

    iget-object v0, p0, Lp4/g;->h:Lr4/j;

    invoke-virtual {v0}, Lr4/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/j;

    return-object v0
.end method
