.class Lcom/zhangdan/app/activities/main/MainContentFragment$4;
.super Ljava/lang/Object;
.source "MainContentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 341
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$4;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$4;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mSlidingDrawer:Landroid/widget/SlidingDrawer;
    invoke-static {v0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$700(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/widget/SlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateClose()V

    .line 345
    return-void
.end method
