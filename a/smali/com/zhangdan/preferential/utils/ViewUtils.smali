.class public Lcom/zhangdan/preferential/utils/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field public static final DEBUG_VERBOSE:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDashLine(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .parameter "context"

    .prologue
    .line 130
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 131
    .local v1, view:Landroid/widget/ImageView;
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 132
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    const v2, 0x7f02039f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    const v2, -0x993301

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 135
    return-object v1
.end method

.method public static getListHeader(Landroid/content/Context;I)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "height"

    .prologue
    .line 139
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 140
    .local v0, view:Landroid/view/View;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    return-object v0
.end method

.method public static getScreenWidth(Landroid/app/Activity;)I
    .locals 2
    .parameter "act"

    .prologue
    .line 160
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 161
    .local v0, displaymetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 162
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method public static setEnterTransition(Landroid/app/Activity;)V
    .locals 2
    .parameter "act"

    .prologue
    .line 166
    const v0, 0x7f04000d

    const v1, 0x7f04000e

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 167
    return-void
.end method

.method public static setReturnTransition(Landroid/app/Activity;)V
    .locals 2
    .parameter "act"

    .prologue
    .line 170
    const v0, 0x7f04000c

    const v1, 0x7f04000f

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 171
    return-void
.end method

.method public static setupCardDiscount(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 7
    .parameter "tv"
    .parameter "discount"

    .prologue
    const/4 v6, 0x0

    .line 115
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701ce

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 117
    .local v2, ssb:Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080071

    invoke-direct {v1, v3, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 118
    .local v1, span:Landroid/text/style/TextAppearanceSpan;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-virtual {v2, v1, v6, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 119
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method public static setupCrossLineText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 6
    .parameter "view"
    .parameter "str"

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 124
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 125
    .local v1, span:Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 126
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    return-void
.end method

.method public static setupDiscount(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 6
    .parameter "tv"
    .parameter "discount"

    .prologue
    const/4 v5, 0x0

    .line 97
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701ce

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 99
    .local v1, ssb:Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 100
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method

.method public static setupPrice(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "price"

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    .local v0, context:Landroid/content/Context;
    const v1, 0x7f080071

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08006f

    invoke-static {p0, p1, v1, v2, v3}, Lcom/zhangdan/preferential/utils/ViewUtils;->setupTextViewWithStyleSpan(Landroid/widget/TextView;Ljava/lang/String;ILjava/lang/String;I)V

    .line 61
    return-void
.end method

.method public static setupShopName(Landroid/widget/TextView;Lcom/zhangdan/preferential/data/model/Shop;)V
    .locals 2
    .parameter "shopView"
    .parameter "shop"

    .prologue
    .line 34
    const v0, 0x7f080067

    const v1, 0x7f08006f

    invoke-static {p0, p1, v0, v1}, Lcom/zhangdan/preferential/utils/ViewUtils;->setupShopName(Landroid/widget/TextView;Lcom/zhangdan/preferential/data/model/Shop;II)V

    .line 35
    return-void
.end method

.method private static setupShopName(Landroid/widget/TextView;Lcom/zhangdan/preferential/data/model/Shop;II)V
    .locals 5
    .parameter "shopView"
    .parameter "shop"
    .parameter "styleMain"
    .parameter "styleSub"

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/Shop;->getMainName()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, main:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/Shop;->getSubName()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, subName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    invoke-static {p0, v0, p2}, Lcom/zhangdan/preferential/utils/ViewUtils;->setupTextViewWithStyleSpan(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, sub:Ljava/lang/String;
    invoke-static {p0, v0, p2, v1, p3}, Lcom/zhangdan/preferential/utils/ViewUtils;->setupTextViewWithStyleSpan(Landroid/widget/TextView;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public static setupShopNameOrange(Landroid/widget/TextView;Lcom/zhangdan/preferential/data/model/Shop;)V
    .locals 2
    .parameter "shopView"
    .parameter "shop"

    .prologue
    .line 42
    const v0, 0x7f080073

    const v1, 0x7f080075

    invoke-static {p0, p1, v0, v1}, Lcom/zhangdan/preferential/utils/ViewUtils;->setupShopName(Landroid/widget/TextView;Lcom/zhangdan/preferential/data/model/Shop;II)V

    .line 43
    return-void
.end method

.method public static setupShopNameSeparately(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/zhangdan/preferential/data/model/Shop;)V
    .locals 2
    .parameter "mainView"
    .parameter "subView"
    .parameter "shop"

    .prologue
    .line 88
    invoke-virtual {p2}, Lcom/zhangdan/preferential/data/model/Shop;->getMainName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p2}, Lcom/zhangdan/preferential/data/model/Shop;->hasSubName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/zhangdan/preferential/data/model/Shop;->getSubName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setupShopNameSmall(Landroid/widget/TextView;Lcom/zhangdan/preferential/data/model/Shop;)V
    .locals 2
    .parameter "shopView"
    .parameter "shop"

    .prologue
    .line 38
    const v0, 0x7f08006f

    const v1, 0x7f080070

    invoke-static {p0, p1, v0, v1}, Lcom/zhangdan/preferential/utils/ViewUtils;->setupShopName(Landroid/widget/TextView;Lcom/zhangdan/preferential/data/model/Shop;II)V

    .line 39
    return-void
.end method

.method public static setupTags([Landroid/widget/TextView;[Ljava/lang/String;)V
    .locals 7
    .parameter "tags"
    .parameter "datas"

    .prologue
    .line 104
    move-object v0, p0

    .local v0, arr$:[Landroid/widget/TextView;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 105
    .local v4, tag:Landroid/widget/TextView;
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v4           #tag:Landroid/widget/TextView;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_1

    array-length v5, p0

    if-ge v1, v5, :cond_1

    .line 109
    aget-object v5, p0, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    aget-object v5, p0, v1

    aget-object v6, p1, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 112
    :cond_1
    return-void
.end method

.method public static setupTextViewWithStyleSpan(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 5
    .parameter "view"
    .parameter "main"
    .parameter "styleMain"

    .prologue
    .line 64
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 65
    .local v1, ssb:Landroid/text/SpannableStringBuilder;
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 66
    .local v0, mainSpan:Landroid/text/style/TextAppearanceSpan;
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 67
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method public static setupTextViewWithStyleSpan(Landroid/widget/TextView;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 7
    .parameter "view"
    .parameter "main"
    .parameter "styleMain"
    .parameter "sub"
    .parameter "styleSub"

    .prologue
    const/16 v6, 0x12

    .line 71
    new-instance v1, Landroid/text/SpannableStringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 72
    .local v1, ssb:Landroid/text/SpannableStringBuilder;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .end local v1           #ssb:Landroid/text/SpannableStringBuilder;
    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 78
    .restart local v1       #ssb:Landroid/text/SpannableStringBuilder;
    :goto_0
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, p2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 79
    .local v0, mainSpan:Landroid/text/style/TextAppearanceSpan;
    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v0, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 80
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 82
    .local v2, subSpan:Landroid/text/style/TextAppearanceSpan;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 84
    .end local v2           #subSpan:Landroid/text/style/TextAppearanceSpan;
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void

    .line 75
    .end local v0           #mainSpan:Landroid/text/style/TextAppearanceSpan;
    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .end local v1           #ssb:Landroid/text/SpannableStringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v1       #ssb:Landroid/text/SpannableStringBuilder;
    goto :goto_0
.end method

.method public static showPromDialog(Landroid/content/Context;Lcom/zhangdan/preferential/data/model/Promotion;Lcom/novoda/imageloader/core/ImageManager;)V
    .locals 8
    .parameter "context"
    .parameter "prom"
    .parameter "manager"

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 147
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x7f0a0049

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    .line 148
    .local v4, width:I
    const v5, 0x7f0a004a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    .line 149
    .local v2, height:I
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0300ec

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/widget/PromDialogContentView;

    .line 150
    .local v0, content:Lcom/zhangdan/preferential/widget/PromDialogContentView;
    invoke-virtual {v0, p1, p2}, Lcom/zhangdan/preferential/widget/PromDialogContentView;->setupProm(Lcom/zhangdan/preferential/data/model/Promotion;Lcom/novoda/imageloader/core/ImageManager;)V

    .line 151
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 153
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    .line 154
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 155
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/view/Window;->setLayout(II)V

    .line 156
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x7f0203a4

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    return-void
.end method
