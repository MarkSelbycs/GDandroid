.class public Lz/a$b;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz/a;


# direct methods
.method public constructor <init>(Lz/a;)V
    .locals 0

    iput-object p1, p0, Lz/a$b;->a:Lz/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lz/a$b;->a:Lz/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz/a;->K(I)V

    return-void
.end method
