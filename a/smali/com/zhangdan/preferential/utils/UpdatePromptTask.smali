.class public Lcom/zhangdan/preferential/utils/UpdatePromptTask;
.super Landroid/os/AsyncTask;
.source "UpdatePromptTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/utils/UpdatePromptTask$OnCompleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/zhangdan/preferential/utils/UpdatePromptTask$OnCompleteListener;

.field private mParser:Lcom/zhangdan/preferential/utils/JsonParser;

.field private mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

.field private mWeiboKeeper:Lcom/zhangdan/preferential/utils/WeiboKeeper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zhangdan/preferential/utils/UpdatePromptTask$OnCompleteListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    new-instance v0, Lcom/zhangdan/preferential/utils/JsonParser;

    invoke-direct {v0, p1}, Lcom/zhangdan/preferential/utils/JsonParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/utils/UpdatePromptTask;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    .line 32
    new-instance v0, Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-direct {v0}, Lcom/zhangdan/preferential/utils/RequestGenerator;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/utils/UpdatePromptTask;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    .line 33
    new-instance v0, Lcom/zhangdan/preferential/utils/WeiboKeeper;

    invoke-direct {v0, p1}, Lcom/zhangdan/preferential/utils/WeiboKeeper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/utils/UpdatePromptTask;->mWeiboKeeper:Lcom/zhangdan/preferential/utils/WeiboKeeper;

    .line 34
    iput-object p2, p0, Lcom/zhangdan/preferential/utils/UpdatePromptTask;->mListener:Lcom/zhangdan/preferential/utils/UpdatePromptTask$OnCompleteListener;

    .line 35
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 39
    aget-object v1, p1, v2

    .line 41
    .local v1, youhuiId:Ljava/lang/String;
    iget-object v3, p0, Lcom/zhangdan/preferential/utils/UpdatePromptTask;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    iget-object v4, p0, Lcom/zhangdan/preferential/utils/UpdatePromptTask;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    iget-object v5, p0, Lcom/zhangdan/preferential/utils/UpdatePromptTask;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-virtual {v5, v1}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getMyBankRequest(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zhangdan/preferential/utils/JsonParser;->parseUser(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateMyBankList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 44
    .local v0, banks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Bank;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/utils/UpdatePromptTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "showPrompt"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/UpdatePromptTask;->mListener:Lcom/zhangdan/preferential/utils/UpdatePromptTask$OnCompleteListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/zhangdan/preferential/utils/UpdatePromptTask$OnCompleteListener;->onShowPrompt(Z)V

    .line 50
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/utils/UpdatePromptTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
