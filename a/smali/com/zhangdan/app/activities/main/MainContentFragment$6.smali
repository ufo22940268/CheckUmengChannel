.class Lcom/zhangdan/app/activities/main/MainContentFragment$6;
.super Ljava/lang/Object;
.source "MainContentFragment.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerCloseListener;


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
    .line 356
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$6;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$6;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mImgMask:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$800(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$6;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mImgMask:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$800(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    :cond_0
    return-void
.end method
