.class Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CardDetailBillAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field btnEditRemark:Landroid/widget/TextView;

.field btnStar:Landroid/widget/TextView;

.field btnYouhui:Landroid/widget/TextView;

.field imgCategoryIcon:Landroid/widget/ImageView;

.field imgEditDivider:Landroid/widget/ImageView;

.field imgRemark:Landroid/widget/ImageView;

.field imgStar:Landroid/widget/ImageView;

.field imgYouhui:Landroid/widget/ImageView;

.field layoutContent:Landroid/view/View;

.field layoutEdit:Landroid/view/View;

.field final synthetic this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

.field tvMoney:Landroid/widget/TextView;

.field tvRemark:Landroid/widget/TextView;

.field tvTime:Landroid/widget/TextView;

.field tvTitle1:Landroid/widget/TextView;

.field tvTitle2:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$ViewHolder;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
