.class Lcom/zhangdan/app/activities/remark/BillRemarkActivity$1;
.super Ljava/lang/Object;
.source "BillRemarkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/remark/BillRemarkActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity$1;->this$0:Lcom/zhangdan/app/activities/remark/BillRemarkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity$1;->this$0:Lcom/zhangdan/app/activities/remark/BillRemarkActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->dismissDialog(I)V

    .line 219
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity$1;->this$0:Lcom/zhangdan/app/activities/remark/BillRemarkActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->finish()V

    .line 220
    return-void
.end method
