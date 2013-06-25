.class Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$1$1;
.super Ljava/lang/Object;
.source "BankServiceSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$1;

.field final synthetic val$cardNos:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$1;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$1$1;->this$1:Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$1;

    iput-object p2, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$1$1;->val$cardNos:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$1$1;->this$1:Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$1;

    iget-object v0, v0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$1;->val$etContent:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$1$1;->val$cardNos:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 176
    return-void
.end method
