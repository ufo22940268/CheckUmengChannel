.class Lcom/zhangdan/app/activities/repay/NotNeedPayDialog$2;
.super Ljava/lang/Object;
.source "NotNeedPayDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/repay/NotNeedPayDialog;-><init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/repay/NotNeedPayDialog;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/repay/NotNeedPayDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/zhangdan/app/activities/repay/NotNeedPayDialog$2;->this$0:Lcom/zhangdan/app/activities/repay/NotNeedPayDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zhangdan/app/activities/repay/NotNeedPayDialog$2;->this$0:Lcom/zhangdan/app/activities/repay/NotNeedPayDialog;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/repay/NotNeedPayDialog;->dismiss()V

    .line 39
    return-void
.end method
