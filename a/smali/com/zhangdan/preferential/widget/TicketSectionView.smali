.class public Lcom/zhangdan/preferential/widget/TicketSectionView;
.super Lcom/zhangdan/preferential/widget/DetailSectionView;
.source "TicketSectionView.java"


# static fields
.field public static final INDEX_OF_DIANPING:I = 0x1

.field public static final INDEX_OF_DINGDING:I


# instance fields
.field private mViews:[Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/DetailSectionView;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/TicketSectionView;->mViews:[Landroid/view/ViewGroup;

    .line 36
    const v0, 0x7f0201de

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/TicketSectionView;->setIcon(I)V

    .line 37
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TicketSectionView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03010a

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TicketSectionView;->getContentView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/TicketSectionView;->mViews:[Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const v0, 0x7f090338

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/TicketSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    aput-object v0, v1, v2

    .line 39
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/TicketSectionView;->mViews:[Landroid/view/ViewGroup;

    const/4 v2, 0x1

    const v0, 0x7f09033a

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/TicketSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    aput-object v0, v1, v2

    .line 40
    return-void
.end method

.method private addNewType(Landroid/view/ViewGroup;Ljava/lang/String;ILcom/novoda/imageloader/core/model/ImageTagFactory;Lcom/novoda/imageloader/core/ImageManager;)V
    .locals 3
    .parameter "parent"
    .parameter "url"
    .parameter "count"
    .parameter "factory"
    .parameter "manager"

    .prologue
    .line 75
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 76
    const v2, 0x7f090125

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 77
    .local v1, icon:Landroid/widget/ImageView;
    invoke-virtual {p0, v1, p2, p4, p5}, Lcom/zhangdan/preferential/widget/TicketSectionView;->loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;Lcom/novoda/imageloader/core/model/ImageTagFactory;Lcom/novoda/imageloader/core/ImageManager;)V

    .line 79
    const v2, 0x7f090339

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    .local v0, countView:Landroid/widget/TextView;
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method private buildIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "tel"

    .prologue
    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 85
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 87
    return-object v0
.end method

.method private configureListener(Landroid/view/View;Lcom/zhangdan/preferential/data/model/ShopExtra;Ljava/lang/String;I)V
    .locals 3
    .parameter "view"
    .parameter "extra"
    .parameter "url"
    .parameter "count"

    .prologue
    .line 64
    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zhangdan.preferential.MIX_ACTION_VEW_SINGLE_TICKET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    :goto_0
    new-instance v1, Lcom/zhangdan/preferential/widget/DetailSectionView$OnLaunchIntentListener;

    invoke-direct {v1, p0, v0}, Lcom/zhangdan/preferential/widget/DetailSectionView$OnLaunchIntentListener;-><init>(Lcom/zhangdan/preferential/widget/DetailSectionView;Landroid/content/Intent;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void

    .line 68
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zhangdan.preferential.MIX_VEW_MULTIBLE_TICKETS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "shop_id"

    iget-object v2, p2, Lcom/zhangdan/preferential/data/model/ShopExtra;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public bindData(Lcom/zhangdan/preferential/data/model/ShopExtra;ILcom/novoda/imageloader/core/model/ImageTagFactory;Lcom/novoda/imageloader/core/ImageManager;)V
    .locals 10
    .parameter "extra"
    .parameter "typePos"
    .parameter "factory"
    .parameter "manager"

    .prologue
    const/16 v4, 0x8

    const/4 v9, 0x1

    .line 44
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TicketSectionView;->mViews:[Landroid/view/ViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TicketSectionView;->mViews:[Landroid/view/ViewGroup;

    aget-object v0, v0, v9

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 47
    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->ticketCounter:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 48
    .local v8, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 49
    .local v6, i:I
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .local v7, i:I
    const/4 v0, 0x2

    if-ge v6, v0, :cond_2

    .line 50
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 51
    .local v2, url:Ljava/lang/String;
    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->ticketCounter:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 52
    .local v3, count:I
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TicketSectionView;->mViews:[Landroid/view/ViewGroup;

    aget-object v1, v0, v7

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/zhangdan/preferential/widget/TicketSectionView;->addNewType(Landroid/view/ViewGroup;Ljava/lang/String;ILcom/novoda/imageloader/core/model/ImageTagFactory;Lcom/novoda/imageloader/core/ImageManager;)V

    .line 53
    if-nez v7, :cond_1

    .line 54
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TicketSectionView;->mViews:[Landroid/view/ViewGroup;

    aget-object v0, v0, v7

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/zhangdan/preferential/widget/TicketSectionView;->configureListener(Landroid/view/View;Lcom/zhangdan/preferential/data/model/ShopExtra;Ljava/lang/String;I)V

    :cond_0
    :goto_1
    move v6, v7

    .line 59
    .end local v7           #i:I
    .restart local v6       #i:I
    goto :goto_0

    .line 55
    .end local v6           #i:I
    .restart local v7       #i:I
    :cond_1
    if-ne v7, v9, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://m.dianping.com/shop/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->dianpingId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TicketSectionView;->mViews:[Landroid/view/ViewGroup;

    aget-object v0, v0, v7

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/zhangdan/preferential/widget/TicketSectionView;->configureListener(Landroid/view/View;Lcom/zhangdan/preferential/data/model/ShopExtra;Ljava/lang/String;I)V

    goto :goto_1

    .end local v2           #url:Ljava/lang/String;
    .end local v3           #count:I
    :cond_2
    move v6, v7

    .line 60
    .end local v7           #i:I
    .restart local v6       #i:I
    :cond_3
    return-void
.end method
