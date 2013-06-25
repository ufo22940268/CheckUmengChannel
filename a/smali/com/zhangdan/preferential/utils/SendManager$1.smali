.class Lcom/zhangdan/preferential/utils/SendManager$1;
.super Ljava/lang/Object;
.source "SendManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/preferential/utils/SendManager;->buildDialog(Lcom/zhangdan/preferential/utils/SendManager$SendContent;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/utils/SendManager;

.field final synthetic val$content:Lcom/zhangdan/preferential/utils/SendManager$SendContent;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/utils/SendManager;Lcom/zhangdan/preferential/utils/SendManager$SendContent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/SendManager$1;->this$0:Lcom/zhangdan/preferential/utils/SendManager;

    iput-object p2, p0, Lcom/zhangdan/preferential/utils/SendManager$1;->val$content:Lcom/zhangdan/preferential/utils/SendManager$SendContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 90
    if-nez p2, :cond_1

    .line 91
    const-string v2, "smsto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 92
    .local v1, sms_uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 93
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "sms_body"

    iget-object v3, p0, Lcom/zhangdan/preferential/utils/SendManager$1;->val$content:Lcom/zhangdan/preferential/utils/SendManager$SendContent;

    #getter for: Lcom/zhangdan/preferential/utils/SendManager$SendContent;->smsContent:Ljava/lang/String;
    invoke-static {v3}, Lcom/zhangdan/preferential/utils/SendManager$SendContent;->access$000(Lcom/zhangdan/preferential/utils/SendManager$SendContent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v2, p0, Lcom/zhangdan/preferential/utils/SendManager$1;->this$0:Lcom/zhangdan/preferential/utils/SendManager;

    #getter for: Lcom/zhangdan/preferential/utils/SendManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zhangdan/preferential/utils/SendManager;->access$200(Lcom/zhangdan/preferential/utils/SendManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 101
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #sms_uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    if-ne p2, v3, :cond_2

    .line 96
    iget-object v2, p0, Lcom/zhangdan/preferential/utils/SendManager$1;->val$content:Lcom/zhangdan/preferential/utils/SendManager$SendContent;

    #getter for: Lcom/zhangdan/preferential/utils/SendManager$SendContent;->wxRequest:Lcom/zhangdan/preferential/data/model/WeixinRequest;
    invoke-static {v2}, Lcom/zhangdan/preferential/utils/SendManager$SendContent;->access$100(Lcom/zhangdan/preferential/utils/SendManager$SendContent;)Lcom/zhangdan/preferential/data/model/WeixinRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/preferential/utils/SendManager$1;->this$0:Lcom/zhangdan/preferential/utils/SendManager;

    iget-object v3, v3, Lcom/zhangdan/preferential/utils/SendManager;->mWeixinApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual {v2, v3}, Lcom/zhangdan/preferential/data/model/WeixinRequest;->send(Lcom/tencent/mm/sdk/openapi/IWXAPI;)V

    goto :goto_0

    .line 97
    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/zhangdan/preferential/utils/SendManager$1;->val$content:Lcom/zhangdan/preferential/utils/SendManager$SendContent;

    #getter for: Lcom/zhangdan/preferential/utils/SendManager$SendContent;->wxRequest:Lcom/zhangdan/preferential/data/model/WeixinRequest;
    invoke-static {v2}, Lcom/zhangdan/preferential/utils/SendManager$SendContent;->access$100(Lcom/zhangdan/preferential/utils/SendManager$SendContent;)Lcom/zhangdan/preferential/data/model/WeixinRequest;

    move-result-object v2

    iput-boolean v3, v2, Lcom/zhangdan/preferential/data/model/WeixinRequest;->mSharedToFriend:Z

    .line 99
    iget-object v2, p0, Lcom/zhangdan/preferential/utils/SendManager$1;->val$content:Lcom/zhangdan/preferential/utils/SendManager$SendContent;

    #getter for: Lcom/zhangdan/preferential/utils/SendManager$SendContent;->wxRequest:Lcom/zhangdan/preferential/data/model/WeixinRequest;
    invoke-static {v2}, Lcom/zhangdan/preferential/utils/SendManager$SendContent;->access$100(Lcom/zhangdan/preferential/utils/SendManager$SendContent;)Lcom/zhangdan/preferential/data/model/WeixinRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/preferential/utils/SendManager$1;->this$0:Lcom/zhangdan/preferential/utils/SendManager;

    iget-object v3, v3, Lcom/zhangdan/preferential/utils/SendManager;->mWeixinApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual {v2, v3}, Lcom/zhangdan/preferential/data/model/WeixinRequest;->send(Lcom/tencent/mm/sdk/openapi/IWXAPI;)V

    goto :goto_0
.end method
