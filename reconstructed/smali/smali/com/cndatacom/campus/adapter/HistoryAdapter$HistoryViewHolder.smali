.class Lcom/cndatacom/campus/adapter/HistoryAdapter$HistoryViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "HistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cndatacom/campus/adapter/HistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HistoryViewHolder"
.end annotation


# instance fields
.field public t:Landroid/view/View;

.field public u:Landroid/widget/TextView;

.field public v:Landroid/view/View;

.field public final synthetic w:Lcom/cndatacom/campus/adapter/HistoryAdapter;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/adapter/HistoryAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cndatacom/campus/adapter/HistoryAdapter$HistoryViewHolder;->w:Lcom/cndatacom/campus/adapter/HistoryAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p2, p0, Lcom/cndatacom/campus/adapter/HistoryAdapter$HistoryViewHolder;->t:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getDividerView()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/adapter/HistoryAdapter$HistoryViewHolder;->v:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/adapter/HistoryAdapter$HistoryViewHolder;->t:Landroid/view/View;

    const v1, 0x7f070065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/campus/adapter/HistoryAdapter$HistoryViewHolder;->v:Landroid/view/View;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/campus/adapter/HistoryAdapter$HistoryViewHolder;->v:Landroid/view/View;

    return-object v0
.end method

.method public getTitleTv()Landroid/widget/TextView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/adapter/HistoryAdapter$HistoryViewHolder;->u:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/adapter/HistoryAdapter$HistoryViewHolder;->t:Landroid/view/View;

    const v1, 0x7f0700df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cndatacom/campus/adapter/HistoryAdapter$HistoryViewHolder;->u:Landroid/widget/TextView;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/campus/adapter/HistoryAdapter$HistoryViewHolder;->u:Landroid/widget/TextView;

    return-object v0
.end method
