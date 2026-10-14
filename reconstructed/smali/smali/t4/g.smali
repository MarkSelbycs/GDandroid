.class public Lt4/g;
.super Ljava/lang/Object;
.source "SimpleVariableTextFormat.java"

# interfaces
.implements Lt4/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lr4/j;Lr4/u;Z)Ljava/lang/String;
    .locals 1

    if-eqz p3, :cond_0

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {}, Lk4/m;->c()Lt4/d;

    move-result-object v0

    invoke-virtual {p1}, Lr4/j;->H()[I

    move-result-object p1

    invoke-interface {v0, p1}, Lt4/d;->b([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p2}, Lr4/u;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
