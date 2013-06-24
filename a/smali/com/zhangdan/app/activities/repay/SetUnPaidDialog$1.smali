.class Lcom/zhangdan/app/activities/repay/SetUnPaidDialog$1;
.super Ljava/lang/Object;
.source "SetUnPaidDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/repay/SetUnPaidDialog;-><init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/repay/SetUnPaidDialog;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/repay/SetUnPaidDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/zhangdan/app/activities/repay/SetUnPaidDialog$1;->this$0:Lcom/zhangdan/app/activities/repay/SetUnPaidDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zhangdan/app/activities/repay/SetUnPaidDialog$1;->this$0:Lcom/zhangdan/app/activities/repay/SetUnPaidDialog;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/repay/SetUnPaidDialog;->dismiss()V

    .line 26
    return-void
.end method
