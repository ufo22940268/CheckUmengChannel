.class Lcom/zhangdan/preferential/BankConfigurationActivity$GetMyBanksTask;
.super Landroid/os/AsyncTask;
.source "BankConfigurationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/BankConfigurationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetMyBanksTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/zhangdan/preferential/data/model/Bank;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/BankConfigurationActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/BankConfigurationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/zhangdan/preferential/BankConfigurationActivity$GetMyBanksTask;->this$0:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/BankConfigurationActivity;Lcom/zhangdan/preferential/BankConfigurationActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/BankConfigurationActivity$GetMyBanksTask;-><init>(Lcom/zhangdan/preferential/BankConfigurationActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 197
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/BankConfigurationActivity$GetMyBanksTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 6
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Bank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v3, p0, Lcom/zhangdan/preferential/BankConfigurationActivity$GetMyBanksTask;->this$0:Lcom/zhangdan/preferential/BankConfigurationActivity;

    #getter for: Lcom/zhangdan/preferential/BankConfigurationActivity;->mWeiboKeeper:Lcom/zhangdan/preferential/utils/WeiboKeeper;
    invoke-static {v3}, Lcom/zhangdan/preferential/BankConfigurationActivity;->access$200(Lcom/zhangdan/preferential/BankConfigurationActivity;)Lcom/zhangdan/preferential/utils/WeiboKeeper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zhangdan/preferential/utils/WeiboKeeper;->readYouhuiUid()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, youhuiId:Ljava/lang/String;
    iget-object v3, p0, Lcom/zhangdan/preferential/BankConfigurationActivity$GetMyBanksTask;->this$0:Lcom/zhangdan/preferential/BankConfigurationActivity;

    #getter for: Lcom/zhangdan/preferential/BankConfigurationActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v3}, Lcom/zhangdan/preferential/BankConfigurationActivity;->access$400(Lcom/zhangdan/preferential/BankConfigurationActivity;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/preferential/BankConfigurationActivity$GetMyBanksTask;->this$0:Lcom/zhangdan/preferential/BankConfigurationActivity;

    #getter for: Lcom/zhangdan/preferential/BankConfigurationActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v4}, Lcom/zhangdan/preferential/BankConfigurationActivity;->access$400(Lcom/zhangdan/preferential/BankConfigurationActivity;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/preferential/BankConfigurationActivity$GetMyBanksTask;->this$0:Lcom/zhangdan/preferential/BankConfigurationActivity;

    #getter for: Lcom/zhangdan/preferential/BankConfigurationActivity;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;
    invoke-static {v5}, Lcom/zhangdan/preferential/BankConfigurationActivity;->access$300(Lcom/zhangdan/preferential/BankConfigurationActivity;)Lcom/zhangdan/preferential/utils/RequestGenerator;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getMyBankRequest(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zhangdan/preferential/utils/JsonParser;->parseUser(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateMyBankList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 210
    .local v0, banks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Bank;>;"
    iget-object v3, p0, Lcom/zhangdan/preferential/BankConfigurationActivity$GetMyBanksTask;->this$0:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-static {v3}, Lcom/zhangdan/preferential/utils/CommonMethod;->isFirstEnter(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/zhangdan/preferential/BankConfigurationActivity$GetMyBanksTask;->this$0:Lcom/zhangdan/preferential/BankConfigurationActivity;

    #getter for: Lcom/zhangdan/preferential/BankConfigurationActivity;->mWeiboManager:Lcom/zhangdan/preferential/utils/WeiboManager;
    invoke-static {v3}, Lcom/zhangdan/preferential/BankConfigurationActivity;->access$500(Lcom/zhangdan/preferential/BankConfigurationActivity;)Lcom/zhangdan/preferential/utils/WeiboManager;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/preferential/BankConfigurationActivity$GetMyBanksTask;->this$0:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-virtual {v4}, Lcom/zhangdan/preferential/BankConfigurationActivity;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zhangdan/preferential/utils/WeiboManager;->getZhangdanBanks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 212
    .local v2, zhangdanBanks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Bank;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    iget-object v3, p0, Lcom/zhangdan/preferential/BankConfigurationActivity$GetMyBanksTask;->this$0:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-static {v3}, Lcom/zhangdan/preferential/utils/CommonMethod;->markAsEntered(Landroid/content/Context;)V

    .line 217
    .end local v2           #zhangdanBanks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Bank;>;"
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 197
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/BankConfigurationActivity$GetMyBanksTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Bank;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, banks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Bank;>;"
    if-nez p1, :cond_0

    .line 229
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity$GetMyBanksTask;->this$0:Lcom/zhangdan/preferential/BankConfigurationActivity;

    #calls: Lcom/zhangdan/preferential/BankConfigurationActivity;->clearItems()V
    invoke-static {v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->access$600(Lcom/zhangdan/preferential/BankConfigurationActivity;)V

    .line 227
    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity$GetMyBanksTask;->this$0:Lcom/zhangdan/preferential/BankConfigurationActivity;

    #calls: Lcom/zhangdan/preferential/BankConfigurationActivity;->populateBanks(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/zhangdan/preferential/BankConfigurationActivity;->access$700(Lcom/zhangdan/preferential/BankConfigurationActivity;Ljava/util/List;)V

    .line 228
    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity$GetMyBanksTask;->this$0:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->dismissLoading()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity$GetMyBanksTask;->this$0:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->showLoading()V

    .line 202
    return-void
.end method
