.class public Lt/a$a;
.super Ljava/lang/Object;
.source "CallbackWithHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt/a;->c(Landroid/graphics/Typeface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lt/g$c;

.field public final synthetic b:Landroid/graphics/Typeface;

.field public final synthetic c:Lt/a;


# direct methods
.method public constructor <init>(Lt/a;Lt/g$c;Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lt/a$a;->c:Lt/a;

    iput-object p2, p0, Lt/a$a;->a:Lt/g$c;

    iput-object p3, p0, Lt/a$a;->b:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lt/a$a;->a:Lt/g$c;

    iget-object v1, p0, Lt/a$a;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lt/g$c;->b(Landroid/graphics/Typeface;)V

    return-void
.end method
