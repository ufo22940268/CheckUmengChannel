.class Lcom/zhangdan/app/activities/detail/CardDetailActivity$6;
.super Ljava/lang/Object;
.source "CardDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$mergedUserBank:Lcom/zhangdan/app/data/model/UserBankInfo;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;Lcom/zhangdan/app/data/model/UserBankInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$6;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    iput-object p2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$6;->val$mergedUserBank:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 471
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$6;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->dismissDialog(I)V

    .line 472
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$6;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v0

    .line 473
    .local v0, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    new-instance v1, Lcom/zhangdan/app/activities/detail/CardDetailActivity$MergeUserBankTask;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$6;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-direct {v1, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$MergeUserBankTask;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

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

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$6;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

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

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$6;->val$mergedUserBank:Lcom/zhangdan/app/data/model/UserBankInfo;

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

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$MergeUserBankTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 474
    return-void
.end method
