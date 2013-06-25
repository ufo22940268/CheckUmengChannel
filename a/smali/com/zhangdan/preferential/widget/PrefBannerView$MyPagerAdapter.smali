.class Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PrefBannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/widget/PrefBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/zhangdan/preferential/widget/PrefBannerView;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/widget/PrefBannerView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter;->this$0:Lcom/zhangdan/preferential/widget/PrefBannerView;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 158
    iput-object p2, p0, Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter;->mContext:Landroid/content/Context;

    .line 159
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 173
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter;->this$0:Lcom/zhangdan/preferential/widget/PrefBannerView;

    #getter for: Lcom/zhangdan/preferential/widget/PrefBannerView;->mProms:Ljava/util/List;
    invoke-static {v0}, Lcom/zhangdan/preferential/widget/PrefBannerView;->access$000(Lcom/zhangdan/preferential/widget/PrefBannerView;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const v0, 0xfffffff

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .parameter "container"
    .parameter "position"

    .prologue
    .line 178
    iget-object v5, p0, Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter;->this$0:Lcom/zhangdan/preferential/widget/PrefBannerView;

    #calls: Lcom/zhangdan/preferential/widget/PrefBannerView;->getPromByPosition(I)Lcom/zhangdan/preferential/data/model/Promotion;
    invoke-static {v5, p2}, Lcom/zhangdan/preferential/widget/PrefBannerView;->access$100(Lcom/zhangdan/preferential/widget/PrefBannerView;I)Lcom/zhangdan/preferential/data/model/Promotion;

    move-result-object v3

    .line 180
    .local v3, prom:Lcom/zhangdan/preferential/data/model/Promotion;
    iget-object v5, p0, Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0300ea

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 182
    .local v4, view:Landroid/view/View;
    if-nez v3, :cond_0

    .line 202
    :goto_0
    return-object v4

    .line 185
    :cond_0
    const v5, 0x7f090311

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 186
    .local v1, desView:Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/zhangdan/preferential/data/model/Promotion;->bankSimpleName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/zhangdan/preferential/data/model/Promotion;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, des:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    const v5, 0x7f09015b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 190
    .local v2, imageView:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter;->this$0:Lcom/zhangdan/preferential/widget/PrefBannerView;

    iget-object v6, v3, Lcom/zhangdan/preferential/data/model/Promotion;->imageUrl:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Lcom/zhangdan/preferential/widget/PrefBannerView;->loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 193
    new-instance v5, Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter$1;

    invoke-direct {v5, p0, v3}, Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter$1;-><init>(Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter;Lcom/zhangdan/preferential/data/model/Promotion;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 168
    if-ne p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
