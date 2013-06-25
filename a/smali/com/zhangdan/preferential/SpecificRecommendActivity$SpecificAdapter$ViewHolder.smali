.class Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SpecificRecommendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field dayOfWeek:Landroid/widget/TextView;

.field description:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field photo:Landroid/widget/ImageView;

.field range:Landroid/widget/TextView;

.field starView:Lcom/zhangdan/preferential/widget/CustomStarView;

.field tagsView:Landroid/view/ViewGroup;

.field final synthetic this$1:Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter$ViewHolder;->this$1:Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
