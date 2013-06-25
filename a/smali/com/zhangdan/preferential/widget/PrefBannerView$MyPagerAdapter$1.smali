.class Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter$1;
.super Ljava/lang/Object;
.source "PrefBannerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter;

.field final synthetic val$prom:Lcom/zhangdan/preferential/data/model/Promotion;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter;Lcom/zhangdan/preferential/data/model/Promotion;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter$1;->this$1:Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter;

    iput-object p2, p0, Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter$1;->val$prom:Lcom/zhangdan/preferential/data/model/Promotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zhangdan.preferential.MIX_VIEW_RECOMMEND_DETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "prom_id"

    iget-object v2, p0, Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter$1;->val$prom:Lcom/zhangdan/preferential/data/model/Promotion;

    iget-object v2, v2, Lcom/zhangdan/preferential/data/model/Promotion;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter$1;->this$1:Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter;

    iget-object v1, v1, Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter;->this$0:Lcom/zhangdan/preferential/widget/PrefBannerView;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/widget/PrefBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 199
    return-void
.end method
