.class Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$1;
.super Ljava/lang/Object;
.source "MailAutoImportManager.java"

# interfaces
.implements Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$OnVerifyCodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)V
    .locals 0
    .parameter

    .prologue
    .line 607
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Ljava/lang/String;)V
    .locals 7
    .parameter "code"

    .prologue
    .line 610
    const-string v4, "MailLoginActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    #getter for: Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->access$000(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_0

    .line 620
    :goto_0
    return-void

    .line 613
    :cond_0
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    #calls: Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->dismissVerifyCodeDialog()V
    invoke-static {v4}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->access$100(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)V

    .line 614
    new-instance v3, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;

    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    #getter for: Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->access$000(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;-><init>(Landroid/content/Context;)V

    .line 615
    .local v3, task:Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;->setOnMailSubmitProcessListener(Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask$OnMailSubmitProcessListener;)V

    .line 616
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    #getter for: Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtEmail:Lcom/zhangdan/app/widget/EmailEditText;
    invoke-static {v4}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->access$200(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)Lcom/zhangdan/app/widget/EmailEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zhangdan/app/widget/EmailEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 617
    .local v1, mailName:Ljava/lang/String;
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    #getter for: Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtPwd:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->access$300(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 618
    .local v2, mailPwd:Ljava/lang/String;
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    #getter for: Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtIndependPwd:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->access$400(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, mailIndepPwd:Ljava/lang/String;
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    #getter for: Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mToken:Ljava/lang/String;
    invoke-static {v6}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->access$500(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    #getter for: Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mUserId:Ljava/lang/String;
    invoke-static {v6}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->access$600(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v5, 0x3

    aput-object v2, v4, v5

    const/4 v5, 0x4

    aput-object v0, v4, v5

    const/4 v5, 0x5

    aput-object p1, v4, v5

    const/4 v5, 0x6

    const-string v6, ""

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    goto :goto_0
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 625
    return-void
.end method
