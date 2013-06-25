.class Lcom/zhangdan/app/activities/account/OfficialLoginActivity$2;
.super Ljava/lang/Object;
.source "OfficialLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->onClickDropdownView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$2;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 226
    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$2;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    #getter for: Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mHistoryUserList:Ljava/util/List;
    invoke-static {v2}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->access$100(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/UserHisInfo;

    .line 227
    .local v1, info:Lcom/zhangdan/app/data/model/UserHisInfo;
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserHisInfo;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, account:Ljava/lang/String;
    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$2;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    #getter for: Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mEtName:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->access$200(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$2;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserHisInfo;->getPwd()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mPwd:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->access$302(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$2;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    #getter for: Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mPwd:Ljava/lang/String;
    invoke-static {v2}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->access$300(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$2;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    #getter for: Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mEtPwd:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->access$000(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, "******"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :cond_0
    return-void
.end method
