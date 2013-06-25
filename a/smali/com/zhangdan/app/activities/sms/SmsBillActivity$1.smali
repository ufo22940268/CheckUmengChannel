.class Lcom/zhangdan/app/activities/sms/SmsBillActivity$1;
.super Ljava/lang/Object;
.source "SmsBillActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/sms/SmsBillActivity;->initialView()V
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
    .line 223
    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SmsBillActivity;->isScaning:Z
    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->access$000(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    const-string v3, "\u6b63\u5728\u626b\u63cf\uff0c\u8bf7\u7a0d\u5019..."

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mSmsBillDataInfos:Ljava/util/List;
    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->access$100(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p3, :cond_0

    if-ltz p3, :cond_0

    .line 233
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SmsBillActivity;->mSmsBillDataInfos:Ljava/util/List;
    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->access$100(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/SmsBillData;

    .line 234
    .local v0, data:Lcom/zhangdan/app/sms/SmsBillData;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    const-class v3, Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->getBankName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 236
    const-string v2, "bank_name"

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->getBankName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    :cond_2
    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->getCardNum()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 238
    const-string v2, "card_num"

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->getCardNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    :cond_3
    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->getTruename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 240
    const-string v2, "true_name"

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->getTruename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    :cond_4
    const-string v2, "bill_id"

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->getBillId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/SmsBillActivity$1;->this$0:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    invoke-virtual {v2, v1}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
