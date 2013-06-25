.class public Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShopDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/ShopDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShopDetailAdapter"
.end annotation


# instance fields
.field public final FIXED_TYPE_COUNT:I

.field public final FIXED_VIEW_COUNT:I

.field public final TYPE_ADDRESS:I

.field public final TYPE_CARD:I

.field public final TYPE_DIANPING:I

.field public final TYPE_GROUPON:I

.field public final TYPE_HEADER:I

.field public final TYPE_PROM:I

.field public final TYPE_SINA:I

.field public final TYPE_TEL:I

.field public final TYPE_TICKET:I

.field private addressCount:I

.field private cardCount:I

.field private dianpingCount:I

.field private grouponCount:I

.field private promCount:I

.field private shopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;

.field private sinaCount:I

.field private telCount:I

.field final synthetic this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

.field private ticketCount:I

.field private totalCount:I

.field private typeCount:I


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/ShopDetailActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 389
    iput-object p1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 391
    iput v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->FIXED_VIEW_COUNT:I

    .line 392
    iput v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->FIXED_TYPE_COUNT:I

    .line 394
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->TYPE_HEADER:I

    .line 395
    iput v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->TYPE_ADDRESS:I

    .line 396
    const/4 v0, 0x2

    iput v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->TYPE_TEL:I

    .line 397
    const/4 v0, 0x3

    iput v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->TYPE_TICKET:I

    .line 398
    const/4 v0, 0x4

    iput v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->TYPE_CARD:I

    .line 399
    const/4 v0, 0x5

    iput v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->TYPE_PROM:I

    .line 400
    const/4 v0, 0x6

    iput v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->TYPE_GROUPON:I

    .line 401
    const/4 v0, 0x7

    iput v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->TYPE_SINA:I

    .line 402
    const/16 v0, 0x8

    iput v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->TYPE_DIANPING:I

    .line 411
    const/16 v0, 0x9

    iput v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->typeCount:I

    .line 414
    iput v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->sinaCount:I

    .line 415
    iput v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->dianpingCount:I

    return-void
.end method

