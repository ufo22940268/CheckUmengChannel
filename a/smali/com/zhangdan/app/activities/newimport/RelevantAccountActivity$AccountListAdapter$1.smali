.class Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;
.super Ljava/lang/Object;
.source "RelevantAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 203
    .local v1, pos:I
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    #getter for: Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->list:Ljava/util/List;
    invoke-static {v3}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->access$200(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    #getter for: Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->list:Ljava/util/List;
    invoke-static {v3}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->access$200(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 204
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    #getter for: Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->list:Ljava/util/List;
    invoke-static {v3}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->access$200(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/data/model/UserInfo;

    .line 206
    .local v2, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    new-instance v0, Lcom/zhangdan/app/widget/CustomAlertDialog;

    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    iget-object v3, v3, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    invoke-direct {v0, v3}, Lcom/zhangdan/app/widget/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    .line 207
    .local v0, dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    iget-object v3, v3, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    const v4, 0x7f070130

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c0021

    invoke-virtual {v0, v3, v4}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogContent(Ljava/lang/String;I)V

    .line 208
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    iget-object v3, v3, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    iget-object v4, v4, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    const v5, 0x7f070022

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$1;

    invoke-direct {v5, p0, v0, v2}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$1;-><init>(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;Lcom/zhangdan/app/widget/CustomAlertDialog;Lcom/zhangdan/app/data/model/UserInfo;)V

    new-instance v6, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$2;

    invoke-direct {v6, p0, v0}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$2;-><init>(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;Lcom/zhangdan/app/widget/CustomAlertDialog;)V

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 239
    invoke-virtual {v0}, Lcom/zhangdan/app/widget/CustomAlertDialog;->show()V

    .line 241
    .end local v0           #dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    .end local v2           #userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    :cond_0
    return-void
.end method
