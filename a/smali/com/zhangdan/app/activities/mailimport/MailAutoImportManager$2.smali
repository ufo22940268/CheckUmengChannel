.class Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$2;
.super Ljava/lang/Object;
.source "MailAutoImportManager.java"

# interfaces
.implements Lcom/zhangdan/app/activities/mailimport/dialog/DialogPhoneCode$OnVerifyCodeListener;


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
    .line 628
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$2;->this$0:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Ljava/lang/String;)V
    .locals 7
    .parameter "code"

    .prologue
    .line 631
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$2;->this$0:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    #getter for: Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->access$000(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_0

    .line 640
    :goto_0
    return-void

    .line 633
    :cond_0
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$2;->this$0:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    #calls: Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->dismissPhoneCodeDialog()V
    invoke-static {v4}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->access$700(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)V

    .line 634
    new-instance v3, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;

    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$2;->this$0:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    #getter for: Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->access$000(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;-><init>(Landroid/content/Context;)V

    .line 635
    .local v3, task:Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$2;->this$0:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;->setOnMailSubmitProcessListener(Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask$OnMailSubmitProcessListener;)V

    .line 636
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$2;->this$0:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    #getter for: Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtEmail:Lcom/zhangdan/app/widget/EmailEditText;
    invoke-static {v4}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->access$200(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)Lcom/zhangdan/app/widget/EmailEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zhangdan/app/widget/EmailEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, mailName:Ljava/lang/String;
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$2;->this$0:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    #getter for: Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtPwd:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->access$300(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 638
    .local v2, mailPwd:Ljava/lang/String;
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$2;->this$0:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    #getter for: Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mEtIndependPwd:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->access$400(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, mailIndepPwd:Ljava/lang/String;
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$2;->this$0:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    #getter for: Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->mToken:Ljava/lang/String;
    invoke-static {v6}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->access$500(Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager$2;->this$0:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

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

    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x6

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    goto :goto_0
.end method
