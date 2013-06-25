.class Lcom/zhangdan/app/activities/detail/PartPaidActivity$2;
.super Ljava/lang/Object;
.source "PartPaidActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/detail/PartPaidActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/detail/PartPaidActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/PartPaidActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$2;->this$0:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/PartPaidActivity$2;->this$0:Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/detail/PartPaidActivity;->removeDialog(I)V

    .line 174
    return-void
.end method
