.class Lcom/zhangdan/app/activities/remark/CategoryActivity$1;
.super Ljava/lang/Object;
.source "CategoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/remark/CategoryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/remark/CategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$1;->this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 52
    iget-object v7, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$1;->this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-virtual {v7}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/zhangdan/app/data/db/util/ConsumeCategoryDbUtil;->getCategory(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 53
    .local v1, categoryList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Category;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v3, groupList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/Category;

    .line 57
    .local v0, cat:Lcom/zhangdan/app/data/model/http/Category;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/Category;->getParntId()I

    move-result v7

    if-ne v7, v9, :cond_2

    .line 58
    new-instance v2, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;

    iget-object v7, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$1;->this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-direct {v2, v7}, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;-><init>(Lcom/zhangdan/app/activities/remark/CategoryActivity;)V

    .line 59
    .local v2, group:Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;
    invoke-virtual {v2, v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->setCategory(Lcom/zhangdan/app/data/model/http/Category;)V

    .line 60
    invoke-virtual {v2, v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->addCategory(Lcom/zhangdan/app/data/model/http/Category;)V

    .line 61
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 64
    .end local v0           #cat:Lcom/zhangdan/app/data/model/http/Category;
    .end local v2           #group:Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/Category;

    .line 65
    .restart local v0       #cat:Lcom/zhangdan/app/data/model/http/Category;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/Category;->getParntId()I

    move-result v7

    if-eq v7, v9, :cond_4

    .line 66
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;

    .line 67
    .restart local v2       #group:Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/Category;->getParntId()I

    move-result v7

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->getGroupId()I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 68
    invoke-virtual {v2, v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->addCategory(Lcom/zhangdan/app/data/model/http/Category;)V

    goto :goto_2

    .line 74
    .end local v0           #cat:Lcom/zhangdan/app/data/model/http/Category;
    .end local v2           #group:Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;

    .line 75
    .restart local v2       #group:Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;
    invoke-virtual {v2}, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->initSubName()V

    .line 76
    invoke-virtual {v2}, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->getGroupId()I

    move-result v7

    invoke-static {v7}, Lcom/zhangdan/app/data/CategoryIconRes;->getIconByParentId(I)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->setIconResId(I)V

    goto :goto_3

    .line 79
    .end local v2           #group:Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;
    :cond_7
    iget-object v7, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$1;->this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    #getter for: Lcom/zhangdan/app/activities/remark/CategoryActivity;->mHandler:Lcom/zhangdan/app/activities/remark/CategoryActivity$MyHandler;
    invoke-static {v7}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->access$000(Lcom/zhangdan/app/activities/remark/CategoryActivity;)Lcom/zhangdan/app/activities/remark/CategoryActivity$MyHandler;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/zhangdan/app/activities/remark/CategoryActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 80
    .local v6, msg:Landroid/os/Message;
    iput-object v3, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    iget-object v7, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$1;->this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    #getter for: Lcom/zhangdan/app/activities/remark/CategoryActivity;->mHandler:Lcom/zhangdan/app/activities/remark/CategoryActivity$MyHandler;
    invoke-static {v7}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->access$000(Lcom/zhangdan/app/activities/remark/CategoryActivity;)Lcom/zhangdan/app/activities/remark/CategoryActivity$MyHandler;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/zhangdan/app/activities/remark/CategoryActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
