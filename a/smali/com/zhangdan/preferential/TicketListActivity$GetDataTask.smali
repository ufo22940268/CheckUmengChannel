.class Lcom/zhangdan/preferential/TicketListActivity$GetDataTask;
.super Landroid/os/AsyncTask;
.source "TicketListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/TicketListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/zhangdan/preferential/data/model/ShopExtra;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/TicketListActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/TicketListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/zhangdan/preferential/TicketListActivity$GetDataTask;->this$0:Lcom/zhangdan/preferential/TicketListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/TicketListActivity;Lcom/zhangdan/preferential/TicketListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/TicketListActivity$GetDataTask;-><init>(Lcom/zhangdan/preferential/TicketListActivity;)V

    return-void
.end method

.method private populateExtra(Lcom/zhangdan/preferential/data/model/ShopExtra;)V
    .locals 2
    .parameter "extra"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhangdan/preferential/TicketListActivity$GetDataTask;->this$0:Lcom/zhangdan/preferential/TicketListActivity;

    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->ticketList:Ljava/util/List;

    #setter for: Lcom/zhangdan/preferential/TicketListActivity;->mTicketList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/zhangdan/preferential/TicketListActivity;->access$102(Lcom/zhangdan/preferential/TicketListActivity;Ljava/util/List;)Ljava/util/List;

    .line 101
    iget-object v0, p0, Lcom/zhangdan/preferential/TicketListActivity$GetDataTask;->this$0:Lcom/zhangdan/preferential/TicketListActivity;

    #getter for: Lcom/zhangdan/preferential/TicketListActivity;->mAdapter:Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter;
    invoke-static {v0}, Lcom/zhangdan/preferential/TicketListActivity;->access$200(Lcom/zhangdan/preferential/TicketListActivity;)Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter;->notifyDataSetChanged()V

    .line 102
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/zhangdan/preferential/data/model/ShopExtra;
    .locals 3
    .parameter "params"

    .prologue
    .line 84
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 87
    .local v0, id:Ljava/lang/String;
    new-instance v1, Lcom/zhangdan/preferential/utils/JsonParser;

    iget-object v2, p0, Lcom/zhangdan/preferential/TicketListActivity$GetDataTask;->this$0:Lcom/zhangdan/preferential/TicketListActivity;

    invoke-direct {v1, v2}, Lcom/zhangdan/preferential/utils/JsonParser;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-direct {v2}, Lcom/zhangdan/preferential/utils/RequestGenerator;-><init>()V

    invoke-virtual {v2, v0}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getShopExtraRequest(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateShopExtra(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/ShopExtra;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/TicketListActivity$GetDataTask;->doInBackground([Ljava/lang/String;)Lcom/zhangdan/preferential/data/model/ShopExtra;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/zhangdan/preferential/data/model/ShopExtra;)V
    .locals 0
    .parameter "extra"

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/TicketListActivity$GetDataTask;->populateExtra(Lcom/zhangdan/preferential/data/model/ShopExtra;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    check-cast p1, Lcom/zhangdan/preferential/data/model/ShopExtra;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/TicketListActivity$GetDataTask;->onPostExecute(Lcom/zhangdan/preferential/data/model/ShopExtra;)V

    return-void
.end method
