.class Lcom/zhangdan/preferential/utils/WeiboManager$ToastTask;
.super Landroid/os/AsyncTask;
.source "WeiboManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/utils/WeiboManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToastTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lorg/json/JSONObject;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mToastRes:I

.field final synthetic this$0:Lcom/zhangdan/preferential/utils/WeiboManager;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/utils/WeiboManager;I)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/WeiboManager$ToastTask;->this$0:Lcom/zhangdan/preferential/utils/WeiboManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 78
    iput p2, p0, Lcom/zhangdan/preferential/utils/WeiboManager$ToastTask;->mToastRes:I

    .line 79
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    check-cast p1, [Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/utils/WeiboManager$ToastTask;->doInBackground([Lorg/json/JSONObject;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lorg/json/JSONObject;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 83
    iget-object v1, p0, Lcom/zhangdan/preferential/utils/WeiboManager$ToastTask;->this$0:Lcom/zhangdan/preferential/utils/WeiboManager;

    #getter for: Lcom/zhangdan/preferential/utils/WeiboManager;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v1}, Lcom/zhangdan/preferential/utils/WeiboManager;->access$000(Lcom/zhangdan/preferential/utils/WeiboManager;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/utils/JsonParser;->parseUser(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 84
    .local v0, result:Lorg/json/JSONObject;
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/utils/WeiboManager$ToastTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/WeiboManager$ToastTask;->this$0:Lcom/zhangdan/preferential/utils/WeiboManager;

    #getter for: Lcom/zhangdan/preferential/utils/WeiboManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zhangdan/preferential/utils/WeiboManager;->access$100(Lcom/zhangdan/preferential/utils/WeiboManager;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/preferential/utils/WeiboManager$ToastTask;->mToastRes:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    return-void
.end method
