.class Lcom/zhangdan/preferential/widget/BrandContainer$1;
.super Ljava/lang/Object;
.source "BrandContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/preferential/widget/BrandContainer;->bindBrands(Ljava/util/List;Lcom/novoda/imageloader/core/ImageManager;Lcom/novoda/imageloader/core/model/ImageTagFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/widget/BrandContainer;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/widget/BrandContainer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/zhangdan/preferential/widget/BrandContainer$1;->this$0:Lcom/zhangdan/preferential/widget/BrandContainer;

    iput p2, p0, Lcom/zhangdan/preferential/widget/BrandContainer$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BrandContainer$1;->this$0:Lcom/zhangdan/preferential/widget/BrandContainer;

    iget v1, p0, Lcom/zhangdan/preferential/widget/BrandContainer$1;->val$index:I

    #calls: Lcom/zhangdan/preferential/widget/BrandContainer;->moveTo(I)V
    invoke-static {v0, v1}, Lcom/zhangdan/preferential/widget/BrandContainer;->access$000(Lcom/zhangdan/preferential/widget/BrandContainer;I)V

    .line 51
    return-void
.end method
