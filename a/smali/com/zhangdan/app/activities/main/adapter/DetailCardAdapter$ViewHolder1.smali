.class Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;
.super Ljava/lang/Object;
.source "DetailCardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder1"
.end annotation


# instance fields
.field imgBankIcon:Landroid/widget/ImageView;

.field imgBillState:Landroid/widget/ImageView;

.field imgDemo:Landroid/widget/ImageView;

.field imgForeignCurrency:Landroid/widget/ImageView;

.field imgRedDot:Landroid/widget/ImageView;

.field layoutContent:Landroid/view/View;

.field layoutPayDueDays:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;

.field tvBankName:Landroid/widget/TextView;

.field tvBillCycle:Landroid/widget/TextView;

.field tvBillState:Landroid/widget/TextView;

.field tvCreditLimit:Landroid/widget/TextView;

.field tvCurrConsumption:Landroid/widget/TextView;

.field tvCurrDebt:Landroid/widget/TextView;

.field tvDaysLabel:Landroid/widget/TextView;

.field tvFreeInterestDays:Landroid/widget/TextView;

.field tvLastDebt:Landroid/widget/TextView;

.field tvLastRepayDay:Landroid/widget/TextView;

.field tvMinPayment:Landroid/widget/TextView;

.field tvNameAndCardNo:Landroid/widget/TextView;

.field tvPayDueDays:Landroid/widget/TextView;

.field tvPayDueType:Landroid/widget/TextView;

.field tvReturnState:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter$ViewHolder1;->this$0:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
