.class Lcom/cndatacom/campus/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/BaseActivity;->m(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/BaseActivity$1;->a:Lcom/cndatacom/campus/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/cndatacom/campus/BaseActivity$1;->a:Lcom/cndatacom/campus/BaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
