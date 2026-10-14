.class public abstract Lm3/n;
.super Lm3/p;
.source "PropertyReference0.java"

# interfaces
.implements Lq3/f;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lm3/p;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Lq3/f;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public f()Lq3/a;
    .locals 1

    invoke-static {p0}, Lm3/r;->d(Lm3/n;)Lq3/f;

    move-result-object v0

    return-object v0
.end method
