.class Lcom/zhangdan/app/activities/detail/CardDetailActivity$8;
.super Ljava/lang/Object;
.source "CardDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/detail/CardDetailActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$8;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 497
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 498
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$8;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #setter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mMergedCardIndex:I
    invoke-static {v0, p2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$502(Lcom/zhangdan/app/activities/detail/CardDetailActivity;I)I

    .line 499
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$8;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 500
    return-void
.end method
