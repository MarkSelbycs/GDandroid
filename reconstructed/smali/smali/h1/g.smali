.class public final synthetic Lh1/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lx1/a;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic a:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1/g;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lh1/g;->a:Ljava/lang/Class;

    invoke-static {v0}, Lh1/h;->a(Ljava/lang/Class;)Lh1/b;

    move-result-object v0

    return-object v0
.end method
