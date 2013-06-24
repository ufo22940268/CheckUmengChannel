.class Lcom/zhangdan/preferential/ShopListFragment$1;
.super Ljava/lang/Object;
.source "ShopListFragment.java"

# interfaces
.implements Lcom/zhangdan/preferential/utils/PrefReceiverManager$OnReceiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/ShopListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/ShopListFragment;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/ShopListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/zhangdan/preferential/ShopListFragment$1;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, action:Ljava/lang/String;
    const-string v3, "com.zhangdan.preferential.UPDATE_IMAGE_HIDE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopListFragment$1;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    invoke-virtual {v3}, Lcom/zhangdan/preferential/ShopListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 202
    .local v0, act:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 203
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopListFragment$1;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    invoke-static {v0}, Lcom/zhangdan/preferential/data/AppConfig;->isHideImage(Landroid/content/Context;)Z

    move-result v4

    #setter for: Lcom/zhangdan/preferential/ShopListFragment;->mHideImage:Z
    invoke-static {v3, v4}, Lcom/zhangdan/preferential/ShopListFragment;->access$302(Lcom/zhangdan/preferential/ShopListFragment;Z)Z

    .line 204
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopListFragment$1;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mAdapter:Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;
    invoke-static {v3}, Lcom/zhangdan/preferential/ShopListFragment;->access$400(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->notifyDataSetChanged()V

    .line 214
    .end local v0           #act:Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    const-string v3, "com.zhangdan.preferential.UPDATE_CATEGORY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "menu_tag"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/preferential/data/model/MenuTag;

    .line 208
    .local v2, tag:Lcom/zhangdan/preferential/data/model/MenuTag;
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopListFragment$1;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    iget v4, v2, Lcom/zhangdan/preferential/data/model/MenuTag;->typeId:I

    #setter for: Lcom/zhangdan/preferential/ShopListFragment;->mTypeId:I
    invoke-static {v3, v4}, Lcom/zhangdan/preferential/ShopListFragment;->access$502(Lcom/zhangdan/preferential/ShopListFragment;I)I

    .line 209
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopListFragment$1;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mTodayDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/zhangdan/preferential/ShopListFragment;->access$600(Lcom/zhangdan/preferential/ShopListFragment;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 210
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopListFragment$1;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mTodayDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/zhangdan/preferential/ShopListFragment;->access$600(Lcom/zhangdan/preferential/ShopListFragment;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 212
    :cond_2
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopListFragment$1;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #calls: Lcom/zhangdan/preferential/ShopListFragment;->updateCategory(Lcom/zhangdan/preferential/data/model/MenuTag;)V
    invoke-static {v3, v2}, Lcom/zhangdan/preferential/ShopListFragment;->access$700(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/data/model/MenuTag;)V

    goto :goto_0
.end method
