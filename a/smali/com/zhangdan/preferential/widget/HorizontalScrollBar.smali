.class public Lcom/zhangdan/preferential/widget/HorizontalScrollBar;
.super Landroid/widget/HorizontalScrollView;
.source "HorizontalScrollBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/widget/HorizontalScrollBar$OnCategoryClickListener;,
        Lcom/zhangdan/preferential/widget/HorizontalScrollBar$MyAnimationListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HorizontalScrollBar"


# instance fields
.field private mCategoryListener:Lcom/zhangdan/preferential/widget/HorizontalScrollBar$OnCategoryClickListener;

.field private mContext:Landroid/content/Context;

.field private mDividerView:Landroid/view/View;

.field private mHasTag:Z

.field private mItemWidth:I

.field private mItemsView:Landroid/view/ViewGroup;

.field private mNeedRedCircle:Z

.field private mPrevIndex:I

.field private mSelectorView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-object p1, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/preferential/widget/HorizontalScrollBar;I)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->getItemView(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method private getItemView(I)Landroid/view/ViewGroup;
    .locals 1
    .parameter "index"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mItemsView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private initSelectorView()V
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mSelectorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 71
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mItemWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 72
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mSelectorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    return-void
.end method

.method private isAnimationEnded()Z
    .locals 2

    .prologue
    .line 167
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mSelectorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 168
    .local v0, anim:Landroid/view/animation/Animation;
    if-nez v0, :cond_0

    .line 169
    const/4 v1, 0x1

    .line 171
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    goto :goto_0
.end method

.method private notifyListener(Lcom/zhangdan/preferential/data/model/MenuTag;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mCategoryListener:Lcom/zhangdan/preferential/widget/HorizontalScrollBar$OnCategoryClickListener;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mCategoryListener:Lcom/zhangdan/preferential/widget/HorizontalScrollBar$OnCategoryClickListener;

    invoke-interface {v0, p1}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar$OnCategoryClickListener;->onClickCategory(Lcom/zhangdan/preferential/data/model/MenuTag;)V

    .line 156
    :cond_0
    return-void
.end method

.method private translate(IZ)V
    .locals 9
    .parameter "toIndex"
    .parameter "fast"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 80
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mPrevIndex:I

    int-to-float v2, v2

    int-to-float v4, p1

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 84
    .local v0, anim:Landroid/view/animation/TranslateAnimation;
    if-eqz p2, :cond_0

    .line 85
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 89
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 90
    new-instance v1, Lcom/zhangdan/preferential/widget/HorizontalScrollBar$MyAnimationListener;

    iget v2, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mPrevIndex:I

    invoke-direct {v1, p0, v2, p1}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar$MyAnimationListener;-><init>(Lcom/zhangdan/preferential/widget/HorizontalScrollBar;II)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 91
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mSelectorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 93
    iput p1, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mPrevIndex:I

    .line 94
    return-void

    .line 87
    :cond_0
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    goto :goto_0
.end method


# virtual methods
.method protected addTag(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/MenuTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, tags:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/MenuTag;>;"
    return-void
.end method

.method public hasLoadedItem()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mItemsView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTag()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mHasTag:Z

    return v0
.end method

.method public moveToWeekTag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, v0, v0}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->translate(IZ)V

    .line 77
    return-void
.end method

.method public needRedCircle(Z)V
    .locals 0
    .parameter "need"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mNeedRedCircle:Z

    .line 49
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->invalidate()V

    .line 107
    invoke-direct {p0}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->isAnimationEnded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/data/model/MenuTag;

    invoke-direct {p0, v1}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->notifyListener(Lcom/zhangdan/preferential/data/model/MenuTag;)V

    .line 113
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mItemsView:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 114
    .local v0, curIndex:I
    iget v1, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mPrevIndex:I

    if-ne v0, v1, :cond_1

    .line 115
    const-string v1, "HorizontalScrollBar"

    const-string v2, "show background"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->translate(IZ)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->setHorizontalFadingEdgeEnabled(Z)V

    .line 56
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030089

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    const v0, 0x7f0901d8

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mItemsView:Landroid/view/ViewGroup;

    .line 58
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mDividerView:Landroid/view/View;

    .line 60
    const v0, 0x7f0901d7

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mSelectorView:Landroid/view/View;

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->setFillViewport(Z)V

    .line 63
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 98
    const/4 v1, 0x0

    invoke-static {v1, p1}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->resolveSize(II)I

    move-result v0

    .line 99
    .local v0, pw:I
    div-int/lit8 v1, v0, 0x5

    iput v1, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mItemWidth:I

    .line 101
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 102
    return-void
.end method

.method public setOnCategoryClickListener(Lcom/zhangdan/preferential/widget/HorizontalScrollBar$OnCategoryClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mCategoryListener:Lcom/zhangdan/preferential/widget/HorizontalScrollBar$OnCategoryClickListener;

    .line 164
    return-void
.end method

.method public setupTags(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/MenuTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tags:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/MenuTag;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 176
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v5, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mItemsView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 183
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 184
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/preferential/data/model/MenuTag;

    .line 186
    .local v3, tag:Lcom/zhangdan/preferential/data/model/MenuTag;
    invoke-virtual {v3}, Lcom/zhangdan/preferential/data/model/MenuTag;->isToday()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 187
    iget-object v5, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030088

    invoke-virtual {v5, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 192
    .local v2, parent:Landroid/view/ViewGroup;
    :goto_2
    iget-boolean v5, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mNeedRedCircle:Z

    if-eqz v5, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/zhangdan/preferential/utils/DateUtils;->hasOpenedToday(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 193
    const v5, 0x7f0901d6

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 196
    :cond_2
    const v5, 0x7f0901d5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 197
    .local v4, tv:Landroid/widget/TextView;
    iget-object v5, v3, Lcom/zhangdan/preferential/data/model/MenuTag;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 199
    if-nez v0, :cond_3

    .line 200
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    :cond_3
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 204
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mItemWidth:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 205
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v5, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mItemsView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #parent:Landroid/view/ViewGroup;
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_4
    iget-object v5, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030087

    invoke-virtual {v5, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .restart local v2       #parent:Landroid/view/ViewGroup;
    goto :goto_2

    .line 211
    .end local v2           #parent:Landroid/view/ViewGroup;
    .end local v3           #tag:Lcom/zhangdan/preferential/data/model/MenuTag;
    :cond_5
    iget-object v5, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mDividerView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 212
    .restart local v1       #params:Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mItemWidth:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    mul-int/2addr v5, v6

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 213
    iget-object v5, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mDividerView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    invoke-direct {p0}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->initSelectorView()V

    .line 216
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_6

    .line 217
    invoke-direct {p0, v8, v8}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->translate(IZ)V

    .line 220
    :cond_6
    iput-boolean v8, p0, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->mHasTag:Z

    .line 221
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/HorizontalScrollBar;->requestLayout()V

    goto/16 :goto_0
.end method
