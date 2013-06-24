.class Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$1;
.super Ljava/lang/Object;
.source "RelevantAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;

.field final synthetic val$dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;

.field final synthetic val$userInfo:Lcom/zhangdan/app/data/model/UserInfo;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;Lcom/zhangdan/app/widget/CustomAlertDialog;Lcom/zhangdan/app/data/model/UserInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$1;->this$2:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;

    iput-object p2, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$1;->val$dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;

    iput-object p3, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$1;->val$userInfo:Lcom/zhangdan/app/data/model/UserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 211
    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$1;->val$dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;

    invoke-virtual {v4}, Lcom/zhangdan/app/widget/CustomAlertDialog;->dismiss()V

    .line 213
    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$1;->val$userInfo:Lcom/zhangdan/app/data/model/UserInfo;

    invoke-static {v4}, Lcom/zhangdan/app/api/AccountApi;->convertUserInfoToJsonStr(Lcom/zhangdan/app/data/model/UserInfo;)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, str:Ljava/lang/String;
    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$1;->this$2:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;

    iget-object v4, v4, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    iget-object v4, v4, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    invoke-static {v4, v3}, Lcom/zhangdan/app/data/db/util/SysMasterDbUtil;->saveUserInfo(Landroid/content/Context;Ljava/lang/String;)Z

    .line 216
    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$1;->this$2:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;

    iget-object v4, v4, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    iget-object v4, v4, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    invoke-virtual {v4}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 217
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$1;->val$userInfo:Lcom/zhangdan/app/data/model/UserInfo;

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/ZhangdanApplication;->setCurrUserInfo(Lcom/zhangdan/app/data/model/UserInfo;)V

    .line 218
    const-string v4, "Login"

    iget-object v5, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$1;->val$userInfo:Lcom/zhangdan/app/data/model/UserInfo;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$1;->val$userInfo:Lcom/zhangdan/app/data/model/UserInfo;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/UserInfo;->getFigureUrl()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, avatarUrl:Ljava/lang/String;
    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$1;->this$2:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;

    iget-object v4, v4, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    iget-object v4, v4, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    invoke-static {v4, v1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setAvatarUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 225
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$1;->this$2:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;

    iget-object v4, v4, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    iget-object v4, v4, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    const-class v5, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 226
    const-string v4, "email_name"

    iget-object v5, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$1;->this$2:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;

    iget-object v5, v5, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    iget-object v5, v5, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    #getter for: Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->mMailAccount:Ljava/lang/String;
    invoke-static {v5}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->access$300(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v4, "email_pwd"

    iget-object v5, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$1;->this$2:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;

    iget-object v5, v5, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    iget-object v5, v5, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    #getter for: Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->mMailPwd:Ljava/lang/String;
    invoke-static {v5}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->access$400(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$1;->this$2:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;

    iget-object v4, v4, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    iget-object v4, v4, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    invoke-virtual {v4, v2}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 230
    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$1;->this$2:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;

    iget-object v4, v4, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    iget-object v4, v4, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->setResult(I)V

    .line 231
    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$1;->this$2:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;

    iget-object v4, v4, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    iget-object v4, v4, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    invoke-virtual {v4}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->finish()V

    .line 232
    return-void
.end method
