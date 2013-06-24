.class Lcom/zhangdan/preferential/AddBankActivity$SaveBankTask;
.super Landroid/os/AsyncTask;
.source "AddBankActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/AddBankActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveBankTask"
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
.field final synthetic this$0:Lcom/zhangdan/preferential/AddBankActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/AddBankActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/zhangdan/preferential/AddBankActivity$SaveBankTask;->this$0:Lcom/zhangdan/preferential/AddBankActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/AddBankActivity;Lcom/zhangdan/preferential/AddBankActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/AddBankActivity$SaveBankTask;-><init>(Lcom/zhangdan/preferential/AddBankActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/AddBankActivity$SaveBankTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    .line 187
    iget-object v2, p0, Lcom/zhangdan/preferential/AddBankActivity$SaveBankTask;->this$0:Lcom/zhangdan/preferential/AddBankActivity;

    #calls: Lcom/zhangdan/preferential/AddBankActivity;->getSelectedBankIds()Ljava/util/List;
    invoke-static {v2}, Lcom/zhangdan/preferential/AddBankActivity;->access$600(Lcom/zhangdan/preferential/AddBankActivity;)Ljava/util/List;

    move-result-object v0

    .line 188
    .local v0, bankIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/zhangdan/preferential/AddBankActivity$SaveBankTask;->this$0:Lcom/zhangdan/preferential/AddBankActivity;

    #getter for: Lcom/zhangdan/preferential/AddBankActivity;->mWeiboKeeper:Lcom/zhangdan/preferential/utils/WeiboKeeper;
    invoke-static {v2}, Lcom/zhangdan/preferential/AddBankActivity;->access$200(Lcom/zhangdan/preferential/AddBankActivity;)Lcom/zhangdan/preferential/utils/WeiboKeeper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhangdan/preferential/utils/WeiboKeeper;->readYouhuiUid()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, youhuiId:Ljava/lang/String;
    iget-object v2, p0, Lcom/zhangdan/preferential/AddBankActivity$SaveBankTask;->this$0:Lcom/zhangdan/preferential/AddBankActivity;

    #getter for: Lcom/zhangdan/preferential/AddBankActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v2}, Lcom/zhangdan/preferential/AddBankActivity;->access$400(Lcom/zhangdan/preferential/AddBankActivity;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/preferential/AddBankActivity$SaveBankTask;->this$0:Lcom/zhangdan/preferential/AddBankActivity;

    #getter for: Lcom/zhangdan/preferential/AddBankActivity;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;
    invoke-static {v3}, Lcom/zhangdan/preferential/AddBankActivity;->access$300(Lcom/zhangdan/preferential/AddBankActivity;)Lcom/zhangdan/preferential/utils/RequestGenerator;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getSaveBankRequest(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/preferential/utils/JsonParser;->parseUser(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 190
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/AddBankActivity$SaveBankTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity$SaveBankTask;->this$0:Lcom/zhangdan/preferential/AddBankActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/AddBankActivity;->dismissLoading()V

    .line 196
    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity$SaveBankTask;->this$0:Lcom/zhangdan/preferential/AddBankActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/AddBankActivity;->finish()V

    .line 197
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity$SaveBankTask;->this$0:Lcom/zhangdan/preferential/AddBankActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/AddBankActivity;->showLoading()V

    .line 183
    return-void
.end method
