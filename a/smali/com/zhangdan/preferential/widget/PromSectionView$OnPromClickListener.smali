.class Lcom/zhangdan/preferential/widget/PromSectionView$OnPromClickListener;
.super Ljava/lang/Object;
.source "PromSectionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/widget/PromSectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPromClickListener"
.end annotation


# instance fields
.field private factory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

.field private mProm:Lcom/zhangdan/preferential/data/model/Promotion;

.field private manager:Lcom/novoda/imageloader/core/ImageManager;

.field final synthetic this$0:Lcom/zhangdan/preferential/widget/PromSectionView;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/widget/PromSectionView;Lcom/zhangdan/preferential/data/model/Promotion;Lcom/novoda/imageloader/core/model/ImageTagFactory;Lcom/novoda/imageloader/core/ImageManager;)V
    .locals 0
    .parameter
    .parameter "prom"
    .parameter "factory"
    .parameter "manager"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/zhangdan/preferential/widget/PromSectionView$OnPromClickListener;->this$0:Lcom/zhangdan/preferential/widget/PromSectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, Lcom/zhangdan/preferential/widget/PromSectionView$OnPromClickListener;->mProm:Lcom/zhangdan/preferential/data/model/Promotion;

    .line 74
    iput-object p3, p0, Lcom/zhangdan/preferential/widget/PromSectionView$OnPromClickListener;->factory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    .line 75
    iput-object p4, p0, Lcom/zhangdan/preferential/widget/PromSectionView$OnPromClickListener;->manager:Lcom/novoda/imageloader/core/ImageManager;

    .line 76
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PromSectionView$OnPromClickListener;->mProm:Lcom/zhangdan/preferential/data/model/Promotion;

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PromSectionView$OnPromClickListener;->this$0:Lcom/zhangdan/preferential/widget/PromSectionView;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/PromSectionView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/PromSectionView$OnPromClickListener;->mProm:Lcom/zhangdan/preferential/data/model/Promotion;

    iget-object v2, p0, Lcom/zhangdan/preferential/widget/PromSectionView$OnPromClickListener;->manager:Lcom/novoda/imageloader/core/ImageManager;

    invoke-static {v0, v1, v2}, Lcom/zhangdan/preferential/utils/ViewUtils;->showPromDialog(Landroid/content/Context;Lcom/zhangdan/preferential/data/model/Promotion;Lcom/novoda/imageloader/core/ImageManager;)V

    goto :goto_0
.end method
