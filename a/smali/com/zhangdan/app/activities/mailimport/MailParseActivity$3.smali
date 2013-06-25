.class Lcom/zhangdan/app/activities/mailimport/MailParseActivity$3;
.super Ljava/lang/Object;
.source "MailParseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->showFinishDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

.field final synthetic val$dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Lcom/zhangdan/app/widget/CustomAlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 721
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$3;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    iput-object p2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$3;->val$dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 724
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$3;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    const-string v1, "yuan_import_parse_dialog_no"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 726
    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$3;->val$dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/CustomAlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :goto_0
    return-void

    .line 727
    :catch_0
    move-exception v0

    goto :goto_0
.end method
