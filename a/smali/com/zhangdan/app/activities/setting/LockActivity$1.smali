.class Lcom/zhangdan/app/activities/setting/LockActivity$1;
.super Ljava/lang/Object;
.source "LockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/setting/LockActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/setting/LockActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/setting/LockActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/zhangdan/app/activities/setting/LockActivity$1;->this$0:Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity$1;->this$0:Lcom/zhangdan/app/activities/setting/LockActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/setting/LockActivity;->dismissDialog(I)V

    .line 95
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LockActivity$1;->this$0:Lcom/zhangdan/app/activities/setting/LockActivity;

    #calls: Lcom/zhangdan/app/activities/setting/LockActivity;->exitApp()V
    invoke-static {v0}, Lcom/zhangdan/app/activities/setting/LockActivity;->access$000(Lcom/zhangdan/app/activities/setting/LockActivity;)V

    .line 96
    return-void
.end method
