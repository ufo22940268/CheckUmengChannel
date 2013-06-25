.class public Lcom/zhangdan/preferential/utils/LocationGenerator$MyLocationListenner;
.super Ljava/lang/Object;
.source "LocationGenerator.java"

# interfaces
.implements Lcom/baidu/location/BDLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/utils/LocationGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyLocationListenner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/utils/LocationGenerator;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/utils/LocationGenerator;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/LocationGenerator$MyLocationListenner;->this$0:Lcom/zhangdan/preferential/utils/LocationGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/LocationGenerator$MyLocationListenner;->this$0:Lcom/zhangdan/preferential/utils/LocationGenerator;

    #getter for: Lcom/zhangdan/preferential/utils/LocationGenerator;->mLocationClient:Lcom/baidu/location/LocationClient;
    invoke-static {v0}, Lcom/zhangdan/preferential/utils/LocationGenerator;->access$000(Lcom/zhangdan/preferential/utils/LocationGenerator;)Lcom/baidu/location/LocationClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    .line 65
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/LocationGenerator$MyLocationListenner;->this$0:Lcom/zhangdan/preferential/utils/LocationGenerator;

    #calls: Lcom/zhangdan/preferential/utils/LocationGenerator;->setPosition(Lcom/baidu/location/BDLocation;)V
    invoke-static {v0, p1}, Lcom/zhangdan/preferential/utils/LocationGenerator;->access$100(Lcom/zhangdan/preferential/utils/LocationGenerator;Lcom/baidu/location/BDLocation;)V

    .line 66
    return-void
.end method

.method public onReceivePoi(Lcom/baidu/location/BDLocation;)V
    .locals 0
    .parameter "poiLocation"

    .prologue
    .line 70
    return-void
.end method
