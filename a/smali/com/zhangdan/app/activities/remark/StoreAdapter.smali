.class public Lcom/zhangdan/app/activities/remark/StoreAdapter;
.super Landroid/widget/BaseAdapter;
.source "StoreAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/StoreInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/zhangdan/app/activities/remark/StoreAdapter;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/StoreAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/StoreAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 42
    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/StoreAdapter;->mList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-object v0

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/StoreAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/StoreAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 51
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 56
    move-object v6, p2

    .line 57
    .local v6, view:Landroid/view/View;
    if-nez v6, :cond_0

    .line 58
    iget-object v7, p0, Lcom/zhangdan/app/activities/remark/StoreAdapter;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 59
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f0300d6

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 61
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/remark/StoreAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 62
    .local v2, obj:Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 74
    :goto_0
    return-object v6

    :cond_1
    move-object v0, v2

    .line 64
    check-cast v0, Lcom/zhangdan/app/data/model/http/StoreInfo;

    .line 65
    .local v0, data:Lcom/zhangdan/app/data/model/http/StoreInfo;
    const v7, 0x7f0902f0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 66
    .local v5, tvStoreName:Landroid/widget/TextView;
    const v7, 0x7f0902f1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 67
    .local v4, tvAddr:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v3, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/StoreInfo;->getBrandName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 69
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/StoreInfo;->getShopName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/StoreInfo;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/StoreInfo;->getBrandName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/StoreInfo;->getShopName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public setStoreList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/StoreInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/StoreInfo;>;"
    iput-object p1, p0, Lcom/zhangdan/app/activities/remark/StoreAdapter;->mList:Ljava/util/List;

    .line 32
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/remark/StoreAdapter;->notifyDataSetChanged()V

    .line 33
    return-void
.end method
