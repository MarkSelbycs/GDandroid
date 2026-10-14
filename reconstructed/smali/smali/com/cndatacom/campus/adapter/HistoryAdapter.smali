.class public Lcom/cndatacom/campus/adapter/HistoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "HistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cndatacom/campus/adapter/HistoryAdapter$HistoryViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lorg/json/JSONArray;

.field public e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/cndatacom/campus/adapter/HistoryAdapter;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/cndatacom/campus/adapter/HistoryAdapter;->d:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final b(ILcom/cndatacom/campus/adapter/HistoryAdapter$HistoryViewHolder;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/cndatacom/campus/adapter/HistoryAdapter$HistoryViewHolder;->getTitleTv()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p3, p0, Lcom/cndatacom/campus/adapter/HistoryAdapter;->d:Lorg/json/JSONArray;

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p1, p3, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/cndatacom/campus/adapter/HistoryAdapter$HistoryViewHolder;->getDividerView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/campus/adapter/HistoryAdapter;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/cndatacom/campus/adapter/HistoryAdapter$HistoryViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cndatacom/campus/adapter/HistoryAdapter;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cndatacom/campus/adapter/HistoryAdapter;->d:Lorg/json/JSONArray;

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    check-cast p1, Lcom/cndatacom/campus/adapter/HistoryAdapter$HistoryViewHolder;

    invoke-virtual {p0, p2, p1, v0}, Lcom/cndatacom/campus/adapter/HistoryAdapter;->b(ILcom/cndatacom/campus/adapter/HistoryAdapter$HistoryViewHolder;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/cndatacom/campus/adapter/HistoryAdapter;->e:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f09002b

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/cndatacom/campus/adapter/HistoryAdapter$HistoryViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/cndatacom/campus/adapter/HistoryAdapter$HistoryViewHolder;-><init>(Lcom/cndatacom/campus/adapter/HistoryAdapter;Landroid/view/View;)V

    return-object p2
.end method
