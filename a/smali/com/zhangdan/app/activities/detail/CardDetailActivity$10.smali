.class Lcom/zhangdan/app/activities/detail/CardDetailActivity$10;
.super Ljava/lang/Object;
.source "CardDetailActivity.java"

# interfaces
.implements Lcom/zhangdan/app/activities/detail/dialog/EditCreditLimitDialog$OnEditCreditLimitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/detail/CardDetailActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$10;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreditLimitConfirm(Ljava/lang/String;)V
    .locals 7
    .parameter "creditLimit"

    .prologue
    .line 520
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$10;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v0

    .line 521
    .local v0, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    new-instance v1, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$10;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-direct {v1, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$10;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-static {v5}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$300(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/data/model/UserBankInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 522
    return-void
.end method
