.class Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$1;
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

.field final synthetic val$bankList:Ljava/util/List;

.field final synthetic val$etContent:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;Ljava/util/List;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$1;->this$0:Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;

    iput-object p2, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$1;->val$bankList:Ljava/util/List;

    iput-object p3, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$1;->val$etContent:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 164
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$1;->this$0:Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 165
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$1;->val$bankList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 166
    .local v3, items:[Ljava/lang/String;
    iget-object v5, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$1;->val$bankList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    .line 167
    .local v1, cardNos:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 168
    iget-object v5, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$1;->val$bankList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 169
    .local v4, userBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 170
    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local v4           #userBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;
    :cond_0
    new-instance v5, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$1$1;

    invoke-direct {v5, p0, v1}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$1$1;-><init>(Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$1;[Ljava/lang/String;)V

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 178
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 179
    return-void
.end method
