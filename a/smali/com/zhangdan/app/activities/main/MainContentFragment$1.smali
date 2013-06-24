.class Lcom/zhangdan/app/activities/main/MainContentFragment$1;
.super Ljava/lang/Object;
.source "MainContentFragment.java"

# interfaces
.implements Lcom/zhangdan/app/location/BaiduLocation$LocationListener;


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
    .line 170
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/baidu/location/BDLocation;DDLjava/lang/String;)V
    .locals 3
    .parameter "bdLocation"
    .parameter "longtitude"
    .parameter "latitude"
    .parameter "city"

    .prologue
    const/4 v1, 0x1

    .line 175
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mLocFlag:Z
    invoke-static {v0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$100(Lcom/zhangdan/app/activities/main/MainContentFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #setter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mLocFlag:Z
    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$102(Lcom/zhangdan/app/activities/main/MainContentFragment;Z)Z

    .line 178
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mInitBannerTask:Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;
    invoke-static {v0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$200(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mInitBannerTask:Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;
    invoke-static {v0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$200(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p6, v1, v2

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 180
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    const/4 v1, 0x0

    #setter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mInitBannerTask:Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;
    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$202(Lcom/zhangdan/app/activities/main/MainContentFragment;Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;)Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;

    goto :goto_0
.end method
