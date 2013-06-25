.class Lcom/zhangdan/app/widget/LoadingDialog$1;
.super Ljava/lang/Object;
.source "LoadingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/widget/LoadingDialog;->setOnClickCancelListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/widget/LoadingDialog;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/widget/LoadingDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/zhangdan/app/widget/LoadingDialog$1;->this$0:Lcom/zhangdan/app/widget/LoadingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/zhangdan/app/widget/LoadingDialog$1;->this$0:Lcom/zhangdan/app/widget/LoadingDialog;

    #getter for: Lcom/zhangdan/app/widget/LoadingDialog;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/zhangdan/app/widget/LoadingDialog;->access$000(Lcom/zhangdan/app/widget/LoadingDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/zhangdan/app/widget/LoadingDialog$1;->this$0:Lcom/zhangdan/app/widget/LoadingDialog;

    #getter for: Lcom/zhangdan/app/widget/LoadingDialog;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/zhangdan/app/widget/LoadingDialog;->access$000(Lcom/zhangdan/app/widget/LoadingDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 65
    :cond_0
    return-void
.end method
