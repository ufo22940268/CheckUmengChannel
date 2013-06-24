.class Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$2;
.super Ljava/lang/Object;
.source "BankServiceSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->init(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$2;->this$0:Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$2;->this$0:Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;

    #calls: Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->saveSettingData()V
    invoke-static {v0}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;->access$000(Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;)V

    .line 213
    return-void
.end method
