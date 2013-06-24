.class public Lcom/zhangdan/banka/view/ComJSInterface;
.super Ljava/lang/Object;
.source "ComJSInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/banka/view/ComJSInterface$BaseUiListener;,
        Lcom/zhangdan/banka/view/ComJSInterface$AuthDialogListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ComJSInterface"


# instance fields
.field private mActivity:Lcom/zhangdan/banka/activities/BankaActivity;

.field private mBdLocation:Lcom/zhangdan/banka/location/BaiduLocation;

.field private mGetLocationCallBackId:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLocationListener:Lcom/zhangdan/banka/location/BaiduLocation$LocationListener;

.field private mQQLoginCallBackId:Ljava/lang/String;

.field private mSinaLoginCallBackId:Ljava/lang/String;

.field private mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

.field private mTakePhotoCallBackId:Ljava/lang/String;

.field private mTencent:Lcom/tencent/tauth/Tencent;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/zhangdan/banka/activities/BankaActivity;Landroid/webkit/WebView;)V
    .locals 1
    .parameter "context"
    .parameter "webView"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mHandler:Landroid/os/Handler;

    .line 417
    new-instance v0, Lcom/zhangdan/banka/view/ComJSInterface$9;

    invoke-direct {v0, p0}, Lcom/zhangdan/banka/view/ComJSInterface$9;-><init>(Lcom/zhangdan/banka/view/ComJSInterface;)V

    iput-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mLocationListener:Lcom/zhangdan/banka/location/BaiduLocation$LocationListener;

    .line 52
    iput-object p1, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;

    .line 53
    iput-object p2, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mWebView:Landroid/webkit/WebView;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/banka/view/ComJSInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/banka/view/ComJSInterface;->doQQLogin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zhangdan/banka/view/ComJSInterface;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zhangdan/banka/view/ComJSInterface;)Lcom/zhangdan/banka/activities/BankaActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/banka/view/ComJSInterface;)Lcom/zhangdan/banka/location/BaiduLocation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mBdLocation:Lcom/zhangdan/banka/location/BaiduLocation;

    return-object v0
.end method

.method static synthetic access$302(Lcom/zhangdan/banka/view/ComJSInterface;Lcom/zhangdan/banka/location/BaiduLocation;)Lcom/zhangdan/banka/location/BaiduLocation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mBdLocation:Lcom/zhangdan/banka/location/BaiduLocation;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zhangdan/banka/view/ComJSInterface;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mGetLocationCallBackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zhangdan/banka/view/ComJSInterface;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mSinaLoginCallBackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/zhangdan/banka/view/ComJSInterface;Lcom/weibo/sdk/android/sso/SsoHandler;)Lcom/weibo/sdk/android/sso/SsoHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    return-object p1
.end method

.method static synthetic access$800(Lcom/zhangdan/banka/view/ComJSInterface;)Lcom/tencent/tauth/Tencent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mTencent:Lcom/tencent/tauth/Tencent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zhangdan/banka/view/ComJSInterface;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mQQLoginCallBackId:Ljava/lang/String;

    return-object v0
.end method

