.class Lcom/zhangdan/preferential/BankConfigurationActivity$DeleteBankTask;
.super Landroid/os/AsyncTask;
.source "BankConfigurationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/BankConfigurationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteBankTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/BankConfigurationActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/BankConfigurationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/zhangdan/preferential/BankConfigurationActivity$DeleteBankTask;->this$0:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/BankConfigurationActivity;Lcom/zhangdan/preferential/BankConfigurationActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/BankConfigurationActivity$DeleteBankTask;-><init>(Lcom/zhangdan/preferential/BankConfigurationActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 232
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/BankConfigurationActivity$DeleteBankTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    .line 241
    iget-object v2, p0, Lcom/zhangdan/preferential/BankConfigurationActivity$DeleteBankTask;->this$0:Lcom/zhangdan/preferential/BankConfigurationActivity;

    #calls: Lcom/zhangdan/preferential/BankConfigurationActivity;->getRemainBankIds()Ljava/util/List;
    invoke-static {v2}, Lcom/zhangdan/preferential/BankConfigurationActivity;->access$800(Lcom/zhangdan/preferential/BankConfigurationActivity;)Ljava/util/List;

    move-result-object v0

    .line 242
    .local v0, bankIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/zhangdan/preferential/BankConfigurationActivity$DeleteBankTask;->this$0:Lcom/zhangdan/preferential/BankConfigurationActivity;

    #getter for: Lcom/zhangdan/preferential/BankConfigurationActivity;->mWeiboKeeper:Lcom/zhangdan/preferential/utils/WeiboKeeper;
    invoke-static {v2}, Lcom/zhangdan/preferential/BankConfigurationActivity;->access$200(Lcom/zhangdan/preferential/BankConfigurationActivity;)Lcom/zhangdan/preferential/utils/WeiboKeeper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhangdan/preferential/utils/WeiboKeeper;->readYouhuiUid()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, youhuiId:Ljava/lang/String;
    iget-object v2, p0, Lcom/zhangdan/preferential/BankConfigurationActivity$DeleteBankTask;->this$0:Lcom/zhangdan/preferential/BankConfigurationActivity;

    #getter for: Lcom/zhangdan/preferential/BankConfigurationActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v2}, Lcom/zhangdan/preferential/BankConfigurationActivity;->access$400(Lcom/zhangdan/preferential/BankConfigurationActivity;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/preferential/BankConfigurationActivity$DeleteBankTask;->this$0:Lcom/zhangdan/preferential/BankConfigurationActivity;

    #getter for: Lcom/zhangdan/preferential/BankConfigurationActivity;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;
    invoke-static {v3}, Lcom/zhangdan/preferential/BankConfigurationActivity;->access$300(Lcom/zhangdan/preferential/BankConfigurationActivity;)Lcom/zhangdan/preferential/utils/RequestGenerator;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getSaveBankRequest(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/preferential/utils/JsonParser;->parseUser(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 244
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 232
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/BankConfigurationActivity$DeleteBankTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "param"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity$DeleteBankTask;->this$0:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->dismissLoading()V

    .line 250
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity$DeleteBankTask;->this$0:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->showLoading()V

    .line 237
    return-void
.end method