.method private getTypePos(II)I
    .locals 2
    .parameter "position"
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 529
    packed-switch p2, :pswitch_data_0

    .line 543
    :goto_0
    :pswitch_0
    return v0

    .line 533
    :pswitch_1
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->addressCount:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 535
    :pswitch_2
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->addressCount:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->telCount:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 537
    :pswitch_3
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->addressCount:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->telCount:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->ticketCount:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 539
    :pswitch_4
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->addressCount:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->telCount:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->ticketCount:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->cardCount:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 541
    :pswitch_5
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->addressCount:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->telCount:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->ticketCount:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->cardCount:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->promCount:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->totalCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 437
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 441
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 500
    if-ge p1, v0, :cond_1

    .line 501
    const/4 v0, 0x0

    .line 519
    :cond_0
    :goto_0
    return v0

    .line 502
    :cond_1
    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->addressCount:I

    add-int/lit8 v1, v1, 0x1

    if-lt p1, v1, :cond_0

    .line 504
    iget v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->addressCount:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->telCount:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    .line 505
    const/4 v0, 0x2

    goto :goto_0

    .line 506
    :cond_2
    iget v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->addressCount:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->telCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->ticketCount:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_3

    .line 507
    const/4 v0, 0x3

    goto :goto_0

    .line 508
    :cond_3
    iget v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->addressCount:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->telCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->ticketCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->cardCount:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_4

    .line 509
    const/4 v0, 0x4

    goto :goto_0

    .line 510
    :cond_4
    iget v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->addressCount:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->telCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->ticketCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->cardCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->promCount:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_5

    .line 511
    const/4 v0, 0x5

    goto :goto_0

    .line 512
    :cond_5
    iget v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->addressCount:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->telCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->ticketCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->cardCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->promCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->grouponCount:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_6

    .line 513
    const/4 v0, 0x6

    goto :goto_0

    .line 514
    :cond_6
    iget v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->addressCount:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->telCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->ticketCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->cardCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->promCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->grouponCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->sinaCount:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_7

    .line 515
    const/4 v0, 0x7

    goto :goto_0

    .line 516
    :cond_7
    iget v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->addressCount:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->telCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->ticketCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->cardCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->promCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->grouponCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->sinaCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->dianpingCount:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_8

    .line 517
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 519
    :cond_8
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 445
    move-object v3, p2

    .line 446
    .local v3, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->getItemViewType(I)I

    move-result v1

    .line 447
    .local v1, type:I
    if-nez v3, :cond_0

    .line 448
    packed-switch v1, :pswitch_data_0

    .line 478
    new-instance v3, Lcom/zhangdan/preferential/widget/CardSectionView;

    .end local v3           #view:Landroid/view/View;
    iget-object v4, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-direct {v3, v4}, Lcom/zhangdan/preferential/widget/CardSectionView;-><init>(Landroid/content/Context;)V

    .line 483
    .restart local v3       #view:Landroid/view/View;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 484
    invoke-direct {p0, p1, v1}, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->getTypePos(II)I

    move-result v2

    .local v2, typePos:I
    move-object v0, v3

    .line 485
    check-cast v0, Lcom/zhangdan/preferential/widget/DetailSectionView;

    .line 486
    .local v0, sectionView:Lcom/zhangdan/preferential/widget/DetailSectionView;
    const/4 v4, 0x7

    if-eq v1, v4, :cond_2

    .line 487
    iget-object v4, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->shopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;

    iget-object v5, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    iget-object v5, v5, Lcom/zhangdan/preferential/ShopDetailActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    iget-object v6, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    iget-object v6, v6, Lcom/zhangdan/preferential/ShopDetailActivity;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    invoke-virtual {v0, v4, v2, v5, v6}, Lcom/zhangdan/preferential/widget/DetailSectionView;->bindData(Lcom/zhangdan/preferential/data/model/ShopExtra;ILcom/novoda/imageloader/core/model/ImageTagFactory;Lcom/novoda/imageloader/core/ImageManager;)V

    .line 495
    .end local v0           #sectionView:Lcom/zhangdan/preferential/widget/DetailSectionView;
    .end local v2           #typePos:I
    :cond_1
    :goto_1
    return-object v3

    .line 450
    :pswitch_0
    iget-object v4, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    #getter for: Lcom/zhangdan/preferential/ShopDetailActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/zhangdan/preferential/ShopDetailActivity;->access$1500(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300cd

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 452
    goto :goto_0

    .line 454
    :pswitch_1
    new-instance v3, Lcom/zhangdan/preferential/widget/AddressSectionView;

    .end local v3           #view:Landroid/view/View;
    iget-object v4, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-direct {v3, v4}, Lcom/zhangdan/preferential/widget/AddressSectionView;-><init>(Landroid/content/Context;)V

    .line 455
    .restart local v3       #view:Landroid/view/View;
    goto :goto_0

    .line 457
    :pswitch_2
    new-instance v3, Lcom/zhangdan/preferential/widget/TelSectionView;

    .end local v3           #view:Landroid/view/View;
    iget-object v4, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-direct {v3, v4}, Lcom/zhangdan/preferential/widget/TelSectionView;-><init>(Landroid/content/Context;)V

    .line 458
    .restart local v3       #view:Landroid/view/View;
    goto :goto_0

    .line 460
    :pswitch_3
    new-instance v3, Lcom/zhangdan/preferential/widget/TicketSectionView;

    .end local v3           #view:Landroid/view/View;
    iget-object v4, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-direct {v3, v4}, Lcom/zhangdan/preferential/widget/TicketSectionView;-><init>(Landroid/content/Context;)V

    .line 461
    .restart local v3       #view:Landroid/view/View;
    goto :goto_0

    .line 463
    :pswitch_4
    new-instance v3, Lcom/zhangdan/preferential/widget/CardSectionView;

    .end local v3           #view:Landroid/view/View;
    iget-object v4, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-direct {v3, v4}, Lcom/zhangdan/preferential/widget/CardSectionView;-><init>(Landroid/content/Context;)V

    .line 464
    .restart local v3       #view:Landroid/view/View;
    goto :goto_0

    .line 466
    :pswitch_5
    new-instance v3, Lcom/zhangdan/preferential/widget/GrouponSectionView;

    .end local v3           #view:Landroid/view/View;
    iget-object v4, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-direct {v3, v4}, Lcom/zhangdan/preferential/widget/GrouponSectionView;-><init>(Landroid/content/Context;)V

    .line 467
    .restart local v3       #view:Landroid/view/View;
    goto :goto_0

    .line 469
    :pswitch_6
    new-instance v3, Lcom/zhangdan/preferential/widget/PromSectionView;

    .end local v3           #view:Landroid/view/View;
    iget-object v4, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-direct {v3, v4}, Lcom/zhangdan/preferential/widget/PromSectionView;-><init>(Landroid/content/Context;)V

    .line 470
    .restart local v3       #view:Landroid/view/View;
    goto :goto_0

    .line 472
    :pswitch_7
    new-instance v3, Lcom/zhangdan/preferential/widget/SinaSectionView;

    .end local v3           #view:Landroid/view/View;
    iget-object v4, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-direct {v3, v4}, Lcom/zhangdan/preferential/widget/SinaSectionView;-><init>(Landroid/content/Context;)V

    .line 473
    .restart local v3       #view:Landroid/view/View;
    goto :goto_0

    .line 475
    :pswitch_8
    new-instance v3, Lcom/zhangdan/preferential/widget/DianpingSectionView;

    .end local v3           #view:Landroid/view/View;
    iget-object v4, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-direct {v3, v4}, Lcom/zhangdan/preferential/widget/DianpingSectionView;-><init>(Landroid/content/Context;)V

    .line 476
    .restart local v3       #view:Landroid/view/View;
    goto :goto_0

    .restart local v0       #sectionView:Lcom/zhangdan/preferential/widget/DetailSectionView;
    .restart local v2       #typePos:I
    :cond_2
    move-object v4, v0

    .line 489
    check-cast v4, Lcom/zhangdan/preferential/widget/SinaSectionView;

    invoke-virtual {v4}, Lcom/zhangdan/preferential/widget/SinaSectionView;->hasBinded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 490
    iget-object v4, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->shopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;

    iget-object v5, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    iget-object v5, v5, Lcom/zhangdan/preferential/ShopDetailActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    iget-object v6, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    iget-object v6, v6, Lcom/zhangdan/preferential/ShopDetailActivity;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    invoke-virtual {v0, v4, v2, v5, v6}, Lcom/zhangdan/preferential/widget/DetailSectionView;->bindData(Lcom/zhangdan/preferential/data/model/ShopExtra;ILcom/novoda/imageloader/core/model/ImageTagFactory;Lcom/novoda/imageloader/core/ImageManager;)V

    goto :goto_1

    .line 448
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->typeCount:I

    return v0
