.class Lcom/zhangdan/banka/view/ComJSInterface$9;
.super Ljava/lang/Object;
.source "ComJSInterface.java"

# interfaces
.implements Lcom/zhangdan/banka/location/BaiduLocation$LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/banka/view/ComJSInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/banka/view/ComJSInterface;


# direct methods
.method constructor <init>(Lcom/zhangdan/banka/view/ComJSInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/zhangdan/banka/view/ComJSInterface$9;->this$0:Lcom/zhangdan/banka/view/ComJSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(DDLjava/lang/String;)V
    .locals 6
    .parameter "longtitude"
    .parameter "latitude"
    .parameter "city"

    .prologue
    .line 421
    const-string v3, "ComJSInterface"

    const-string v4, "onLocationChanged..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v3, p0, Lcom/zhangdan/banka/view/ComJSInterface$9;->this$0:Lcom/zhangdan/banka/view/ComJSInterface;

    #getter for: Lcom/zhangdan/banka/view/ComJSInterface;->mBdLocation:Lcom/zhangdan/banka/location/BaiduLocation;
    invoke-static {v3}, Lcom/zhangdan/banka/view/ComJSInterface;->access$300(Lcom/zhangdan/banka/view/ComJSInterface;)Lcom/zhangdan/banka/location/BaiduLocation;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 423
    iget-object v3, p0, Lcom/zhangdan/banka/view/ComJSInterface$9;->this$0:Lcom/zhangdan/banka/view/ComJSInterface;

    #getter for: Lcom/zhangdan/banka/view/ComJSInterface;->mBdLocation:Lcom/zhangdan/banka/location/BaiduLocation;
    invoke-static {v3}, Lcom/zhangdan/banka/view/ComJSInterface;->access$300(Lcom/zhangdan/banka/view/ComJSInterface;)Lcom/zhangdan/banka/location/BaiduLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zhangdan/banka/location/BaiduLocation;->stopLocation()V

    .line 424
    iget-object v3, p0, Lcom/zhangdan/banka/view/ComJSInterface$9;->this$0:Lcom/zhangdan/banka/view/ComJSInterface;

    const/4 v4, 0x0

    #setter for: Lcom/zhangdan/banka/view/ComJSInterface;->mBdLocation:Lcom/zhangdan/banka/location/BaiduLocation;
    invoke-static {v3, v4}, Lcom/zhangdan/banka/view/ComJSInterface;->access$302(Lcom/zhangdan/banka/view/ComJSInterface;Lcom/zhangdan/banka/location/BaiduLocation;)Lcom/zhangdan/banka/location/BaiduLocation;

    .line 426
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 428
    .local v1, obj:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "lat"

    invoke-virtual {v1, v3, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 429
    const-string v3, "lon"

    invoke-virtual {v1, v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, "Location"

    invoke-static {v3, v4, v5, v1}, Lcom/zhangdan/banka/utils/RespJsonUtil;->constructResp(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, str:Ljava/lang/String;
    iget-object v3, p0, Lcom/zhangdan/banka/view/ComJSInterface$9;->this$0:Lcom/zhangdan/banka/view/ComJSInterface;

    iget-object v4, p0, Lcom/zhangdan/banka/view/ComJSInterface$9;->this$0:Lcom/zhangdan/banka/view/ComJSInterface;

    #getter for: Lcom/zhangdan/banka/view/ComJSInterface;->mGetLocationCallBackId:Ljava/lang/String;
    invoke-static {v4}, Lcom/zhangdan/banka/view/ComJSInterface;->access$400(Lcom/zhangdan/banka/view/ComJSInterface;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/zhangdan/banka/view/ComJSInterface;->callbackJsMethod(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return-void

    .line 430
    .end local v2           #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 431
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
