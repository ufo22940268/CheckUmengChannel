.class Lcom/zhangdan/app/activities/main/MainContentFragment$5;
.super Ljava/lang/Object;
.source "MainContentFragment.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerOpenListener;


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
    .line 348
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$5;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$5;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mImgMask:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$800(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$5;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mImgMask:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$800(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    :cond_0
    return-void
.end method
