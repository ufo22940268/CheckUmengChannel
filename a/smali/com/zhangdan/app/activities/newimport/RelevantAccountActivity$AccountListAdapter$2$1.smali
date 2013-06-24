.class Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2$1;
.super Ljava/lang/Object;
.source "RelevantAccountActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2$1;->this$2:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2;

    iput-object p2, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 251
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 252
    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2$1;->val$v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 253
    .local v0, pos:I
    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2$1;->this$2:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2;

    iget-object v4, v4, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    #getter for: Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->list:Ljava/util/List;
    invoke-static {v4}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->access$200(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2$1;->this$2:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2;

    iget-object v4, v4, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    #getter for: Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->list:Ljava/util/List;
    invoke-static {v4}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->access$200(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 254
    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2$1;->this$2:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2;

    iget-object v4, v4, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    #getter for: Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->list:Ljava/util/List;
    invoke-static {v4}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->access$200(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/data/model/UserInfo;

    .line 255
    .local v3, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, userId:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, token:Ljava/lang/String;
    new-instance v4, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$DeleteMailAccountTask;

    iget-object v5, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2$1;->this$2:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2;

    iget-object v5, v5, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    iget-object v5, v5, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    invoke-direct {v4, v5}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$DeleteMailAccountTask;-><init>(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)V

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2$1;->this$2:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2;

    iget-object v7, v7, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    iget-object v7, v7, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    #getter for: Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->mMailAccount:Ljava/lang/String;
    invoke-static {v7}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->access$300(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$DeleteMailAccountTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 259
    .end local v1           #token:Ljava/lang/String;
    .end local v2           #userId:Ljava/lang/String;
    .end local v3           #userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    :cond_0
    return-void
.end method
