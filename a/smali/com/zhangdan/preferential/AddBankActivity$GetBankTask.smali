.class Lcom/zhangdan/preferential/AddBankActivity$GetBankTask;
.super Landroid/os/AsyncTask;
.source "AddBankActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/AddBankActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetBankTask"
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
.field private mMyBanks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Bank;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zhangdan/preferential/AddBankActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/AddBankActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/zhangdan/preferential/AddBankActivity$GetBankTask;->this$0:Lcom/zhangdan/preferential/AddBankActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/AddBankActivity;Lcom/zhangdan/preferential/AddBankActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/AddBankActivity$GetBankTask;-><init>(Lcom/zhangdan/preferential/AddBankActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/AddBankActivity$GetBankTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
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
    .line 162
    iget-object v1, p0, Lcom/zhangdan/preferential/AddBankActivity$GetBankTask;->this$0:Lcom/zhangdan/preferential/AddBankActivity;

    #getter for: Lcom/zhangdan/preferential/AddBankActivity;->mWeiboKeeper:Lcom/zhangdan/preferential/utils/WeiboKeeper;
    invoke-static {v1}, Lcom/zhangdan/preferential/AddBankActivity;->access$200(Lcom/zhangdan/preferential/AddBankActivity;)Lcom/zhangdan/preferential/utils/WeiboKeeper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/preferential/utils/WeiboKeeper;->readYouhuiUid()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, youhuiId:Ljava/lang/String;
    iget-object v1, p0, Lcom/zhangdan/preferential/AddBankActivity$GetBankTask;->this$0:Lcom/zhangdan/preferential/AddBankActivity;

    #getter for: Lcom/zhangdan/preferential/AddBankActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v1}, Lcom/zhangdan/preferential/AddBankActivity;->access$400(Lcom/zhangdan/preferential/AddBankActivity;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/AddBankActivity$GetBankTask;->this$0:Lcom/zhangdan/preferential/AddBankActivity;

    #getter for: Lcom/zhangdan/preferential/AddBankActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v2}, Lcom/zhangdan/preferential/AddBankActivity;->access$400(Lcom/zhangdan/preferential/AddBankActivity;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/preferential/AddBankActivity$GetBankTask;->this$0:Lcom/zhangdan/preferential/AddBankActivity;

    #getter for: Lcom/zhangdan/preferential/AddBankActivity;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;
    invoke-static {v3}, Lcom/zhangdan/preferential/AddBankActivity;->access$300(Lcom/zhangdan/preferential/AddBankActivity;)Lcom/zhangdan/preferential/utils/RequestGenerator;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getMyBankRequest(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/preferential/utils/JsonParser;->parseUser(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateMyBankList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/preferential/AddBankActivity$GetBankTask;->mMyBanks:Ljava/util/List;

    .line 166
    iget-object v1, p0, Lcom/zhangdan/preferential/AddBankActivity$GetBankTask;->this$0:Lcom/zhangdan/preferential/AddBankActivity;

    #getter for: Lcom/zhangdan/preferential/AddBankActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v1}, Lcom/zhangdan/preferential/AddBankActivity;->access$400(Lcom/zhangdan/preferential/AddBankActivity;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/AddBankActivity$GetBankTask;->this$0:Lcom/zhangdan/preferential/AddBankActivity;

    #getter for: Lcom/zhangdan/preferential/AddBankActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v2}, Lcom/zhangdan/preferential/AddBankActivity;->access$400(Lcom/zhangdan/preferential/AddBankActivity;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhangdan/preferential/utils/JsonParser;->parseBankList()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateBankList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 151
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/AddBankActivity$GetBankTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
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
    .line 171
    .local p1, banks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Bank;>;"
    if-eqz p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity$GetBankTask;->this$0:Lcom/zhangdan/preferential/AddBankActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/AddBankActivity;->dismissLoading()V

    .line 173
    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity$GetBankTask;->this$0:Lcom/zhangdan/preferential/AddBankActivity;

    iget-object v1, p0, Lcom/zhangdan/preferential/AddBankActivity$GetBankTask;->mMyBanks:Ljava/util/List;

    #calls: Lcom/zhangdan/preferential/AddBankActivity;->populateBanks(Ljava/util/List;Ljava/util/List;)V
    invoke-static {v0, p1, v1}, Lcom/zhangdan/preferential/AddBankActivity;->access$500(Lcom/zhangdan/preferential/AddBankActivity;Ljava/util/List;Ljava/util/List;)V

    .line 175
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity$GetBankTask;->this$0:Lcom/zhangdan/preferential/AddBankActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/AddBankActivity;->showLoading()V

    .line 158
    return-void
.end method
