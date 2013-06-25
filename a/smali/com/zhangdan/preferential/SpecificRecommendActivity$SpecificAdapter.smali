.class public Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpecificRecommendActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/SpecificRecommendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpecificAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mProms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zhangdan/preferential/SpecificRecommendActivity;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;->this$0:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;->mProms:Ljava/util/List;

    .line 267
    return-void
.end method

.method private bindView(Landroid/view/View;I)V
    .locals 16
    .parameter "view"
    .parameter "pos"

    .prologue
    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter$ViewHolder;

    .line 239
    .local v2, holder:Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;->mProms:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zhangdan/preferential/data/model/Promotion;

    .line 240
    .local v6, prom:Lcom/zhangdan/preferential/data/model/Promotion;
    iget-object v10, v2, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter$ViewHolder;->description:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;->this$0:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    const v12, 0x7f0701d8

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v15, v6, Lcom/zhangdan/preferential/data/model/Promotion;->bankSimpleName:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    iget-object v15, v6, Lcom/zhangdan/preferential/data/model/Promotion;->title:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v10, v2, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter$ViewHolder;->range:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/zhangdan/preferential/data/model/Promotion;->getTimeRange()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;->this$0:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    iget-object v11, v2, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    iget-object v12, v6, Lcom/zhangdan/preferential/data/model/Promotion;->imageUrl:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 245
    iget-object v10, v2, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter$ViewHolder;->starView:Lcom/zhangdan/preferential/widget/CustomStarView;

    invoke-virtual {v6}, Lcom/zhangdan/preferential/data/model/Promotion;->getRate()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/zhangdan/preferential/widget/CustomStarView;->setRating(I)V

    .line 247
    iget-object v10, v2, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter$ViewHolder;->tagsView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 248
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;->this$0:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 249
    .local v4, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v6}, Lcom/zhangdan/preferential/data/model/Promotion;->getDiscountWeeks()[Ljava/lang/String;

    move-result-object v9

    .line 250
    .local v9, weeks:[Ljava/lang/String;
    move-object v1, v9

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v8, v1, v3

    .line 251
    .local v8, week:Ljava/lang/String;
    const v10, 0x7f030112

    iget-object v11, v2, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter$ViewHolder;->tagsView:Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 253
    .local v7, tv:Landroid/widget/TextView;
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v10, v2, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter$ViewHolder;->tagsView:Landroid/view/ViewGroup;

    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 250
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 256
    .end local v7           #tv:Landroid/widget/TextView;
    .end local v8           #week:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public addProms(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Promotion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, proms:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Promotion;>;"
    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;->mProms:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 215
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;->mProms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 206
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 218
    move-object v1, p2

    .line 219
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_0

    .line 220
    iget-object v2, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;->this$0:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300d2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 222
    new-instance v0, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter$ViewHolder;-><init>(Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;)V

    .line 223
    .local v0, holder:Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter$ViewHolder;
    const v2, 0x7f09015b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 224
    const v2, 0x7f090155

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter$ViewHolder;->description:Landroid/widget/TextView;

    .line 225
    const v2, 0x7f090274

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter$ViewHolder;->range:Landroid/widget/TextView;

    .line 226
    const v2, 0x7f09002e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter$ViewHolder;->dayOfWeek:Landroid/widget/TextView;

    .line 227
    const v2, 0x7f0902bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/preferential/widget/CustomStarView;

    iput-object v2, v0, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter$ViewHolder;->starView:Lcom/zhangdan/preferential/widget/CustomStarView;

    .line 228
    const v2, 0x7f0902bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter$ViewHolder;->tagsView:Landroid/view/ViewGroup;

    .line 229
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 232
    .end local v0           #holder:Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter$ViewHolder;
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;->bindView(Landroid/view/View;I)V

    .line 233
    return-object v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "view"
    .parameter "pos"
    .parameter "id"

    .prologue
    .line 260
    iget-object v2, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;->mProms:Ljava/util/List;

    add-int/lit8 v3, p3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/data/model/Promotion;

    .line 261
    .local v1, prom:Lcom/zhangdan/preferential/data/model/Promotion;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.zhangdan.preferential.MIX_VIEW_RECOMMEND_DETAIL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "prom_id"

    iget-object v3, v1, Lcom/zhangdan/preferential/data/model/Promotion;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    iget-object v2, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;->this$0:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-virtual {v2, v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->startActivity(Landroid/content/Intent;)V

    .line 264
    iget-object v2, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;->this$0:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-static {v2}, Lcom/zhangdan/preferential/utils/ViewUtils;->setEnterTransition(Landroid/app/Activity;)V

    .line 265
    return-void
.end method

.method public setProms(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Promotion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, proms:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Promotion;>;"
    iput-object p1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;->mProms:Ljava/util/List;

    .line 211
    return-void
.end method
