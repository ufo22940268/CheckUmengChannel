.class Lcom/zhangdan/app/activities/main/MainContentFragment$10;
.super Ljava/lang/Object;
.source "MainContentFragment.java"

# interfaces
.implements Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnNewBillListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/main/MainContentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/main/MainContentFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$10;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewBill(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 548
    const-string v0, "MenuTopView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new bill count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$10;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->onClickActionBarRefresh()V

    .line 550
    return-void
.end method
