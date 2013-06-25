.class Lcom/zhangdan/app/activities/main/MainContentFragment$2;
.super Ljava/lang/Object;
.source "MainContentFragment.java"

# interfaces
.implements Lcom/zhangdan/app/widget/ElasticView$OnElasticViewScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/main/MainContentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/main/MainContentFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$2;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishLayout()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method public onScroll(II)V
    .locals 3
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 317
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$2;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    const/high16 v2, -0x4180

    #setter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mRatio:F
    invoke-static {v1, v2}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$302(Lcom/zhangdan/app/activities/main/MainContentFragment;F)F

    .line 318
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$2;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mRatio:F
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$300(Lcom/zhangdan/app/activities/main/MainContentFragment;)F

    move-result v1

    int-to-float v2, p2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 319
    .local v0, delta:I
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$2;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$400(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$2;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mInitialTopMargin:I
    invoke-static {v2}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$500(Lcom/zhangdan/app/activities/main/MainContentFragment;)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 320
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$2;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mImgBg:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$600(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$2;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v2}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$400(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    return-void
.end method
