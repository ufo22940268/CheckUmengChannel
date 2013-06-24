.class Lcom/zhangdan/app/activities/main/MainContentFragment$12;
.super Ljava/lang/Object;
.source "MainContentFragment.java"

# interfaces
.implements Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;


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
    .line 560
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$12;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvatarChanged()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$12;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$12;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    #calls: Lcom/zhangdan/app/activities/main/MainContentFragment;->initAvatar(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1500(Lcom/zhangdan/app/activities/main/MainContentFragment;Landroid/content/Context;)V

    .line 564
    return-void
.end method
