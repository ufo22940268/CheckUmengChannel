.class public Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;
.super Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;
.source "ShoppingSheetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mColorBlue:I

.field private mColorGreen:I

.field private mColorRed:I

.field private mImageManager:Lcom/novoda/imageloader/core/ImageManager;

.field private mImageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnLayoutClickListener:Landroid/view/View$OnClickListener;

.field private mSdf:Ljava/text/SimpleDateFormat;

.field private mSectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedBillIndex:I

.field private mSelectedSection:I

.field private mWeeks:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, -0x1

    .line 69
    invoke-direct {p0}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;-><init>()V

    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSdf:Ljava/text/SimpleDateFormat;

    .line 57
    iput v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSelectedSection:I

    .line 58
    iput v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSelectedBillIndex:I

    .line 230
    new-instance v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$1;-><init>(Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 282
    new-instance v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$2;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$2;-><init>(Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mOnLayoutClickListener:Landroid/view/View$OnClickListener;

    .line 70
    iput-object p1, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;

    .line 71
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSectionList:Ljava/util/List;

    .line 74
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mColorRed:I

    .line 75
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mColorGreen:I

    .line 76
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mColorBlue:I

    .line 78
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mWeeks:[Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;

    const v1, 0x7f020395

    invoke-static {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->newInstance(Landroid/content/Context;I)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mImageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    .line 81
    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->getImageLoader()Lcom/novoda/imageloader/core/ImageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mImageManager:Lcom/novoda/imageloader/core/ImageManager;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSelectedSection:I

    return v0
.end method

.method static synthetic access$102(Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSelectedSection:I

    return p1
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSelectedBillIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSelectedBillIndex:I

    return p1
.end method

.method private bindAmountView(Lcom/zhangdan/app/data/model/ShoppingSheetInfo;Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;)V
    .locals 4
    .parameter "data"
    .parameter "holder"

    .prologue
    .line 355
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getAmountMoney()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    iget-object v1, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvAmount:Landroid/widget/TextView;

    iget v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mColorGreen:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    iget-object v1, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvStarRating:Landroid/widget/TextView;

    iget v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mColorGreen:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 364
    :goto_0
    iget-object v1, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvAmount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getAmountMoney()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getStartLevel()I

    move-result v0

    .line 366
    .local v0, starLevel:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 367
    iget-object v1, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvStarRating:Landroid/widget/TextView;

    const v2, 0x7f07016c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 376
    :cond_0
    :goto_1
    return-void

    .line 361
    .end local v0           #starLevel:I
    :cond_1
    iget-object v1, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvAmount:Landroid/widget/TextView;

    iget v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mColorBlue:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    iget-object v1, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvStarRating:Landroid/widget/TextView;

    iget v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mColorRed:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 368
    .restart local v0       #starLevel:I
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 369
    iget-object v1, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvStarRating:Landroid/widget/TextView;

    const v2, 0x7f07016d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 370
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 371
    iget-object v1, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvStarRating:Landroid/widget/TextView;

    const v2, 0x7f07016e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 372
    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 373
    iget-object v1, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvStarRating:Landroid/widget/TextView;

    const v2, 0x7f07016f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 374
    :cond_5
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 375
    iget-object v1, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvStarRating:Landroid/widget/TextView;

    const v2, 0x7f070170

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private bindBtnViews(Lcom/zhangdan/app/data/model/ShoppingSheetInfo;Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;I)V
    .locals 4
    .parameter "data"
    .parameter "holder"
    .parameter "position"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 412
    iget-object v0, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->btnStar:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 413
    iget-object v0, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->btnRemark:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 414
    iget-object v0, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->btnYouhui:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 415
    iget-object v3, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->btnStar:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getIsStar()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f070140

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 416
    iget-object v3, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->btnStar:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getIsStar()I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f02015f

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 417
    iget-object v3, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgStar:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getIsStar()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 418
    iget-object v3, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgYouhui:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getDiscount()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 419
    iget-object v0, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->btnYouhui:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getDiscount()I

    move-result v3

    if-nez v3, :cond_4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    return-void

    .line 415
    :cond_0
    const v0, 0x7f070141

    goto :goto_0

    .line 416
    :cond_1
    const v0, 0x7f02015e

    goto :goto_1

    :cond_2
    move v0, v2

    .line 417
    goto :goto_2

    :cond_3
    move v0, v2

    .line 418
    goto :goto_3

    :cond_4
    move v1, v2

    .line 419
    goto :goto_4
.end method

.method private bindDividerLines(Lcom/zhangdan/app/data/model/ShoppingSheetInfo;Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;II)V
    .locals 5
    .parameter "data"
    .parameter "holder"
    .parameter "section"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 431
    invoke-virtual {p0, p3}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->getCountForSection(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p4, v1, :cond_1

    .line 432
    add-int/lit8 v1, p4, 0x1

    invoke-virtual {p0, p3, v1}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    .line 433
    .local v0, nextData:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getDay()I

    move-result v1

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getDay()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 434
    iget-object v1, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgDashLine:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    iget-object v1, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgFullLine:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 444
    .end local v0           #nextData:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    :goto_0
    return-void

    .line 437
    .restart local v0       #nextData:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    :cond_0
    iget-object v1, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgDashLine:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    iget-object v1, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgFullLine:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 441
    .end local v0           #nextData:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    :cond_1
    iget-object v1, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgDashLine:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    iget-object v1, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgFullLine:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindLeftViews(Lcom/zhangdan/app/data/model/ShoppingSheetInfo;Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;II)V
    .locals 11
    .parameter "data"
    .parameter "holder"
    .parameter "section"
    .parameter "position"

    .prologue
    .line 455
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getDay()I

    move-result v0

    .line 456
    .local v0, day:I
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getWeekDay()I

    move-result v4

    .line 457
    .local v4, weekDay:I
    if-nez p4, :cond_1

    .line 458
    iget-object v5, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvDay:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    iget-object v5, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvDay:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;

    const v7, 0x7f070173

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    add-int/lit8 v1, v4, -0x1

    .line 462
    .local v1, index:I
    iget-object v5, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvWeek:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 463
    iget-object v6, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvWeek:Landroid/widget/TextView;

    if-ltz v1, :cond_0

    iget-object v5, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mWeeks:[Ljava/lang/String;

    aget-object v5, v5, v1

    :goto_0
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    .end local v1           #index:I
    :goto_1
    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 482
    iget-object v5, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->contentLayout:Lcom/zhangdan/app/widget/ShoppingSheetLayout;

    const v6, 0x7f020359

    invoke-virtual {v5, v6}, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->setLineDrawable(I)V

    .line 483
    iget-object v5, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->layoutCategory:Landroid/widget/RelativeLayout;

    const v6, 0x7f020357

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 484
    iget-object v5, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvDay:Landroid/widget/TextView;

    const v6, 0x7f020358

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 485
    iget-object v5, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvWeek:Landroid/widget/TextView;

    iget v6, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mColorRed:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 498
    :goto_2
    return-void

    .line 463
    .restart local v1       #index:I
    :cond_0
    const-string v5, ""

    goto :goto_0

    .line 465
    .end local v1           #index:I
    :cond_1
    add-int/lit8 v5, p4, -0x1

    invoke-virtual {p0, p3, v5}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    .line 466
    .local v2, preData:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getDay()I

    move-result v3

    .line 467
    .local v3, preDay:I
    if-ne v0, v3, :cond_2

    .line 468
    iget-object v5, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvDay:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    iget-object v5, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvWeek:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 471
    :cond_2
    iget-object v5, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvDay:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    iget-object v5, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvDay:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;

    const v7, 0x7f070173

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v5, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvWeek:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    add-int/lit8 v1, v4, -0x1

    .line 476
    .restart local v1       #index:I
    iget-object v5, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvWeek:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    iget-object v6, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvWeek:Landroid/widget/TextView;

    if-ltz v1, :cond_3

    iget-object v5, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mWeeks:[Ljava/lang/String;

    aget-object v5, v5, v1

    :goto_3
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const-string v5, ""

    goto :goto_3

    .line 487
    .end local v1           #index:I
    .end local v2           #preData:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    .end local v3           #preDay:I
    :cond_4
    const/4 v5, 0x7

    if-ne v4, v5, :cond_5

    .line 488
    iget-object v5, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->contentLayout:Lcom/zhangdan/app/widget/ShoppingSheetLayout;

    const v6, 0x7f020354

    invoke-virtual {v5, v6}, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->setLineDrawable(I)V

    .line 489
    iget-object v5, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->layoutCategory:Landroid/widget/RelativeLayout;

    const v6, 0x7f020352

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 490
    iget-object v5, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvDay:Landroid/widget/TextView;

    const v6, 0x7f020353

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 491
    iget-object v5, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvWeek:Landroid/widget/TextView;

    iget v6, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mColorGreen:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 493
    :cond_5
    iget-object v5, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->contentLayout:Lcom/zhangdan/app/widget/ShoppingSheetLayout;

    const v6, 0x7f020351

    invoke-virtual {v5, v6}, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->setLineDrawable(I)V

    .line 494
    iget-object v5, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->layoutCategory:Landroid/widget/RelativeLayout;

    const v6, 0x7f02034f

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 495
    iget-object v5, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvDay:Landroid/widget/TextView;

    const v6, 0x7f020350

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 496
    iget-object v5, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvWeek:Landroid/widget/TextView;

    iget v6, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mColorBlue:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2
.end method

.method private bindRemarkView(Lcom/zhangdan/app/data/model/ShoppingSheetInfo;Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;)V
    .locals 9
    .parameter "data"
    .parameter "holder"

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 386
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getStoreName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvShoppingTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getDesciption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvShoppingTitle2:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 394
    :goto_0
    iget-object v0, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvBankInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f070171

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getBankName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getCardNo()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getRemark()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvRemark:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    iget-object v0, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgRemark:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 403
    :goto_1
    return-void

    .line 390
    :cond_0
    iget-object v0, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvShoppingTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getStoreName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvShoppingTitle2:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getDesciption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvShoppingTitle2:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 399
    :cond_1
    iget-object v0, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvRemark:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    iget-object v0, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvRemark:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0700a0

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getRemark()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v0, p2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgRemark:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private newItemView()Landroid/view/View;
    .locals 27

    .prologue
    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v24, v0

    const v25, 0x7f0300ce

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    .line 178
    .local v23, view:Landroid/view/View;
    new-instance v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;-><init>(Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;)V

    .line 179
    .local v4, holder:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;
    const v24, 0x7f0902cd

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 180
    .local v7, imgIcon:Landroid/widget/ImageView;
    const v24, 0x7f0902d0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 181
    .local v19, tvTitle:Landroid/widget/TextView;
    const v24, 0x7f0902d1

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 182
    .local v20, tvTitle2:Landroid/widget/TextView;
    const v24, 0x7f0902d2

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 183
    .local v10, imgWeather:Landroid/widget/ImageView;
    const v24, 0x7f0902d3

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 184
    .local v21, tvWeather:Landroid/widget/TextView;
    const v24, 0x7f0902d4

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 185
    .local v15, tvBankInfo:Landroid/widget/TextView;
    const v24, 0x7f0902d5

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 186
    .local v14, tvAmount:Landroid/widget/TextView;
    const v24, 0x7f0902d9

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 187
    .local v18, tvStar:Landroid/widget/TextView;
    const v24, 0x7f0902d6

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 188
    .local v11, imgYouhui:Landroid/widget/ImageView;
    const v24, 0x7f0902d7

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 189
    .local v8, imgRemark:Landroid/widget/ImageView;
    const v24, 0x7f0902d8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 190
    .local v9, imgStar:Landroid/widget/ImageView;
    const v24, 0x7f0902df

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 191
    .local v5, imgDashLine:Landroid/widget/ImageView;
    const v24, 0x7f0902e0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 192
    .local v6, imgFullLine:Landroid/widget/ImageView;
    const v24, 0x7f0902cb

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 193
    .local v16, tvDay:Landroid/widget/TextView;
    const v24, 0x7f0902da

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 194
    .local v17, tvRemark:Landroid/widget/TextView;
    const v24, 0x7f0902dc

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 195
    .local v2, btnStar:Landroid/widget/TextView;
    const v24, 0x7f0902de

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 196
    .local v1, btnRemark:Landroid/widget/TextView;
    const v24, 0x7f0902dd

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 197
    .local v3, btnYouhui:Landroid/widget/TextView;
    const v24, 0x7f0902db

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 198
    .local v12, layoutBtns:Landroid/view/View;
    const v24, 0x7f0902cc

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    .line 199
    .local v13, layoutCategory:Landroid/widget/RelativeLayout;
    const v24, 0x7f0902ce

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .local v22, tvWeek:Landroid/widget/TextView;
    move-object/from16 v24, v23

    .line 200
    check-cast v24, Lcom/zhangdan/app/widget/ShoppingSheetLayout;

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->contentLayout:Lcom/zhangdan/app/widget/ShoppingSheetLayout;

    .line 201
    iput-object v13, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->layoutCategory:Landroid/widget/RelativeLayout;

    .line 202
    iput-object v7, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgCategoryIcon:Landroid/widget/ImageView;

    .line 203
    move-object/from16 v0, v22

    iput-object v0, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvWeek:Landroid/widget/TextView;

    .line 204
    move-object/from16 v0, v19

    iput-object v0, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvShoppingTitle:Landroid/widget/TextView;

    .line 205
    move-object/from16 v0, v20

    iput-object v0, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvShoppingTitle2:Landroid/widget/TextView;

    .line 206
    iput-object v10, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgWeather:Landroid/widget/ImageView;

    .line 207
    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvWeather:Landroid/widget/TextView;

    .line 208
    iput-object v15, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvBankInfo:Landroid/widget/TextView;

    .line 209
    iput-object v14, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvAmount:Landroid/widget/TextView;

    .line 210
    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvStarRating:Landroid/widget/TextView;

    .line 211
    iput-object v11, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgYouhui:Landroid/widget/ImageView;

    .line 212
    iput-object v8, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgRemark:Landroid/widget/ImageView;

    .line 213
    iput-object v9, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgStar:Landroid/widget/ImageView;

    .line 214
    iput-object v5, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgDashLine:Landroid/widget/ImageView;

    .line 215
    iput-object v6, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgFullLine:Landroid/widget/ImageView;

    .line 216
    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvDay:Landroid/widget/TextView;

    .line 217
    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvRemark:Landroid/widget/TextView;

    .line 218
    iput-object v2, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->btnStar:Landroid/widget/TextView;

    .line 219
    iput-object v1, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->btnRemark:Landroid/widget/TextView;

    .line 220
    iput-object v3, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->btnYouhui:Landroid/widget/TextView;

    .line 221
    iput-object v12, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->layoutBtns:Landroid/view/View;

    .line 222
    iget-object v0, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->btnStar:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->btnRemark:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->btnYouhui:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, v4, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->contentLayout:Lcom/zhangdan/app/widget/ShoppingSheetLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mOnLayoutClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 227
    return-object v23
.end method


# virtual methods
.method public addSectionList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;>;"
    if-nez p1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSectionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public addShoppingSheetList(Ljava/util/List;)V
    .locals 19
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/ShoppingSheetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, shoppingList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/ShoppingSheetInfo;>;"
    if-nez p1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    .line 95
    .local v2, data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getTransDate()Ljava/lang/String;

    move-result-object v15

    .line 97
    .local v15, transDate:Ljava/lang/String;
    :try_start_0
    const-string v18, "-"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, dateArr:[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v4, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 99
    .local v17, year:I
    const/16 v18, 0x1

    aget-object v18, v4, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 100
    .local v10, month:I
    const/16 v18, 0x2

    aget-object v18, v4, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 102
    .local v5, day:I
    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setYear(I)V

    .line 103
    invoke-virtual {v2, v10}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setMonth(I)V

    .line 104
    invoke-virtual {v2, v5}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setDay(I)V

    .line 106
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 107
    .local v1, cal:Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSdf:Ljava/text/SimpleDateFormat;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 108
    .local v3, date:Ljava/util/Date;
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 109
    const/16 v18, 0x7

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .line 110
    .local v16, weekDay:I
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setWeekDay(I)V

    .line 112
    const/4 v7, 0x0

    .line 113
    .local v7, flag:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSectionList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;

    .line 114
    .local v13, section:Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;
    invoke-virtual {v13}, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->getYear()I

    move-result v12

    .line 115
    .local v12, secYear:I
    invoke-virtual {v13}, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->getMonth()I

    move-result v11

    .line 116
    .local v11, secMonth:I
    move/from16 v0, v17

    if-ne v0, v12, :cond_2

    if-ne v10, v11, :cond_2

    .line 117
    invoke-virtual {v13, v2}, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->addShoppingSheetInfo(Lcom/zhangdan/app/data/model/ShoppingSheetInfo;)V

    .line 118
    const/4 v7, 0x1

    .line 123
    .end local v11           #secMonth:I
    .end local v12           #secYear:I
    .end local v13           #section:Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;
    :cond_3
    if-nez v7, :cond_1

    .line 124
    new-instance v14, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;

    invoke-direct {v14}, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;-><init>()V

    .line 125
    .local v14, sectionInfo:Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->setYear(I)V

    .line 126
    invoke-virtual {v14, v10}, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->setMonth(I)V

    .line 127
    invoke-virtual {v14, v2}, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->addShoppingSheetInfo(Lcom/zhangdan/app/data/model/ShoppingSheetInfo;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSectionList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 130
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v3           #date:Ljava/util/Date;
    .end local v4           #dateArr:[Ljava/lang/String;
    .end local v5           #day:I
    .end local v7           #flag:Z
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #month:I
    .end local v14           #sectionInfo:Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;
    .end local v16           #weekDay:I
    .end local v17           #year:I
    :catch_0
    move-exception v6

    .line 131
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 135
    .end local v2           #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v15           #transDate:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public getCountForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSectionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->getShoppingSheetSize()I

    move-result v0

    return v0
.end method

.method public getCurrAllShoppingSheet()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/ShoppingSheetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/ShoppingSheetInfo;>;"
    iget-object v4, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSectionList:Ljava/util/List;

    if-nez v4, :cond_1

    .line 153
    :cond_0
    return-object v1

    .line 147
    :cond_1
    iget-object v4, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSectionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;

    .line 148
    .local v2, section:Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;
    invoke-virtual {v2}, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->getList()Ljava/util/List;

    move-result-object v3

    .line 149
    .local v3, shoppingList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/ShoppingSheetInfo;>;"
    if-eqz v3, :cond_2

    .line 150
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 1
    .parameter "section"
    .parameter "position"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSectionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;

    invoke-virtual {v0, p2}, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->getItem(I)Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(II)J
    .locals 2
    .parameter "section"
    .parameter "position"

    .prologue
    .line 163
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "section"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v6, 0x8

    const/4 v9, 0x0

    .line 306
    move-object v2, p3

    .line 307
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->newItemView()Landroid/view/View;

    move-result-object v2

    .line 310
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    .line 311
    .local v0, data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;

    .line 313
    .local v1, holder:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;
    invoke-direct {p0, v0, v1}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->bindRemarkView(Lcom/zhangdan/app/data/model/ShoppingSheetInfo;Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;)V

    .line 314
    invoke-direct {p0, v0, v1}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->bindAmountView(Lcom/zhangdan/app/data/model/ShoppingSheetInfo;Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;)V

    .line 315
    invoke-direct {p0, v0, v1, p2}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->bindBtnViews(Lcom/zhangdan/app/data/model/ShoppingSheetInfo;Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;I)V

    .line 316
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->bindDividerLines(Lcom/zhangdan/app/data/model/ShoppingSheetInfo;Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;II)V

    .line 318
    iget-object v4, v1, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgCategoryIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getCategoryIconResId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 319
    iget-object v4, v1, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgCategoryIcon:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 320
    iget-object v4, v1, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgRemark:Landroid/widget/ImageView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 321
    iget v4, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSelectedSection:I

    if-ne v4, p1, :cond_2

    iget v4, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSelectedBillIndex:I

    if-ne v4, p2, :cond_2

    .line 322
    iget-object v4, v1, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->layoutBtns:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 323
    iget-object v4, v1, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->contentLayout:Lcom/zhangdan/app/widget/ShoppingSheetLayout;

    const v5, 0x7f020355

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->setBackgroundResource(I)V

    .line 329
    :goto_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->bindLeftViews(Lcom/zhangdan/app/data/model/ShoppingSheetInfo;Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;II)V

    .line 331
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getWeatherInfo()Lcom/zhangdan/app/data/model/WeatherInfo;

    move-result-object v3

    .line 332
    .local v3, weatherInfo:Lcom/zhangdan/app/data/model/WeatherInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/WeatherInfo;->getImage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 333
    :cond_1
    iget-object v4, v1, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvWeather:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    iget-object v4, v1, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgWeather:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    iget-object v4, v1, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgWeather:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mImageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    const-string v6, ""

    iget-object v7, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 344
    :goto_1
    return-object v2

    .line 325
    .end local v3           #weatherInfo:Lcom/zhangdan/app/data/model/WeatherInfo;
    :cond_2
    iget-object v4, v1, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->layoutBtns:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 326
    iget-object v4, v1, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->contentLayout:Lcom/zhangdan/app/widget/ShoppingSheetLayout;

    invoke-virtual {v4, v9}, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 337
    .restart local v3       #weatherInfo:Lcom/zhangdan/app/data/model/WeatherInfo;
    :cond_3
    iget-object v4, v1, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvWeather:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    iget-object v4, v1, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgWeather:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    iget-object v4, v1, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->tvWeather:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;

    const v6, 0x7f070185

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/WeatherInfo;->getMinTemperature()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x1

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/WeatherInfo;->getMaxTemperature()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v4, v1, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgWeather:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mImageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/WeatherInfo;->getImage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 341
    iget-object v4, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mImageManager:Lcom/novoda/imageloader/core/ImageManager;

    invoke-virtual {v4}, Lcom/novoda/imageloader/core/ImageManager;->getLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v4

    iget-object v5, v1, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->imgWeather:Landroid/widget/ImageView;

    invoke-interface {v4, v5}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    goto :goto_1
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSectionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "section"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 503
    move-object v2, p2

    .line 504
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_0

    .line 505
    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0300d0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 507
    :cond_0
    const v3, 0x7f0902d0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 508
    .local v1, tvTitle:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSectionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 509
    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSectionList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;

    .line 510
    .local v0, data:Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;
    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;

    const v4, 0x7f070172

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->getYear()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->getMonth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    .end local v0           #data:Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;
    :cond_1
    return-object v2
.end method

.method public refreshShoopingInfo(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    .locals 17
    .parameter "autoId"
    .parameter "storeName"
    .parameter "remark"
    .parameter "categoryId"
    .parameter "userId"

    .prologue
    .line 547
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSectionList:Ljava/util/List;

    if-nez v14, :cond_0

    .line 548
    const/4 v12, 0x0

    .line 596
    :goto_0
    return-object v12

    .line 549
    :cond_0
    const/4 v12, 0x0

    .line 550
    .local v12, shoppingInfo:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mSectionList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;

    .line 551
    .local v11, section:Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;
    invoke-virtual {v11}, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->getList()Ljava/util/List;

    move-result-object v13

    .line 552
    .local v13, shoppingList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/ShoppingSheetInfo;>;"
    if-eqz v13, :cond_3

    .line 553
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    .line 554
    .local v4, data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getAutoId()J

    move-result-wide v14

    cmp-long v14, v14, p1

    if-nez v14, :cond_2

    .line 555
    move-object v12, v4

    .line 560
    .end local v4           #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_3
    if-eqz v12, :cond_1

    .line 563
    .end local v11           #section:Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;
    .end local v13           #shoppingList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/ShoppingSheetInfo;>;"
    :cond_4
    if-nez v12, :cond_5

    .line 564
    const/4 v12, 0x0

    goto :goto_0

    .line 565
    :cond_5
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setHasRemark(I)V

    .line 566
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setStoreName(Ljava/lang/String;)V

    .line 567
    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setRemark(Ljava/lang/String;)V

    .line 568
    move/from16 v0, p5

    invoke-virtual {v12, v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setCustomCategoryId(I)V

    .line 570
    if-eqz p5, :cond_8

    move/from16 v3, p5

    .line 571
    .local v3, currCategoryId:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v14, v3}, Lcom/zhangdan/app/data/db/util/ConsumeCategoryDbUtil;->queryCategoryName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 572
    .local v2, categoryName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v14, v3}, Lcom/zhangdan/app/data/db/util/ConsumeCategoryDbUtil;->queryCategory(Landroid/content/Context;I)Lcom/zhangdan/app/data/model/http/Category;

    move-result-object v1

    .line 573
    .local v1, category:Lcom/zhangdan/app/data/model/http/Category;
    const/4 v10, 0x0

    .line 574
    .local v10, parentId:I
    if-eqz v1, :cond_6

    .line 575
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/Category;->getCategotyName()Ljava/lang/String;

    move-result-object v2

    .line 576
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/Category;->getParntId()I

    move-result v10

    .line 577
    const/4 v14, -0x1

    if-ne v10, v14, :cond_6

    .line 578
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/Category;->getCategoryId()I

    move-result v10

    .line 580
    :cond_6
    invoke-static {v2}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 581
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;

    const v15, 0x7f070117

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 583
    :cond_7
    invoke-virtual {v12, v2}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setCategoryName(Ljava/lang/String;)V

    .line 584
    invoke-static {v10}, Lcom/zhangdan/app/data/CategoryIconRes;->getIconByParentId(I)I

    move-result v14

    invoke-virtual {v12, v14}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setCategoryIconResId(I)V

    .line 587
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v14, v12}, Lcom/zhangdan/app/data/db/util/ShoppingSheetDbUtil;->updateRemarkInfo(Landroid/content/Context;Lcom/zhangdan/app/data/model/ShoppingSheetInfo;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p6

    invoke-static {v14, v12, v0}, Lcom/zhangdan/app/data/db/util/ShoppingSheetRemarkDbUtil;->saveShoppingSheetRemark(Landroid/content/Context;Lcom/zhangdan/app/data/model/ShoppingSheetInfo;Ljava/lang/String;)J

    move-result-wide v8

    .line 589
    .local v8, localId:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p6

    invoke-static {v14, v0, v15}, Lcom/zhangdan/app/data/db/util/SyncTaskDbUtil;->saveShoppingRemarkSyncTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 591
    .local v7, intent:Landroid/content/Intent;
    const-string v14, "com.zhangdan.app.mail_account_update"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v14}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 570
    .end local v1           #category:Lcom/zhangdan/app/data/model/http/Category;
    .end local v2           #categoryName:Ljava/lang/String;
    .end local v3           #currCategoryId:I
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #localId:J
    .end local v10           #parentId:I
    :cond_8
    invoke-virtual {v12}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getCategoryId()I

    move-result v3

    goto/16 :goto_1
.end method
