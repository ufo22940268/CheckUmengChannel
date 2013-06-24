.class Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SimpleCardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field imgDemo:Landroid/widget/ImageView;

.field imgForeignMoney:Landroid/widget/ImageView;

.field imgRedDot:Landroid/widget/ImageView;

.field layoutContent:Landroid/widget/RelativeLayout;

.field layoutPayDueDays:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;

.field tvBankName:Landroid/widget/TextView;

.field tvBillAmout:Landroid/widget/TextView;

.field tvBillState:Landroid/widget/TextView;

.field tvCardNo:Landroid/widget/TextView;

.field tvDaysLabel:Landroid/widget/TextView;

.field tvName:Landroid/widget/TextView;

.field tvPayDueDays:Landroid/widget/TextView;

.field tvPayDueType:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter$ViewHolder;->this$0:Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
