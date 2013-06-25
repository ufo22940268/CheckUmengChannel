.class public Lcom/zhangdan/preferential/widget/DetailSectionView$OnLaunchIntentListener;
.super Ljava/lang/Object;
.source "DetailSectionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/widget/DetailSectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnLaunchIntentListener"
.end annotation


# instance fields
.field private mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/zhangdan/preferential/widget/DetailSectionView;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/widget/DetailSectionView;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "intent"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/zhangdan/preferential/widget/DetailSectionView$OnLaunchIntentListener;->this$0:Lcom/zhangdan/preferential/widget/DetailSectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/zhangdan/preferential/widget/DetailSectionView$OnLaunchIntentListener;->mIntent:Landroid/content/Intent;

    .line 90
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/DetailSectionView$OnLaunchIntentListener;->this$0:Lcom/zhangdan/preferential/widget/DetailSectionView;

    iget-object v0, v0, Lcom/zhangdan/preferential/widget/DetailSectionView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/DetailSectionView$OnLaunchIntentListener;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 95
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/DetailSectionView$OnLaunchIntentListener;->this$0:Lcom/zhangdan/preferential/widget/DetailSectionView;

    iget-object v0, v0, Lcom/zhangdan/preferential/widget/DetailSectionView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/zhangdan/preferential/utils/ViewUtils;->setEnterTransition(Landroid/app/Activity;)V

    .line 96
    return-void
.end method
