.class Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ShoppingSheetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field btnRemark:Landroid/widget/TextView;

.field btnStar:Landroid/widget/TextView;

.field btnYouhui:Landroid/widget/TextView;

.field contentLayout:Lcom/zhangdan/app/widget/ShoppingSheetLayout;

.field imgCategoryIcon:Landroid/widget/ImageView;

.field imgDashLine:Landroid/widget/ImageView;

.field imgFullLine:Landroid/widget/ImageView;

.field imgRemark:Landroid/widget/ImageView;

.field imgStar:Landroid/widget/ImageView;

.field imgWeather:Landroid/widget/ImageView;

.field imgYouhui:Landroid/widget/ImageView;

.field layoutBtns:Landroid/view/View;

.field layoutCategory:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

.field tvAmount:Landroid/widget/TextView;

.field tvBankInfo:Landroid/widget/TextView;

.field tvDay:Landroid/widget/TextView;

.field tvRemark:Landroid/widget/TextView;

.field tvShoppingTitle:Landroid/widget/TextView;

.field tvShoppingTitle2:Landroid/widget/TextView;

.field tvStarRating:Landroid/widget/TextView;

.field tvWeather:Landroid/widget/TextView;

.field tvWeek:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$ViewHolder;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
