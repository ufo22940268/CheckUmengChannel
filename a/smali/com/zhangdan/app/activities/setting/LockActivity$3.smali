.class Lcom/zhangdan/app/activities/setting/LockActivity$3;
.super Ljava/lang/Object;
.source "LockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/setting/LockActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/setting/LockActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/setting/LockActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/zhangdan/app/activities/setting/LockActivity$3;->this$0:Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 114
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity$3;->this$0:Lcom/zhangdan/app/activities/setting/LockActivity;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/setting/LockActivity;->dismissDialog(I)V

    .line 115
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity$3;->this$0:Lcom/zhangdan/app/activities/setting/LockActivity;

    #getter for: Lcom/zhangdan/app/activities/setting/LockActivity;->mSetPwdType:I
    invoke-static {v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->access$100(Lcom/zhangdan/app/activities/setting/LockActivity;)I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity$3;->this$0:Lcom/zhangdan/app/activities/setting/LockActivity;

    #getter for: Lcom/zhangdan/app/activities/setting/LockActivity;->mSetPwdType:I
    invoke-static {v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->access$100(Lcom/zhangdan/app/activities/setting/LockActivity;)I

    move-result v0

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity$3;->this$0:Lcom/zhangdan/app/activities/setting/LockActivity;

    #getter for: Lcom/zhangdan/app/activities/setting/LockActivity;->mHasInputPwdCount:I
    invoke-static {v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->access$200(Lcom/zhangdan/app/activities/setting/LockActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    new-instance v1, Lcom/zhangdan/app/activities/setting/LogoutTask;

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity$3;->this$0:Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-direct {v1, v0}, Lcom/zhangdan/app/activities/setting/LogoutTask;-><init>(Landroid/app/Activity;)V

    new-array v2, v3, [Ljava/lang/Void;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/setting/LogoutTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity$3;->this$0:Lcom/zhangdan/app/activities/setting/LockActivity;

    #getter for: Lcom/zhangdan/app/activities/setting/LockActivity;->mSetPwdType:I
    invoke-static {v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->access$100(Lcom/zhangdan/app/activities/setting/LockActivity;)I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 118
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity$3;->this$0:Lcom/zhangdan/app/activities/setting/LockActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/LockActivity$3;->this$0:Lcom/zhangdan/app/activities/setting/LockActivity;

    const v2, 0x7f070163

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/setting/LockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity$3;->this$0:Lcom/zhangdan/app/activities/setting/LockActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setLocalPwd(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity$3;->this$0:Lcom/zhangdan/app/activities/setting/LockActivity;

    #getter for: Lcom/zhangdan/app/activities/setting/LockActivity;->mLockView:Lcom/zhangdan/app/widget/LockView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->access$300(Lcom/zhangdan/app/activities/setting/LockActivity;)Lcom/zhangdan/app/widget/LockView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/widget/LockView;->setEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity$3;->this$0:Lcom/zhangdan/app/activities/setting/LockActivity;

    #getter for: Lcom/zhangdan/app/activities/setting/LockActivity;->mMyHandler:Lcom/zhangdan/app/activities/setting/LockActivity$MyHandler;
    invoke-static {v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->access$400(Lcom/zhangdan/app/activities/setting/LockActivity;)Lcom/zhangdan/app/activities/setting/LockActivity$MyHandler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Lcom/zhangdan/app/activities/setting/LockActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 123
    :cond_2
    return-void
.end method
