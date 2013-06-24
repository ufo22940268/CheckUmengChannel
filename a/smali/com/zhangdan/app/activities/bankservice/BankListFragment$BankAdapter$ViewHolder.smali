.class Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BankListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field btnMap:Landroid/widget/ImageView;

.field btnSms:Landroid/widget/ImageView;

.field btnTel:Landroid/widget/ImageView;

.field imgArrow:Landroid/widget/ImageView;

.field imgBankLogo:Landroid/widget/ImageView;

.field layoutService:Landroid/view/View;

.field final synthetic this$1:Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;

.field tvBankName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter$ViewHolder;->this$1:Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
