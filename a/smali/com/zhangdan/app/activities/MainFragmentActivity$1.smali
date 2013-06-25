.class Lcom/zhangdan/app/activities/MainFragmentActivity$1;
.super Ljava/lang/Object;
.source "MainFragmentActivity.java"

# interfaces
.implements Lcom/zhangdan/app/location/BaiduLocation$LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/MainFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/MainFragmentActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/MainFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity$1;->this$0:Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/baidu/location/BDLocation;DDLjava/lang/String;)V
    .locals 1
    .parameter "bdLocation"
    .parameter "longtitude"
    .parameter "latitude"
    .parameter "city"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity$1;->this$0:Lcom/zhangdan/app/activities/MainFragmentActivity;

    #getter for: Lcom/zhangdan/app/activities/MainFragmentActivity;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;
    invoke-static {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->access$000(Lcom/zhangdan/app/activities/MainFragmentActivity;)Lcom/zhangdan/preferential/utils/PositionProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/utils/PositionProvider;->setBDLocation(Lcom/baidu/location/BDLocation;)V

    .line 135
    return-void
.end method