.method private callNativeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 27
    .parameter "method"
    .parameter "callbackId"
    .parameter "args"

    .prologue
    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const-string v23, "getDeviceInfo"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/zhangdan/banka/view/ComJSInterface;->getDeviceInfo(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v16

    .line 117
    .local v16, resp:Lorg/json/JSONObject;
    const-string v23, "ComJSInterface"

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/16 v23, 0x0

    const-string v24, ""

    const-string v25, "DeviceInfo"

    move/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/zhangdan/banka/utils/RespJsonUtil;->constructResp(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v18

    .line 119
    .local v18, str:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/banka/view/ComJSInterface;->callbackJsMethod(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    .end local v16           #resp:Lorg/json/JSONObject;
    .end local v18           #str:Ljava/lang/String;
    :cond_2
    const-string v23, "hideDefaultImage"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/banka/view/ComJSInterface;->hideDefaultImage()V

    goto :goto_0

    .line 122
    :cond_3
    const-string v23, "showDefaultImage"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/banka/view/ComJSInterface;->showDefaultImage()V

    goto :goto_0

    .line 124
    :cond_4
    const-string v23, "getPhoto"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 125
    const/16 v22, 0x0

    .line 126
    .local v22, w:I
    const/4 v10, 0x0

    .line 127
    .local v10, h:I
    const/4 v14, 0x0

    .line 129
    .local v14, quality:I
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 130
    .local v13, obj:Lorg/json/JSONObject;
    const-string v23, "width"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 131
    const-string v23, "height"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 132
    const-string v23, "quality"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 136
    .end local v13           #obj:Lorg/json/JSONObject;
    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zhangdan/banka/view/ComJSInterface;->mTakePhotoCallBackId:Ljava/lang/String;

    .line 137
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v10, v14}, Lcom/zhangdan/banka/view/ComJSInterface;->getPhoto(III)V

    goto/16 :goto_0

    .line 133
    :catch_0
    move-exception v9

    .line 134
    .local v9, e:Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 138
    .end local v9           #e:Lorg/json/JSONException;
    .end local v10           #h:I
    .end local v14           #quality:I
    .end local v22           #w:I
    :cond_5
    const-string v23, "weiboLogin"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 140
    :try_start_1
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    .restart local v13       #obj:Lorg/json/JSONObject;
    const-string v23, "app_key"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, appKey:Ljava/lang/String;
    const-string v23, "redirect_uri"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 143
    .local v15, redirectUrl:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zhangdan/banka/view/ComJSInterface;->mSinaLoginCallBackId:Ljava/lang/String;

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/banka/view/ComJSInterface;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    new-instance v24, Lcom/zhangdan/banka/view/ComJSInterface$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v15}, Lcom/zhangdan/banka/view/ComJSInterface$1;-><init>(Lcom/zhangdan/banka/view/ComJSInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 150
    .end local v5           #appKey:Ljava/lang/String;
    .end local v13           #obj:Lorg/json/JSONObject;
    .end local v15           #redirectUrl:Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 151
    .restart local v9       #e:Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 153
    .end local v9           #e:Lorg/json/JSONException;
    :cond_6
    const-string v23, "qqLogin"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 155
    :try_start_2
    const-string v23, "ComJSInterface"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "QQ : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 157
    .restart local v13       #obj:Lorg/json/JSONObject;
    const-string v23, "app_key"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, appId:Ljava/lang/String;
    const-string v23, "scope"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 159
    .local v17, scope:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zhangdan/banka/view/ComJSInterface;->mQQLoginCallBackId:Ljava/lang/String;

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/banka/view/ComJSInterface;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    new-instance v24, Lcom/zhangdan/banka/view/ComJSInterface$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v4, v2}, Lcom/zhangdan/banka/view/ComJSInterface$2;-><init>(Lcom/zhangdan/banka/view/ComJSInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 166
    .end local v4           #appId:Ljava/lang/String;
    .end local v13           #obj:Lorg/json/JSONObject;
    .end local v17           #scope:Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 167
    .restart local v9       #e:Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 169
    .end local v9           #e:Lorg/json/JSONException;
    :cond_7
    const-string v23, "exitApp"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/banka/view/ComJSInterface;->exitApp()V

    goto/16 :goto_0

    .line 171
    :cond_8
    const-string v23, "getLocation"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 172
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zhangdan/banka/view/ComJSInterface;->mGetLocationCallBackId:Ljava/lang/String;

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/banka/view/ComJSInterface;->getLocation()V

    goto/16 :goto_0

    .line 174
    :cond_9
    const-string v23, "setKeyValue"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 176
    :try_start_3
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 177
    .restart local v13       #obj:Lorg/json/JSONObject;
    const-string v23, "key"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 178
    .local v11, k:Ljava/lang/String;
    const-string v23, "value"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 179
    .local v20, v:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Lcom/zhangdan/banka/view/ComJSInterface;->setKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/16 v23, 0x0

    const-string v24, ""

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v23 .. v26}, Lcom/zhangdan/banka/utils/RespJsonUtil;->constructResp(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v18

    .line 181
    .restart local v18       #str:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/banka/view/ComJSInterface;->callbackJsMethod(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 182
    .end local v11           #k:Ljava/lang/String;
    .end local v13           #obj:Lorg/json/JSONObject;
    .end local v18           #str:Ljava/lang/String;
    .end local v20           #v:Ljava/lang/String;
    :catch_3
    move-exception v9

    .line 183
    .restart local v9       #e:Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 185
    .end local v9           #e:Lorg/json/JSONException;
    :cond_a
    const-string v23, "getKeyValue"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 187
    :try_start_4
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 188
    .restart local v13       #obj:Lorg/json/JSONObject;
    const-string v23, "key"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 189
    .restart local v11       #k:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/zhangdan/banka/view/ComJSInterface;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 190
    .local v21, value:Ljava/lang/String;
    const/16 v23, 0x0

    const-string v24, ""

    const-string v25, "value"

    move/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/zhangdan/banka/utils/RespJsonUtil;->constructRespWithStr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 191
    .restart local v18       #str:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/banka/view/ComJSInterface;->callbackJsMethod(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 192
    .end local v11           #k:Ljava/lang/String;
    .end local v13           #obj:Lorg/json/JSONObject;
    .end local v18           #str:Ljava/lang/String;
    .end local v21           #value:Ljava/lang/String;
    :catch_4
    move-exception v9

    .line 193
    .restart local v9       #e:Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 195
    .end local v9           #e:Lorg/json/JSONException;
    :cond_b
    const-string v23, "removeKeyValue"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 197
    :try_start_5
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 198
    .restart local v13       #obj:Lorg/json/JSONObject;
    const-string v23, "key"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 199
    .restart local v11       #k:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/zhangdan/banka/view/ComJSInterface;->removeKeyValue(Ljava/lang/String;)V

    .line 200
    const/16 v23, 0x0

    const-string v24, ""

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v23 .. v26}, Lcom/zhangdan/banka/utils/RespJsonUtil;->constructResp(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v18

    .line 201
    .restart local v18       #str:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/banka/view/ComJSInterface;->callbackJsMethod(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 202
    .end local v11           #k:Ljava/lang/String;
    .end local v13           #obj:Lorg/json/JSONObject;
    .end local v18           #str:Ljava/lang/String;
    :catch_5
    move-exception v9

    .line 203
    .restart local v9       #e:Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 205
    .end local v9           #e:Lorg/json/JSONException;
    :cond_c
    const-string v23, "alert"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 207
    :try_start_6
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 208
    .restart local v13       #obj:Lorg/json/JSONObject;
    const-string v23, "title"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 209
    .local v19, title:Ljava/lang/String;
    const-string v23, "msg"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 210
    .local v12, msg:Ljava/lang/String;
    const-string v23, "buttons"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 211
    .local v8, buttons:Ljava/lang/String;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 212
    .local v7, builder:Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 213
    invoke-virtual {v7, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 214
    const/4 v6, 0x0

    .line 216
    .local v6, btnArr:[Ljava/lang/String;
    :try_start_7
    const-string v23, ","

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    move-result-object v6

    .line 220
    :goto_2
    if-eqz v6, :cond_d

    :try_start_8
    array-length v0, v6

    move/from16 v23, v0

    if-nez v23, :cond_e

    .line 221
    :cond_d
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v6, v0, [Ljava/lang/String;

    .end local v6           #btnArr:[Ljava/lang/String;
    const/16 v23, 0x0

    aput-object v8, v6, v23

    .line 222
    .restart local v6       #btnArr:[Ljava/lang/String;
    :cond_e
    const-string v23, "ComJSInterface"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "confirm : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    array-length v0, v6

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/16 v23, 0x0

    aget-object v23, v6, v23

    new-instance v24, Lcom/zhangdan/banka/view/ComJSInterface$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/banka/view/ComJSInterface$3;-><init>(Lcom/zhangdan/banka/view/ComJSInterface;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 230
    array-length v0, v6

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_f

    .line 231
    const/16 v23, 0x1

    aget-object v23, v6, v23

    new-instance v24, Lcom/zhangdan/banka/view/ComJSInterface$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/banka/view/ComJSInterface$4;-><init>(Lcom/zhangdan/banka/view/ComJSInterface;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    :cond_f
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog;->show()V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    .line 240
    .end local v6           #btnArr:[Ljava/lang/String;
    .end local v7           #builder:Landroid/app/AlertDialog$Builder;
    .end local v8           #buttons:Ljava/lang/String;
    .end local v12           #msg:Ljava/lang/String;
    .end local v13           #obj:Lorg/json/JSONObject;
    .end local v19           #title:Ljava/lang/String;
    :catch_6
    move-exception v9

    .line 241
    .restart local v9       #e:Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 217
    .end local v9           #e:Lorg/json/JSONException;
    .restart local v6       #btnArr:[Ljava/lang/String;
    .restart local v7       #builder:Landroid/app/AlertDialog$Builder;
    .restart local v8       #buttons:Ljava/lang/String;
    .restart local v12       #msg:Ljava/lang/String;
    .restart local v13       #obj:Lorg/json/JSONObject;
    .restart local v19       #title:Ljava/lang/String;
    :catch_7
    move-exception v9

    .line 218
    .local v9, e:Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_2

    .line 243
    .end local v6           #btnArr:[Ljava/lang/String;
    .end local v7           #builder:Landroid/app/AlertDialog$Builder;
    .end local v8           #buttons:Ljava/lang/String;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v12           #msg:Ljava/lang/String;
    .end local v13           #obj:Lorg/json/JSONObject;
    .end local v19           #title:Ljava/lang/String;
    :cond_10
    const-string v23, "confirm"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 245
    :try_start_a
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 246
    .restart local v13       #obj:Lorg/json/JSONObject;
    const-string v23, "title"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 247
    .restart local v19       #title:Ljava/lang/String;
    const-string v23, "msg"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 248
    .restart local v12       #msg:Ljava/lang/String;
    const-string v23, "buttons"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 249
    .restart local v8       #buttons:Ljava/lang/String;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    .restart local v7       #builder:Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 251
    invoke-virtual {v7, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_8

    .line 252
    const/4 v6, 0x0

    .line 254
    .restart local v6       #btnArr:[Ljava/lang/String;
    :try_start_b
    const-string v23, ","

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_8

    move-result-object v6

    .line 258
    :goto_3
    if-eqz v6, :cond_11

    :try_start_c
    array-length v0, v6

    move/from16 v23, v0

    if-nez v23, :cond_12

    .line 259
    :cond_11
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v6, v0, [Ljava/lang/String;

    .end local v6           #btnArr:[Ljava/lang/String;
    const/16 v23, 0x0

    aput-object v8, v6, v23

    .line 260
    .restart local v6       #btnArr:[Ljava/lang/String;
    :cond_12
    const-string v23, "ComJSInterface"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "confirm : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    array-length v0, v6

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/16 v23, 0x0

    aget-object v23, v6, v23

    new-instance v24, Lcom/zhangdan/banka/view/ComJSInterface$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/banka/view/ComJSInterface$5;-><init>(Lcom/zhangdan/banka/view/ComJSInterface;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 268
    array-length v0, v6

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_13

    .line 269
    const/16 v23, 0x1

    aget-object v23, v6, v23

    new-instance v24, Lcom/zhangdan/banka/view/ComJSInterface$6;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/banka/view/ComJSInterface$6;-><init>(Lcom/zhangdan/banka/view/ComJSInterface;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 277
    :cond_13
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog;->show()V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_0

    .line 278
    .end local v6           #btnArr:[Ljava/lang/String;
    .end local v7           #builder:Landroid/app/AlertDialog$Builder;
    .end local v8           #buttons:Ljava/lang/String;
    .end local v12           #msg:Ljava/lang/String;
    .end local v13           #obj:Lorg/json/JSONObject;
    .end local v19           #title:Ljava/lang/String;
    :catch_8
    move-exception v9

    .line 279
    .local v9, e:Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 255
    .end local v9           #e:Lorg/json/JSONException;
    .restart local v6       #btnArr:[Ljava/lang/String;
    .restart local v7       #builder:Landroid/app/AlertDialog$Builder;
    .restart local v8       #buttons:Ljava/lang/String;
    .restart local v12       #msg:Ljava/lang/String;
    .restart local v13       #obj:Lorg/json/JSONObject;
    .restart local v19       #title:Ljava/lang/String;
    :catch_9
    move-exception v9

    .line 256
    .local v9, e:Ljava/lang/Exception;
    :try_start_d
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_3
.end method

.method private doQQLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "appId"
    .parameter "scope"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mTencent:Lcom/tencent/tauth/Tencent;

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;

    invoke-virtual {v0}, Lcom/zhangdan/banka/activities/BankaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mTencent:Lcom/tencent/tauth/Tencent;

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;

    new-instance v2, Lcom/zhangdan/banka/view/ComJSInterface$BaseUiListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/zhangdan/banka/view/ComJSInterface$BaseUiListener;-><init>(Lcom/zhangdan/banka/view/ComJSInterface;Lcom/zhangdan/banka/view/ComJSInterface$1;)V

    invoke-virtual {v0, v1, p2, v2}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    .line 493
    return-void
.end method


# virtual methods
.method public addLocalNotifications()V
    .locals 0

    .prologue
    .line 364
    return-void
.end method

.method public alert()V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method public callbackJsMethod(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "callbackId"
    .parameter "args"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/zhangdan/banka/view/ComJSInterface$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/zhangdan/banka/view/ComJSInterface$7;-><init>(Lcom/zhangdan/banka/view/ComJSInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public callbackSelectPhoto(Ljava/lang/String;)V
    .locals 1
    .parameter "args"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mTakePhotoCallBackId:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/zhangdan/banka/view/ComJSInterface;->callbackJsMethod(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public canOpenApp()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public cleanApplicationCache()V
    .locals 0

    .prologue
    .line 576
    return-void
.end method

.method public confirm()V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method public delLocalNotifications()V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method public doWeiboLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "appKey"
    .parameter "redirectUrl"

    .prologue
    .line 447
    iget-object v1, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;

    if-nez v1, :cond_0

    .line 454
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    if-nez v1, :cond_1

    .line 450
    invoke-static {p1, p2}, Lcom/weibo/sdk/android/Weibo;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/weibo/sdk/android/Weibo;

    move-result-object v0

    .line 451
    .local v0, weibo:Lcom/weibo/sdk/android/Weibo;
    new-instance v1, Lcom/weibo/sdk/android/sso/SsoHandler;

    iget-object v2, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;

    invoke-direct {v1, v2, v0}, Lcom/weibo/sdk/android/sso/SsoHandler;-><init>(Landroid/app/Activity;Lcom/weibo/sdk/android/Weibo;)V

    iput-object v1, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    .line 453
    .end local v0           #weibo:Lcom/weibo/sdk/android/Weibo;
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    new-instance v2, Lcom/zhangdan/banka/view/ComJSInterface$AuthDialogListener;

    invoke-direct {v2, p0}, Lcom/zhangdan/banka/view/ComJSInterface$AuthDialogListener;-><init>(Lcom/zhangdan/banka/view/ComJSInterface;)V

    invoke-virtual {v1, v2}, Lcom/weibo/sdk/android/sso/SsoHandler;->authorize(Lcom/weibo/sdk/android/WeiboAuthListener;)V

    goto :goto_0
.end method

.method public execJs()V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public execSql()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method public execSqls()V
    .locals 0

    .prologue
    .line 336
    return-void
.end method

.method public exitApp()V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;

    invoke-virtual {v0}, Lcom/zhangdan/banka/activities/BankaActivity;->finish()V

    .line 582
    :cond_0
    return-void
.end method

.method public getDataWithHttp()V
    .locals 0

    .prologue
    .line 546
    return-void
.end method

.method public getDeviceInfo(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 1
    .parameter "context"

    .prologue
    .line 303
    invoke-static {p1}, Lcom/zhangdan/banka/utils/DeviceInfoUtil;->getDeviceInfo(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getIconNum()V
    .locals 0

    .prologue
    .line 380
    return-void
.end method

.method public getKeyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;

    if-nez v0, :cond_0

    .line 534
    const/4 v0, 0x0

    .line 535
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;

    invoke-static {v0, p1}, Lcom/zhangdan/banka/data/SharedPreferMgr;->getKeyValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastPushMessage()V
    .locals 0

    .prologue
    .line 384
    return-void
.end method

.method public getLocalNotifications()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public getLocation()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;

    if-nez v0, :cond_0

    .line 415
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mBdLocation:Lcom/zhangdan/banka/location/BaiduLocation;

    if-nez v0, :cond_1

    .line 409
    new-instance v0, Lcom/zhangdan/banka/location/BaiduLocation;

    iget-object v1, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;

    invoke-virtual {v1}, Lcom/zhangdan/banka/activities/BankaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/banka/location/BaiduLocation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mBdLocation:Lcom/zhangdan/banka/location/BaiduLocation;

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mBdLocation:Lcom/zhangdan/banka/location/BaiduLocation;

    iget-object v1, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mLocationListener:Lcom/zhangdan/banka/location/BaiduLocation$LocationListener;

    invoke-virtual {v0, v1}, Lcom/zhangdan/banka/location/BaiduLocation;->setListener(Lcom/zhangdan/banka/location/BaiduLocation$LocationListener;)V

    .line 412
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mBdLocation:Lcom/zhangdan/banka/location/BaiduLocation;

    invoke-virtual {v0}, Lcom/zhangdan/banka/location/BaiduLocation;->startLocation()V

    .line 413
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mBdLocation:Lcom/zhangdan/banka/location/BaiduLocation;

    invoke-virtual {v0}, Lcom/zhangdan/banka/location/BaiduLocation;->requestLoction()V

    .line 414
    const-string v0, "ComJSInterface"

    const-string v1, "start location..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPasteboard()V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method public getPhoto(III)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "quality"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/zhangdan/banka/view/ComJSInterface$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/zhangdan/banka/view/ComJSInterface$8;-><init>(Lcom/zhangdan/banka/view/ComJSInterface;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 396
    return-void
.end method

.method public goClose()V
    .locals 0

    .prologue
    .line 328
    return-void
.end method

.method public goUrl()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method public hideDefaultImage()V
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;

    if-nez v0, :cond_0

    .line 561
    :goto_0
    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/zhangdan/banka/view/ComJSInterface$10;

    invoke-direct {v1, p0}, Lcom/zhangdan/banka/view/ComJSInterface$10;-><init>(Lcom/zhangdan/banka/view/ComJSInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public notify(Ljava/lang/String;)V
    .locals 9
    .parameter "params"

    .prologue
    .line 85
    const-string v6, "ComJSInterface"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notify: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {p1}, Lcom/zhangdan/banka/utils/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const-string v6, "pg://"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 90
    const/4 v6, 0x5

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zhangdan/banka/utils/EncodingUtil;->decodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, realParams:Ljava/lang/String;
    const-string v6, "ComJSInterface"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notify: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    .local v4, obj:Lorg/json/JSONObject;
    const-string v6, "Method"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, method:Ljava/lang/String;
    const-string v6, "CallbackId"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, callbackId:Ljava/lang/String;
    const-string v6, "Args"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, args:Ljava/lang/String;
    const-string v6, "ComJSInterface"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0, v3, v1, v0}, Lcom/zhangdan/banka/view/ComJSInterface;->callNativeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v0           #args:Ljava/lang/String;
    .end local v1           #callbackId:Ljava/lang/String;
    .end local v3           #method:Ljava/lang/String;
    .end local v4           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 101
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/weibo/sdk/android/sso/SsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mTencent:Lcom/tencent/tauth/Tencent;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tauth/Tencent;->onActivityResult(IILandroid/content/Intent;)Z

    .line 77
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mBdLocation:Lcom/zhangdan/banka/location/BaiduLocation;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mBdLocation:Lcom/zhangdan/banka/location/BaiduLocation;

    invoke-virtual {v0}, Lcom/zhangdan/banka/location/BaiduLocation;->stopLocation()V

    .line 59
    iput-object v1, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mBdLocation:Lcom/zhangdan/banka/location/BaiduLocation;

    .line 61
    :cond_0
    iput-object v1, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mTakePhotoCallBackId:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mSinaLoginCallBackId:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mQQLoginCallBackId:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mGetLocationCallBackId:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;

    .line 66
    iput-object v1, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mWebView:Landroid/webkit/WebView;

    .line 67
    iput-object v1, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    .line 68
    return-void
.end method

.method public openApp()V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method public openUrl()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public openWebView()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public postNotification()V
    .locals 0

    .prologue
    .line 550
    return-void
.end method

.method public query()V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method public removeKeyValue(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;

    if-nez v0, :cond_0

    .line 542
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;

    invoke-static {v0, p1}, Lcom/zhangdan/banka/data/SharedPreferMgr;->removeKeyValue(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setIconNum()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method public setKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;

    if-nez v0, :cond_0

    .line 530
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;

    invoke-static {v0, p1, p2}, Lcom/zhangdan/banka/data/SharedPreferMgr;->setKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showDefaultImage()V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;

    if-nez v0, :cond_0

    .line 572
    :goto_0
    return-void

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/zhangdan/banka/view/ComJSInterface$11;

    invoke-direct {v1, p0}, Lcom/zhangdan/banka/view/ComJSInterface$11;-><init>(Lcom/zhangdan/banka/view/ComJSInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public umengAppUnion()V
    .locals 0

    .prologue
    .line 444
    return-void
.end method

.method public umengEvt(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 440
    return-void
.end method

.method public vibratePhone()V
    .locals 0

    .prologue
    .line 344
    return-void
.end method
