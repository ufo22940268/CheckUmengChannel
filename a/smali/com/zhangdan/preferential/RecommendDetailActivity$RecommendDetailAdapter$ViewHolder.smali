.class Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "RecommendDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field address:Landroid/widget/TextView;

.field discountWeeks:Landroid/view/ViewGroup;

.field distance:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field photo:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->this$1:Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;Lcom/zhangdan/preferential/RecommendDetailActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 525
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;)V

    return-void
.end method
