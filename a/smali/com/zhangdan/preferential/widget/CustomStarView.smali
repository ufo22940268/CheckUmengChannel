.class public Lcom/zhangdan/preferential/widget/CustomStarView;
.super Landroid/widget/LinearLayout;
.source "CustomStarView.java"


# instance fields
.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/CustomStarView;->mInflater:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 4

    .prologue
    .line 32
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 33
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/CustomStarView;->setOrientation(I)V

    .line 34
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/CustomStarView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030107

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public setRating(I)V
    .locals 3
    .parameter "rating"

    .prologue
    .line 40
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 41
    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/CustomStarView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 42
    .local v0, child:Landroid/widget/ImageView;
    const v2, 0x7f020382

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v0           #child:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
