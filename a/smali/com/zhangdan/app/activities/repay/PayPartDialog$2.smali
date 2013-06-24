.class Lcom/zhangdan/app/activities/repay/PayPartDialog$2;
.super Ljava/lang/Object;
.source "PayPartDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/repay/PayPartDialog;-><init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/repay/PayPartDialog;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/repay/PayPartDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/zhangdan/app/activities/repay/PayPartDialog$2;->this$0:Lcom/zhangdan/app/activities/repay/PayPartDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zhangdan/app/activities/repay/PayPartDialog$2;->this$0:Lcom/zhangdan/app/activities/repay/PayPartDialog;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/repay/PayPartDialog;->dismiss()V

    .line 52
    return-void
.end method
