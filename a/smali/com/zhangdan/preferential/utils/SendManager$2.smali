.class Lcom/zhangdan/preferential/utils/SendManager$2;
.super Ljava/lang/Object;
.source "SendManager.java"

# interfaces
.implements Lcom/weibo/sdk/android/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/preferential/utils/SendManager;->shareToWeibo(Lcom/zhangdan/preferential/utils/SendManager$SendContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/utils/SendManager;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/utils/SendManager;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/SendManager$2;->this$0:Lcom/zhangdan/preferential/utils/SendManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/SendManager$2;->this$0:Lcom/zhangdan/preferential/utils/SendManager;

    #getter for: Lcom/zhangdan/preferential/utils/SendManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zhangdan/preferential/utils/SendManager;->access$300(Lcom/zhangdan/preferential/utils/SendManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 112
    return-void
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboException;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/SendManager$2;->this$0:Lcom/zhangdan/preferential/utils/SendManager;

    #getter for: Lcom/zhangdan/preferential/utils/SendManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zhangdan/preferential/utils/SendManager;->access$300(Lcom/zhangdan/preferential/utils/SendManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 120
    return-void
.end method

.method public onIOException(Ljava/io/IOException;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/SendManager$2;->this$0:Lcom/zhangdan/preferential/utils/SendManager;

    #getter for: Lcom/zhangdan/preferential/utils/SendManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zhangdan/preferential/utils/SendManager;->access$300(Lcom/zhangdan/preferential/utils/SendManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 116
    return-void
.end method