.end method

.method public setShopExtra(Lcom/zhangdan/preferential/data/model/ShopExtra;)V
    .locals 4
    .parameter "extra"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 418
    iput-object p1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->shopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;

    .line 420
    iput v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->addressCount:I

    .line 421
    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->tels:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->telCount:I

    .line 422
    iget v0, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->ticketCount:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->ticketCount:I

    .line 423
    iget v0, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->cardCount:I

    iget-object v3, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->cardList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->cardCount:I

    .line 424
    iget v0, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->promotionCount:I

    iget-object v3, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->promList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->promCount:I

    .line 425
    iget v0, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->grouponCount:I

    iget-object v3, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->grouponList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->grouponCount:I

    .line 426
    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/ShopExtra;->hasWeiboId()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->sinaCount:I

    .line 427
    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/ShopExtra;->hasDianpingId()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->dianpingCount:I

    .line 429
    iget v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->addressCount:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->telCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->ticketCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->cardCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->promCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->grouponCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->sinaCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->dianpingCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->totalCount:I

    .line 430
    return-void

    :cond_0
    move v0, v2

    .line 422
    goto :goto_0

    :cond_1
    move v0, v2

    .line 426
    goto :goto_1

    :cond_2
    move v1, v2

    .line 427
    goto :goto_2
.end method
