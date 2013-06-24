.class public Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter;
.super Landroid/widget/BaseAdapter;
.source "BankServiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private serviceContentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BankServiceContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BankServiceContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, serviceContentList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BankServiceContent;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter;->serviceContentList:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter;->serviceContentList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter;->serviceContentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter;->serviceContentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 38
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 43
    move-object v3, p2

    .line 44
    .local v3, view:Landroid/view/View;
    if-nez v3, :cond_0

    .line 45
    iget-object v4, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter;->context:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 47
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03009d

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 48
    new-instance v1, Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter$ViewHolder;-><init>(Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter;)V

    .line 49
    .local v1, holder:Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter$ViewHolder;
    const v4, 0x7f090211

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 50
    const v4, 0x7f090213

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter$ViewHolder;->tvDesc:Landroid/widget/TextView;

    .line 51
    const v4, 0x7f090212

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter$ViewHolder;->imgLock:Landroid/widget/ImageView;

    .line 52
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    .end local v1           #holder:Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter$ViewHolder;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter$ViewHolder;

    .line 55
    .restart local v1       #holder:Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/BankServiceContent;

    .line 56
    .local v0, data:Lcom/zhangdan/app/data/model/BankServiceContent;
    iget-object v4, v1, Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BankServiceContent;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v4, v1, Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter$ViewHolder;->tvDesc:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BankServiceContent;->getDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BankServiceContent;->getFlag()I

    move-result v4

    if-nez v4, :cond_2

    .line 59
    iget-object v4, v1, Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter$ViewHolder;->imgLock:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    :cond_1
    :goto_0
    return-object v3

    .line 60
    :cond_2
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BankServiceContent;->getFlag()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 61
    iget-object v4, v1, Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter$ViewHolder;->imgLock:Landroid/widget/ImageView;

    const v5, 0x7f0200cc

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 62
    :cond_3
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BankServiceContent;->getFlag()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 63
    iget-object v4, v1, Lcom/zhangdan/app/activities/bankservice/BankServiceAdapter$ViewHolder;->imgLock:Landroid/widget/ImageView;

    const v5, 0x7f0200ce

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method
