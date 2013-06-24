.class Lcom/zhangdan/app/activities/chart/NameListDialogFragment$1;
.super Ljava/lang/Object;
.source "NameListDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/chart/NameListDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/chart/NameListDialogFragment;

.field final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/chart/NameListDialogFragment;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/NameListDialogFragment$1;->this$0:Lcom/zhangdan/app/activities/chart/NameListDialogFragment;

    iput-object p2, p0, Lcom/zhangdan/app/activities/chart/NameListDialogFragment$1;->val$items:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/NameListDialogFragment$1;->this$0:Lcom/zhangdan/app/activities/chart/NameListDialogFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/NameListDialogFragment;->mOnCardNameSelectedListener:Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;
    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/NameListDialogFragment;->access$000(Lcom/zhangdan/app/activities/chart/NameListDialogFragment;)Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/NameListDialogFragment$1;->this$0:Lcom/zhangdan/app/activities/chart/NameListDialogFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/NameListDialogFragment;->mOnCardNameSelectedListener:Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;
    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/NameListDialogFragment;->access$000(Lcom/zhangdan/app/activities/chart/NameListDialogFragment;)Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;

    move-result-object v1

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;->onCardNameSelected(Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/NameListDialogFragment$1;->val$items:[Ljava/lang/String;

    aget-object v0, v0, p2

    goto :goto_0
.end method
