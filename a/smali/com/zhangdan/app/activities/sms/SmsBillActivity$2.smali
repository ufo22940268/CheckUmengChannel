.class Lcom/zhangdan/app/activities/sms/SmsBillActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SmsBillActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/sms/SmsBillActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/sms/SmsBillActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 292
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scan_finish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->access$200(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u641c\u7d22\u5b8c\u6bd5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    #setter for: Lcom/zhangdan/app/activities/sms/SmsBillActivity;->isScaning:Z
    invoke-static {v0, v2}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->access$002(Lcom/zhangdan/app/activities/sms/SmsBillActivity;Z)Z

    .line 295
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mSmsBillDataInfos:Ljava/util/List;
    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->access$100(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 296
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    #calls: Lcom/zhangdan/app/activities/sms/SmsBillActivity;->getSmsUserBank()V
    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->access$300(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scan_start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->access$200(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u641c\u7d22\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->access$200(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    #setter for: Lcom/zhangdan/app/activities/sms/SmsBillActivity;->isScaning:Z
    invoke-static {v0, v3}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->access$002(Lcom/zhangdan/app/activities/sms/SmsBillActivity;Z)Z

    .line 301
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->access$408(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)I

    goto :goto_0

    .line 302
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "update_sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    const-string v1, "sms_list"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mSmsBillDataInfos:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->access$102(Lcom/zhangdan/app/activities/sms/SmsBillActivity;Ljava/util/List;)Ljava/util/List;

    .line 304
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mHandler:Lcom/zhangdan/app/activities/sms/SmsBillActivity$MyHandler;
    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->access$500(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)Lcom/zhangdan/app/activities/sms/SmsBillActivity$MyHandler;

    move-result-object v0

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v3, v1, v2}, Lcom/zhangdan/app/activities/sms/SmsBillActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
