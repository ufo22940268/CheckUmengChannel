.class public Lcom/zhangdan/preferential/widget/PromDialogContentView;
.super Landroid/widget/LinearLayout;
.source "PromDialogContentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCache:Landroid/graphics/Bitmap;

.field private mCallManager:Lcom/zhangdan/preferential/utils/CallManager;

.field private mDesView:Lcom/zhangdan/preferential/widget/PromDescriptionView;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mProm:Lcom/zhangdan/preferential/data/model/Promotion;

.field private mSendManager:Lcom/zhangdan/preferential/utils/SendManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Lcom/zhangdan/preferential/utils/CallManager;

    invoke-direct {v0, p1}, Lcom/zhangdan/preferential/utils/CallManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->mCallManager:Lcom/zhangdan/preferential/utils/CallManager;

    .line 35
    new-instance v0, Lcom/zhangdan/preferential/utils/SendManager;

    invoke-direct {v0, p1}, Lcom/zhangdan/preferential/utils/SendManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->mSendManager:Lcom/zhangdan/preferential/utils/SendManager;

    .line 36
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 64
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->mProm:Lcom/zhangdan/preferential/data/model/Promotion;

    if-nez v1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 73
    :pswitch_0
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->mCache:Landroid/graphics/Bitmap;

    .line 74
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->mSendManager:Lcom/zhangdan/preferential/utils/SendManager;

    iget-object v2, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->mProm:Lcom/zhangdan/preferential/data/model/Promotion;

    iget-object v3, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Lcom/zhangdan/preferential/utils/SendManager;->buildDialog(Lcom/zhangdan/preferential/data/model/Promotion;Landroid/graphics/Bitmap;)Landroid/app/Dialog;

    move-result-object v0

    .line 75
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 70
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_1
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->mCallManager:Lcom/zhangdan/preferential/utils/CallManager;

    iget-object v2, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->mProm:Lcom/zhangdan/preferential/data/model/Promotion;

    invoke-virtual {v2}, Lcom/zhangdan/preferential/data/model/Promotion;->getTels()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/utils/CallManager;->buildDialog([Ljava/lang/String;)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x7f090319
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 41
    const v0, 0x7f09015b

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->mPhotoView:Landroid/widget/ImageView;

    .line 42
    const v0, 0x7f090311

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/widget/PromDescriptionView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->mDesView:Lcom/zhangdan/preferential/widget/PromDescriptionView;

    .line 43
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->mPhotoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 45
    const v0, 0x7f090319

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v0, 0x7f09031a

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v0, 0x7f090080

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method

.method public setupProm(Lcom/zhangdan/preferential/data/model/Promotion;Lcom/novoda/imageloader/core/ImageManager;)V
    .locals 5
    .parameter "prom"
    .parameter "manager"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->mProm:Lcom/zhangdan/preferential/data/model/Promotion;

    .line 53
    invoke-virtual {p2}, Lcom/novoda/imageloader/core/ImageManager;->getCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;

    move-result-object v1

    iget-object v2, p1, Lcom/zhangdan/preferential/data/model/Promotion;->imageUrl:Ljava/lang/String;

    const/16 v3, 0x21b

    const/16 v4, 0xf1

    invoke-interface {v1, v2, v3, v4}, Lcom/novoda/imageloader/core/cache/CacheManager;->get(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 55
    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/utils/BitmapUtils;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/PromDialogContentView;->mDesView:Lcom/zhangdan/preferential/widget/PromDescriptionView;

    invoke-virtual {v1, p1}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->setupProm(Lcom/zhangdan/preferential/data/model/Promotion;)V

    .line 60
    return-void
.end method
