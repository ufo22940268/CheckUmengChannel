.class Lcom/zhangdan/app/activities/repay/PayPartDialog$1;
.super Ljava/lang/Object;
.source "PayPartDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/repay/PayPartDialog;-><init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/repay/PayPartDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$userBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/repay/PayPartDialog;Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/zhangdan/app/activities/repay/PayPartDialog$1;->this$0:Lcom/zhangdan/app/activities/repay/PayPartDialog;

    iput-object p2, p0, Lcom/zhangdan/app/activities/repay/PayPartDialog$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/zhangdan/app/activities/repay/PayPartDialog$1;->val$userBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 40
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 41
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zhangdan/app/activities/repay/PayPartDialog$1;->val$context:Landroid/content/Context;

    const-class v3, Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 42
    iget-object v2, p0, Lcom/zhangdan/app/activities/repay/PayPartDialog$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 43
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    const-string v2, "key_user_bank"

    iget-object v3, p0, Lcom/zhangdan/app/activities/repay/PayPartDialog$1;->val$userBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v0, v2, v3}, Lcom/zhangdan/app/ZhangdanApplication;->addCacheObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    iget-object v2, p0, Lcom/zhangdan/app/activities/repay/PayPartDialog$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    iget-object v2, p0, Lcom/zhangdan/app/activities/repay/PayPartDialog$1;->this$0:Lcom/zhangdan/app/activities/repay/PayPartDialog;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/repay/PayPartDialog;->dismiss()V

    .line 46
    return-void
.end method
