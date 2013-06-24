.class Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2;
.super Ljava/lang/Object;
.source "RelevantAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 244
    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 247
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    iget-object v1, v1, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 248
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2;->this$1:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    iget-object v3, v3, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    const v4, 0x7f07012f

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2$1;

    invoke-direct {v2, p0, p1}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2$1;-><init>(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$2;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 261
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 262
    return v5
.end method
