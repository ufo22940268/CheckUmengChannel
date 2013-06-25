.class public interface abstract Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;
.super Ljava/lang/Object;
.source "BroadcastReceiveMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDownloadProgressListener"
.end annotation


# virtual methods
.method public abstract onDownloadEnd(Landroid/os/Bundle;)V
.end method

.method public abstract onDownloadNotifyMsg(Landroid/os/Bundle;)V
.end method

.method public abstract onDownloadStart()V
.end method
