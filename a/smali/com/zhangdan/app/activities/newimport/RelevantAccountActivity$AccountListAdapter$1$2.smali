.class Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$2;
.super Ljava/lang/Object;
.source "RelevantAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;

.field final synthetic val$dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;Lcom/zhangdan/app/widget/CustomAlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$2;->this$2:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1;

    iput-object p2, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$2;->val$dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter$1$2;->val$dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/CustomAlertDialog;->dismiss()V

    .line 237
    return-void
.end method
