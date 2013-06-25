.class public Lcom/zhangdan/preferential/TestActivity;
.super Landroid/app/Activity;
.source "TestActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v1, 0x7f030109

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/TestActivity;->setContentView(I)V

    .line 36
    new-instance v0, Lcom/weibo/sdk/android/api/StatusesAPI;

    invoke-static {p0}, Lcom/zhangdan/preferential/utils/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/weibo/sdk/android/api/StatusesAPI;-><init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V

    .line 37
    .local v0, sa:Lcom/weibo/sdk/android/api/StatusesAPI;
    const-string v1, "testtesttesttesta"

    const-string v2, "/sdcard/a1.png"

    const-string v3, "90.0"

    const-string v4, "90.0"

    new-instance v5, Lcom/zhangdan/preferential/TestActivity$1;

    invoke-direct {v5, p0}, Lcom/zhangdan/preferential/TestActivity$1;-><init>(Lcom/zhangdan/preferential/TestActivity;)V

    invoke-virtual/range {v0 .. v5}, Lcom/weibo/sdk/android/api/StatusesAPI;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 50
    return-void
.end method
