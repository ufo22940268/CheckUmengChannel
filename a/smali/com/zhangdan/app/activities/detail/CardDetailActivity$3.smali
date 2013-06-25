.class Lcom/zhangdan/app/activities/detail/CardDetailActivity$3;
.super Ljava/lang/Object;
.source "CardDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 432
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$3;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$3;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->dismissDialog(I)V

    .line 436
    return-void
.end method
