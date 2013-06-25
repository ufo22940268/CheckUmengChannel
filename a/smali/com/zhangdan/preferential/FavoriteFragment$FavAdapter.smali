.class public Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;
.super Landroid/widget/BaseAdapter;
.source "FavoriteFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/FavoriteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FavAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$PromViewHolder;,
        Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;
    }
.end annotation


# instance fields
.field private FIX_COUNT:I

.field private final VIEW_TYPE_HEADER:I

.field private final VIEW_TYPE_PROM:I

.field private final VIEW_TYPE_SHOP:I

.field private proms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field private shops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Shop;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zhangdan/preferential/FavoriteFragment;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/FavoriteFragment;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 200
    iput-object p1, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 202
    iput v1, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->FIX_COUNT:I

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->VIEW_TYPE_HEADER:I

    .line 204
    iput v1, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->VIEW_TYPE_SHOP:I

    .line 205
    const/4 v0, 0x2

    iput v0, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->VIEW_TYPE_PROM:I

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->shops:Ljava/util/List;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->proms:Ljava/util/List;

    .line 384
    return-void
.end method

.method private bindHeader(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    return-void
.end method

.method private bindProm(Landroid/view/View;Lcom/zhangdan/preferential/data/model/Promotion;)V
    .locals 15
    .parameter "view"
    .parameter "prom"

    .prologue
    .line 327
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$PromViewHolder;

    .line 328
    .local v2, holder:Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$PromViewHolder;
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/zhangdan/preferential/data/model/Promotion;->bankSimpleName:Ljava/lang/String;

    .line 329
    .local v6, sub:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/zhangdan/preferential/data/model/Promotion;->bankSimpleName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 330
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 332
    :cond_0
    iget-object v9, v2, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$PromViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/zhangdan/preferential/data/model/Promotion;->title:Ljava/lang/String;

    const v11, 0x7f080073

    const v12, 0x7f080074

    invoke-static {v9, v10, v11, v6, v12}, Lcom/zhangdan/preferential/utils/ViewUtils;->setupTextViewWithStyleSpan(Landroid/widget/TextView;Ljava/lang/String;ILjava/lang/String;I)V

    .line 334
    iget-object v9, v2, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$PromViewHolder;->timeRange:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    invoke-virtual {v10}, Lcom/zhangdan/preferential/FavoriteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const v11, 0x7f0701f2

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/preferential/data/model/Promotion;->getTimeRange()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v9, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    #getter for: Lcom/zhangdan/preferential/FavoriteFragment;->mHideImage:Z
    invoke-static {v9}, Lcom/zhangdan/preferential/FavoriteFragment;->access$1100(Lcom/zhangdan/preferential/FavoriteFragment;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 337
    iget-object v9, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    iget-object v10, v2, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$PromViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/zhangdan/preferential/data/model/Promotion;->imageUrl:Ljava/lang/String;

    #calls: Lcom/zhangdan/preferential/FavoriteFragment;->loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V
    invoke-static {v9, v10, v11}, Lcom/zhangdan/preferential/FavoriteFragment;->access$1200(Lcom/zhangdan/preferential/FavoriteFragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 340
    :cond_1
    iget-object v9, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    invoke-virtual {v9}, Lcom/zhangdan/preferential/FavoriteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 341
    .local v4, inflater:Landroid/view/LayoutInflater;
    iget-object v9, v2, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$PromViewHolder;->discountWeeks:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 342
    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/preferential/data/model/Promotion;->getDiscountWeeks()[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v8, v1, v3

    .line 343
    .local v8, week:Ljava/lang/String;
    const v9, 0x7f030112

    iget-object v10, v2, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$PromViewHolder;->discountWeeks:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v4, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 345
    .local v7, tv:Landroid/widget/TextView;
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v9, v2, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$PromViewHolder;->discountWeeks:Landroid/view/ViewGroup;

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 342
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 349
    .end local v7           #tv:Landroid/widget/TextView;
    .end local v8           #week:Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    #getter for: Lcom/zhangdan/preferential/FavoriteFragment;->mHideImage:Z
    invoke-static {v9}, Lcom/zhangdan/preferential/FavoriteFragment;->access$1100(Lcom/zhangdan/preferential/FavoriteFragment;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 350
    iget-object v9, v2, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$PromViewHolder;->photo:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    :cond_3
    return-void
.end method

.method private bindShop(Landroid/view/View;Lcom/zhangdan/preferential/data/model/Shop;)V
    .locals 6
    .parameter "view"
    .parameter "shop"

    .prologue
    const/16 v5, 0x8

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;

    .line 305
    .local v0, holder:Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;
    iget-object v2, v0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;->name:Landroid/widget/TextView;

    invoke-static {v2, p2}, Lcom/zhangdan/preferential/utils/ViewUtils;->setupShopNameOrange(Landroid/widget/TextView;Lcom/zhangdan/preferential/data/model/Shop;)V

    .line 306
    iget-object v2, v0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;->address:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/zhangdan/preferential/data/model/Shop;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v2, v0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;->distance:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    #getter for: Lcom/zhangdan/preferential/FavoriteFragment;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;
    invoke-static {v3}, Lcom/zhangdan/preferential/FavoriteFragment;->access$1000(Lcom/zhangdan/preferential/FavoriteFragment;)Lcom/zhangdan/preferential/utils/PositionProvider;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/zhangdan/preferential/utils/PositionProvider;->getReadableDistance(Lcom/zhangdan/preferential/data/model/Shop;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v2, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    #getter for: Lcom/zhangdan/preferential/FavoriteFragment;->mHideImage:Z
    invoke-static {v2}, Lcom/zhangdan/preferential/FavoriteFragment;->access$1100(Lcom/zhangdan/preferential/FavoriteFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    iget-object v3, v0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;->photo:Landroid/widget/ImageView;

    iget-object v4, p2, Lcom/zhangdan/preferential/data/model/Shop;->imageUrl:Ljava/lang/String;

    #calls: Lcom/zhangdan/preferential/FavoriteFragment;->loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/zhangdan/preferential/FavoriteFragment;->access$1200(Lcom/zhangdan/preferential/FavoriteFragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 312
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 313
    iget-object v2, p2, Lcom/zhangdan/preferential/data/model/Shop;->tags:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 314
    iget-object v2, v0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;->tags:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-object v3, p2, Lcom/zhangdan/preferential/data/model/Shop;->tags:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v2, v0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;->tags:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    :cond_1
    iget-object v2, v0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;->tags:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 321
    :cond_2
    iget-object v2, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    #getter for: Lcom/zhangdan/preferential/FavoriteFragment;->mHideImage:Z
    invoke-static {v2}, Lcom/zhangdan/preferential/FavoriteFragment;->access$1100(Lcom/zhangdan/preferential/FavoriteFragment;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 322
    iget-object v2, v0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    :cond_3
    return-void
.end method

.method private buildPromHolder(Landroid/view/ViewGroup;)Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$PromViewHolder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 367
    new-instance v0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$PromViewHolder;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$PromViewHolder;-><init>(Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;)V

    .line 368
    .local v0, holder:Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$PromViewHolder;
    const v1, 0x7f09015b

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$PromViewHolder;->photo:Landroid/widget/ImageView;

    .line 369
    const v1, 0x7f090151

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$PromViewHolder;->name:Landroid/widget/TextView;

    .line 370
    const v1, 0x7f090274

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$PromViewHolder;->timeRange:Landroid/widget/TextView;

    .line 371
    const v1, 0x7f090275

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$PromViewHolder;->discountWeeks:Landroid/view/ViewGroup;

    .line 372
    return-object v0
.end method

.method private buildShopHolder(Landroid/view/ViewGroup;)Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;
    .locals 4
    .parameter "parent"

    .prologue
    .line 355
    new-instance v0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;-><init>(Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;)V

    .line 356
    .local v0, holder:Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;
    const v1, 0x7f09015b

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;->photo:Landroid/widget/ImageView;

    .line 357
    const v1, 0x7f090151

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;->name:Landroid/widget/TextView;

    .line 358
    iget-object v2, v0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;->tags:[Landroid/widget/TextView;

    const/4 v3, 0x0

    const v1, 0x7f0902f4

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v3

    .line 359
    iget-object v2, v0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;->tags:[Landroid/widget/TextView;

    const/4 v3, 0x1

    const v1, 0x7f0902f3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v3

    .line 360
    iget-object v2, v0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;->tags:[Landroid/widget/TextView;

    const/4 v3, 0x2

    const v1, 0x7f0902f2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v3

    .line 361
    const v1, 0x7f090277

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;->address:Landroid/widget/TextView;

    .line 362
    const v1, 0x7f090278

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;->distance:Landroid/widget/TextView;

    .line 363
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    #getter for: Lcom/zhangdan/preferential/FavoriteFragment;->mMode:I
    invoke-static {v0}, Lcom/zhangdan/preferential/FavoriteFragment;->access$800(Lcom/zhangdan/preferential/FavoriteFragment;)I

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget v0, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->FIX_COUNT:I

    iget-object v1, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->shops:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 239
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->FIX_COUNT:I

    iget-object v1, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->proms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 248
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    const/4 v0, 0x0

    .line 217
    :goto_0
    return v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    #getter for: Lcom/zhangdan/preferential/FavoriteFragment;->mMode:I
    invoke-static {v0}, Lcom/zhangdan/preferential/FavoriteFragment;->access$800(Lcom/zhangdan/preferential/FavoriteFragment;)I

    move-result v0

    if-nez v0, :cond_1

    .line 215
    const/4 v0, 0x1

    goto :goto_0

    .line 217
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 267
    move-object v1, p2

    .line 268
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->getItemViewType(I)I

    move-result v0

    .line 269
    .local v0, type:I
    if-nez v1, :cond_0

    .line 270
    packed-switch v0, :pswitch_data_0

    .line 286
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 287
    invoke-direct {p0, v1}, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->bindHeader(Landroid/view/View;)V

    .line 296
    :goto_1
    return-object v1

    .line 272
    :pswitch_0
    iget-object v2, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    #getter for: Lcom/zhangdan/preferential/FavoriteFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/zhangdan/preferential/FavoriteFragment;->access$900(Lcom/zhangdan/preferential/FavoriteFragment;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030072

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 273
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0x50

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 276
    :pswitch_1
    iget-object v2, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    #getter for: Lcom/zhangdan/preferential/FavoriteFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/zhangdan/preferential/FavoriteFragment;->access$900(Lcom/zhangdan/preferential/FavoriteFragment;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300b1

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 277
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->buildShopHolder(Landroid/view/ViewGroup;)Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$ShopViewHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 280
    :pswitch_2
    iget-object v2, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    #getter for: Lcom/zhangdan/preferential/FavoriteFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/zhangdan/preferential/FavoriteFragment;->access$900(Lcom/zhangdan/preferential/FavoriteFragment;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300b0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 281
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->buildPromHolder(Landroid/view/ViewGroup;)Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter$PromViewHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 289
    :cond_1
    iget-object v2, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    #getter for: Lcom/zhangdan/preferential/FavoriteFragment;->mMode:I
    invoke-static {v2}, Lcom/zhangdan/preferential/FavoriteFragment;->access$800(Lcom/zhangdan/preferential/FavoriteFragment;)I

    move-result v2

    if-nez v2, :cond_2

    .line 290
    iget-object v2, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->shops:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/preferential/data/model/Shop;

    invoke-direct {p0, v1, v2}, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->bindShop(Landroid/view/View;Lcom/zhangdan/preferential/data/model/Shop;)V

    goto :goto_1

    .line 292
    :cond_2
    iget-object v2, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->proms:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/preferential/data/model/Promotion;

    invoke-direct {p0, v1, v2}, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->bindProm(Landroid/view/View;Lcom/zhangdan/preferential/data/model/Promotion;)V

    goto :goto_1

    .line 270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x3

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "parent"
    .parameter "view"
    .parameter "pos"
    .parameter "id"

    .prologue
    .line 253
    iget-object v3, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    #getter for: Lcom/zhangdan/preferential/FavoriteFragment;->mMode:I
    invoke-static {v3}, Lcom/zhangdan/preferential/FavoriteFragment;->access$800(Lcom/zhangdan/preferential/FavoriteFragment;)I

    move-result v3

    if-nez v3, :cond_0

    .line 254
    iget-object v3, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->shops:Ljava/util/List;

    add-int/lit8 v4, p3, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/preferential/data/model/Shop;

    .line 255
    .local v2, shop:Lcom/zhangdan/preferential/data/model/Shop;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.zhangdan.preferential.MIX_VIEW_SHOP_DETAIL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "shop_id"

    iget-object v4, v2, Lcom/zhangdan/preferential/data/model/Shop;->id:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    iget-object v3, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    invoke-virtual {v3, v0}, Lcom/zhangdan/preferential/FavoriteFragment;->startActivity(Landroid/content/Intent;)V

    .line 264
    .end local v2           #shop:Lcom/zhangdan/preferential/data/model/Shop;
    :goto_0
    return-void

    .line 259
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->proms:Ljava/util/List;

    add-int/lit8 v4, p3, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/data/model/Promotion;

    .line 260
    .local v1, prom:Lcom/zhangdan/preferential/data/model/Promotion;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.zhangdan.preferential.MIX_VIEW_RECOMMEND_DETAIL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "prom_id"

    iget-object v4, v1, Lcom/zhangdan/preferential/data/model/Promotion;->id:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    iget-object v3, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    invoke-virtual {v3, v0}, Lcom/zhangdan/preferential/FavoriteFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
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
    .line 227
    .local p1, proms:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Promotion;>;"
    iput-object p1, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->proms:Ljava/util/List;

    .line 228
    return-void
.end method

.method public setShops(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Shop;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, shops:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    iput-object p1, p0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->shops:Ljava/util/List;

    .line 224
    return-void
.end method
