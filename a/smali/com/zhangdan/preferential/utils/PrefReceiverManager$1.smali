.class Lcom/zhangdan/preferential/utils/PrefReceiverManager$1;
.super Landroid/content/BroadcastReceiver;
.source "PrefReceiverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/utils/PrefReceiverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/utils/PrefReceiverManager;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/utils/PrefReceiverManager;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/PrefReceiverManager$1;->this$0:Lcom/zhangdan/preferential/utils/PrefReceiverManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 46
    iget-object v2, p0, Lcom/zhangdan/preferential/utils/PrefReceiverManager$1;->this$0:Lcom/zhangdan/preferential/utils/PrefReceiverManager;

    #getter for: Lcom/zhangdan/preferential/utils/PrefReceiverManager;->mListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/zhangdan/preferential/utils/PrefReceiverManager;->access$000(Lcom/zhangdan/preferential/utils/PrefReceiverManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/utils/PrefReceiverManager$OnReceiveListener;

    .line 47
    .local v1, listener:Lcom/zhangdan/preferential/utils/PrefReceiverManager$OnReceiveListener;
    invoke-interface {v1, p2}, Lcom/zhangdan/preferential/utils/PrefReceiverManager$OnReceiveListener;->onReceive(Landroid/content/Intent;)V

    goto :goto_0

    .line 49
    .end local v1           #listener:Lcom/zhangdan/preferential/utils/PrefReceiverManager$OnReceiveListener;
    :cond_0
    return-void
.end method
