.class public Lo4/h;
.super Ljava/lang/Object;
.source "MutableStateReference.java"


# instance fields
.field public a:Lo4/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lo4/n;
    .locals 1

    iget-object v0, p0, Lo4/h;->a:Lo4/n;

    return-object v0
.end method

.method public b(Lo4/n;)V
    .locals 0

    iput-object p1, p0, Lo4/h;->a:Lo4/n;

    return-void
.end method
