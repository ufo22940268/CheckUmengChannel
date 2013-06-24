.class Lcom/zhangdan/preferential/PickErrorActivity$SendErrorTask;
.super Landroid/os/AsyncTask;
.source "PickErrorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/PickErrorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendErrorTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/PickErrorActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/PickErrorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/zhangdan/preferential/PickErrorActivity$SendErrorTask;->this$0:Lcom/zhangdan/preferential/PickErrorActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/PickErrorActivity;Lcom/zhangdan/preferential/PickErrorActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/PickErrorActivity$SendErrorTask;-><init>(Lcom/zhangdan/preferential/PickErrorActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/PickErrorActivity$SendErrorTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    .line 100
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 101
    .local v0, typeId:I
    iget-object v1, p0, Lcom/zhangdan/preferential/PickErrorActivity$SendErrorTask;->this$0:Lcom/zhangdan/preferential/PickErrorActivity;

    #getter for: Lcom/zhangdan/preferential/PickErrorActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v1}, Lcom/zhangdan/preferential/PickErrorActivity;->access$300(Lcom/zhangdan/preferential/PickErrorActivity;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/PickErrorActivity$SendErrorTask;->this$0:Lcom/zhangdan/preferential/PickErrorActivity;

    #getter for: Lcom/zhangdan/preferential/PickErrorActivity;->mShopId:Ljava/lang/String;
    invoke-static {v2}, Lcom/zhangdan/preferential/PickErrorActivity;->access$100(Lcom/zhangdan/preferential/PickErrorActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/preferential/PickErrorActivity$SendErrorTask;->this$0:Lcom/zhangdan/preferential/PickErrorActivity;

    #getter for: Lcom/zhangdan/preferential/PickErrorActivity;->mYouhuiUid:Ljava/lang/String;
    invoke-static {v3}, Lcom/zhangdan/preferential/PickErrorActivity;->access$200(Lcom/zhangdan/preferential/PickErrorActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/zhangdan/preferential/utils/JsonParser;->sendErrorMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/PickErrorActivity$SendErrorTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "param"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/zhangdan/preferential/PickErrorActivity$SendErrorTask;->this$0:Lcom/zhangdan/preferential/PickErrorActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/PickErrorActivity;->dismissLoading()V

    .line 108
    iget-object v0, p0, Lcom/zhangdan/preferential/PickErrorActivity$SendErrorTask;->this$0:Lcom/zhangdan/preferential/PickErrorActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/PickErrorActivity;->finish()V

    .line 109
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/zhangdan/preferential/PickErrorActivity$SendErrorTask;->this$0:Lcom/zhangdan/preferential/PickErrorActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/PickErrorActivity;->showLoading()V

    .line 96
    return-void
.end method
