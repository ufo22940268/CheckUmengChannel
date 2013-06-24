.class public Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecommendFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/RecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecommendAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;
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

.field final synthetic this$0:Lcom/zhangdan/preferential/RecommendFragment;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/RecommendFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->mProms:Ljava/util/List;

    .line 444
    return-void
.end method

.method private bindView(Landroid/view/View;I)V
    .locals 16
    .parameter "view"
    .parameter "pos"

    .prologue
    .line 394
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;

    .line 396
    .local v2, holder:Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->mProms:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zhangdan/preferential/data/model/Promotion;

    .line 397
    .local v6, prom:Lcom/zhangdan/preferential/data/model/Promotion;
    iget-object v10, v2, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;->description:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    const v12, 0x7f0701d8

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v15, v6, Lcom/zhangdan/preferential/data/model/Promotion;->bankSimpleName:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    iget-object v15, v6, Lcom/zhangdan/preferential/data/model/Promotion;->title:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Lcom/zhangdan/preferential/RecommendFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v10, v2, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;->range:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/zhangdan/preferential/data/model/Promotion;->getTimeRange()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v10, v2, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    iget-object v11, v11, Lcom/zhangdan/preferential/RecommendFragment;->transImageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    invoke-virtual {v6}, Lcom/zhangdan/preferential/data/model/Promotion;->getBankIconUrl()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    invoke-virtual {v13}, Lcom/zhangdan/preferential/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 402
    iget-object v10, v2, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->loadImage(Landroid/widget/ImageView;)V

    .line 403
    iget-object v10, v2, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    new-instance v11, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v6}, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$1;-><init>(Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;Lcom/zhangdan/preferential/data/model/Promotion;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget-object v10, v2, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    iget-object v11, v6, Lcom/zhangdan/preferential/data/model/Promotion;->imageUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->setImageTag(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    #getter for: Lcom/zhangdan/preferential/RecommendFragment;->mHideImage:Z
    invoke-static {v10}, Lcom/zhangdan/preferential/RecommendFragment;->access$1700(Lcom/zhangdan/preferential/RecommendFragment;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 417
    iget-object v10, v2, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->loadImage(Landroid/widget/ImageView;)V

    .line 419
    :cond_0
    iget-object v10, v2, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;->starView:Lcom/zhangdan/preferential/widget/CustomStarView;

    invoke-virtual {v6}, Lcom/zhangdan/preferential/data/model/Promotion;->getRate()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/zhangdan/preferential/widget/CustomStarView;->setRating(I)V

    .line 421
    iget-object v10, v2, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;->tagsView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 422
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    invoke-virtual {v10}, Lcom/zhangdan/preferential/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 423
    .local v4, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v6}, Lcom/zhangdan/preferential/data/model/Promotion;->getDiscountWeeks()[Ljava/lang/String;

    move-result-object v9

    .line 424
    .local v9, weeks:[Ljava/lang/String;
    move-object v1, v9

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v8, v1, v3

    .line 425
    .local v8, week:Ljava/lang/String;
    const v10, 0x7f030110

    iget-object v11, v2, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;->tagsView:Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 427
    .local v7, tv:Landroid/widget/TextView;
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v10, v2, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;->tagsView:Landroid/view/ViewGroup;

    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 424
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 431
    .end local v7           #tv:Landroid/widget/TextView;
    .end local v8           #week:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    #getter for: Lcom/zhangdan/preferential/RecommendFragment;->mHideImage:Z
    invoke-static {v10}, Lcom/zhangdan/preferential/RecommendFragment;->access$1700(Lcom/zhangdan/preferential/RecommendFragment;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 432
    iget-object v10, v2, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    :cond_2
    return-void
.end method

.method private loadImage(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    iget-object v0, v0, Lcom/zhangdan/preferential/RecommendFragment;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/ImageManager;->getLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 442
    return-void
.end method

.method private setImageTag(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    iget-object v0, v0, Lcom/zhangdan/preferential/RecommendFragment;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 438
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
    .line 347
    .local p1, proms:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Promotion;>;"
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->mProms:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 348
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->mProms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->mProms:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 359
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 372
    move-object v1, p2

    .line 373
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_0

    .line 374
    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    invoke-virtual {v2}, Lcom/zhangdan/preferential/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300c7

    iget-object v4, p0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    #getter for: Lcom/zhangdan/preferential/RecommendFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/zhangdan/preferential/RecommendFragment;->access$1600(Lcom/zhangdan/preferential/RecommendFragment;)Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 377
    new-instance v0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;-><init>(Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;)V

    .line 378
    .local v0, holder:Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;
    const v2, 0x7f090125

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 379
    const v2, 0x7f09015b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 380
    const v2, 0x7f090155

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;->description:Landroid/widget/TextView;

    .line 381
    const v2, 0x7f090274

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;->range:Landroid/widget/TextView;

    .line 382
    const v2, 0x7f09002e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;->dayOfWeek:Landroid/widget/TextView;

    .line 383
    const v2, 0x7f0902bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/preferential/widget/CustomStarView;

    iput-object v2, v0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;->starView:Lcom/zhangdan/preferential/widget/CustomStarView;

    .line 384
    const v2, 0x7f0902bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;->tagsView:Landroid/view/ViewGroup;

    .line 385
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 388
    .end local v0           #holder:Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter$ViewHolder;
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->bindView(Landroid/view/View;I)V

    .line 390
    return-object v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "adapter"
    .parameter "view"
    .parameter "pos"
    .parameter "id"

    .prologue
    .line 364
    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->mProms:Ljava/util/List;

    add-int/lit8 v3, p3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/data/model/Promotion;

    .line 365
    .local v1, prom:Lcom/zhangdan/preferential/data/model/Promotion;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.zhangdan.preferential.MIX_VIEW_RECOMMEND_DETAIL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "prom_id"

    iget-object v3, v1, Lcom/zhangdan/preferential/data/model/Promotion;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    invoke-virtual {v2, v0}, Lcom/zhangdan/preferential/RecommendFragment;->startActivity(Landroid/content/Intent;)V

    .line 368
    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    invoke-virtual {v2}, Lcom/zhangdan/preferential/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/preferential/utils/ViewUtils;->setEnterTransition(Landroid/app/Activity;)V

    .line 369
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
    .line 343
    .local p1, proms:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Promotion;>;"
    iput-object p1, p0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->mProms:Ljava/util/List;

    .line 344
    return-void
.end method
