.class public Lt/h$b$a;
.super Ljava/lang/Object;
.source "RequestExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt/h$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv/a;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lt/h$b;


# direct methods
.method public constructor <init>(Lt/h$b;Lv/a;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lt/h$b$a;->c:Lt/h$b;

    iput-object p2, p0, Lt/h$b$a;->a:Lv/a;

    iput-object p3, p0, Lt/h$b$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lt/h$b$a;->a:Lv/a;

    iget-object v1, p0, Lt/h$b$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lv/a;->accept(Ljava/lang/Object;)V

    return-void
.end method
