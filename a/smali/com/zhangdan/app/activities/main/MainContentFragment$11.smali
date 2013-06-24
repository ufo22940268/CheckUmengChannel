.class Lcom/zhangdan/app/activities/main/MainContentFragment$11;
.super Ljava/lang/Object;
.source "MainContentFragment.java"

# interfaces
.implements Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailAccountListener;


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
    .line 553
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$11;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMailAccountUpdate()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$11;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    const/4 v1, 0x1

    #setter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mNeedSyncData:Z
    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1302(Lcom/zhangdan/app/activities/main/MainContentFragment;Z)Z

    .line 557
    return-void
.end method
