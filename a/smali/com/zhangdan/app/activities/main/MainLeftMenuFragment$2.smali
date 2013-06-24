.class Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$2;
.super Ljava/lang/Object;
.source "MainLeftMenuFragment.java"

# interfaces
.implements Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$2;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvatarChanged()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$2;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    #calls: Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->initAvatar()V
    invoke-static {v0}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->access$400(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)V

    .line 271
    return-void
.end method
