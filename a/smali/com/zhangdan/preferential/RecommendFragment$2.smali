.class Lcom/zhangdan/preferential/RecommendFragment$2;
.super Ljava/lang/Object;
.source "RecommendFragment.java"

# interfaces
.implements Lcom/zhangdan/preferential/utils/PrefReceiverManager$OnReceiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/RecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/RecommendFragment;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/RecommendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/zhangdan/preferential/RecommendFragment$2;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.zhangdan.preferential.UPDATE_CATEGORY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "menu_tag"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/data/model/MenuTag;

    .line 150
    .local v1, tag:Lcom/zhangdan/preferential/data/model/MenuTag;
    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendFragment$2;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    iget v3, v1, Lcom/zhangdan/preferential/data/model/MenuTag;->typeId:I

    #setter for: Lcom/zhangdan/preferential/RecommendFragment;->mTypeId:I
    invoke-static {v2, v3}, Lcom/zhangdan/preferential/RecommendFragment;->access$202(Lcom/zhangdan/preferential/RecommendFragment;I)I

    .line 151
    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendFragment$2;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    #getter for: Lcom/zhangdan/preferential/RecommendFragment;->mActionBarView:Landroid/view/View;
    invoke-static {v2}, Lcom/zhangdan/preferential/RecommendFragment;->access$300(Lcom/zhangdan/preferential/RecommendFragment;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090050

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/zhangdan/preferential/data/model/MenuTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    const-string v2, "\u9644\u8fd1"

    iget-object v3, v1, Lcom/zhangdan/preferential/data/model/MenuTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendFragment$2;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    const-string v3, ""

    #setter for: Lcom/zhangdan/preferential/RecommendFragment;->mTagName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/zhangdan/preferential/RecommendFragment;->access$402(Lcom/zhangdan/preferential/RecommendFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    :goto_0
    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendFragment$2;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    #getter for: Lcom/zhangdan/preferential/RecommendFragment;->mTodayDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/zhangdan/preferential/RecommendFragment;->access$500(Lcom/zhangdan/preferential/RecommendFragment;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendFragment$2;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    #getter for: Lcom/zhangdan/preferential/RecommendFragment;->mTodayDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/zhangdan/preferential/RecommendFragment;->access$500(Lcom/zhangdan/preferential/RecommendFragment;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendFragment$2;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    #calls: Lcom/zhangdan/preferential/RecommendFragment;->updateCategory(Lcom/zhangdan/preferential/data/model/MenuTag;)V
    invoke-static {v2, v1}, Lcom/zhangdan/preferential/RecommendFragment;->access$600(Lcom/zhangdan/preferential/RecommendFragment;Lcom/zhangdan/preferential/data/model/MenuTag;)V

    .line 162
    .end local v1           #tag:Lcom/zhangdan/preferential/data/model/MenuTag;
    :cond_1
    return-void

    .line 155
    .restart local v1       #tag:Lcom/zhangdan/preferential/data/model/MenuTag;
    :cond_2
    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendFragment$2;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    iget-object v3, v1, Lcom/zhangdan/preferential/data/model/MenuTag;->name:Ljava/lang/String;

    #setter for: Lcom/zhangdan/preferential/RecommendFragment;->mTagName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/zhangdan/preferential/RecommendFragment;->access$402(Lcom/zhangdan/preferential/RecommendFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
