.class Lcom/zhangdan/app/activities/sms/AllSmsActivity$2;
.super Ljava/lang/Object;
.source "AllSmsActivity.java"

# interfaces
.implements Lcom/zhangdan/app/activities/sms/AllSmsActivity$IOnEditListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/sms/AllSmsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gotoFeedBack(Lcom/zhangdan/app/sms/BillData;)V
    .locals 3
    .parameter "bill"

    .prologue
    .line 275
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    const-class v2, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 276
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bill_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 277
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsActivity;->bankName:Ljava/lang/String;
    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->access$500(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    const-string v1, "bank_name"

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsActivity;->bankName:Ljava/lang/String;
    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->access$500(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsActivity;->cardNum:Ljava/lang/String;
    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->access$600(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 280
    const-string v1, "card_num"

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsActivity;->cardNum:Ljava/lang/String;
    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->access$600(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsActivity;->trueName:Ljava/lang/String;
    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->access$700(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 282
    const-string v1, "true_name"

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsActivity;->trueName:Ljava/lang/String;
    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->access$700(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    :cond_2
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 284
    return-void
.end method

.method public gotoedit(Lcom/zhangdan/app/sms/BillData;)V
    .locals 3
    .parameter "bill"

    .prologue
    .line 262
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    const-class v2, Lcom/zhangdan/app/activities/sms/SmsEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bill_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 264
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsActivity;->bankName:Ljava/lang/String;
    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->access$500(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    const-string v1, "bank_name"

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsActivity;->bankName:Ljava/lang/String;
    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->access$500(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsActivity;->cardNum:Ljava/lang/String;
    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->access$600(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    const-string v1, "card_num"

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsActivity;->cardNum:Ljava/lang/String;
    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->access$600(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsActivity;->trueName:Ljava/lang/String;
    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->access$700(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 269
    const-string v1, "true_name"

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsActivity;->trueName:Ljava/lang/String;
    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->access$700(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/AllSmsActivity$2;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 271
    return-void
.end method
