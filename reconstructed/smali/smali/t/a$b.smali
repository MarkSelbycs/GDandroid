.class public Lt/a$b;
.super Ljava/lang/Object;
.source "CallbackWithHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lt/g$c;

.field public final synthetic b:I

.field public final synthetic c:Lt/a;


# direct methods
.method public constructor <init>(Lt/a;Lt/g$c;I)V
    .locals 0

    iput-object p1, p0, Lt/a$b;->c:Lt/a;

    iput-object p2, p0, Lt/a$b;->a:Lt/g$c;

    iput p3, p0, Lt/a$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lt/a$b;->a:Lt/g$c;

    iget v1, p0, Lt/a$b;->b:I

    invoke-virtual {v0, v1}, Lt/g$c;->a(I)V

    return-void
.end method
