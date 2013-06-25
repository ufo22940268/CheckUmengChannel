.class Lcom/zhangdan/app/activities/repay/SetPaidDialog$1;
.super Ljava/lang/Object;
.source "SetPaidDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/repay/SetPaidDialog;-><init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/repay/SetPaidDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$userBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/repay/SetPaidDialog;Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/zhangdan/app/activities/repay/SetPaidDialog$1;->this$0:Lcom/zhangdan/app/activities/repay/SetPaidDialog;

    iput-object p2, p0, Lcom/zhangdan/app/activities/repay/SetPaidDialog$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/zhangdan/app/activities/repay/SetPaidDialog$1;->val$userBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zhangdan/app/activities/repay/SetPaidDialog$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/zhangdan/app/activities/repay/SetPaidDialog$1;->val$userBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/repay/RepayStateUtil;->setPaidState(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V

    .line 27
    iget-object v0, p0, Lcom/zhangdan/app/activities/repay/SetPaidDialog$1;->this$0:Lcom/zhangdan/app/activities/repay/SetPaidDialog;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/repay/SetPaidDialog;->dismiss()V

    .line 28
    return-void
.end method
