.class public Lcom/zhangdan/preferential/utils/AccessTokenKeeper;
.super Ljava/lang/Object;
.source "AccessTokenKeeper.java"


# static fields
.field private static final PREFERENCES_NAME:Ljava/lang/String; = "com_weibo_sdk_android"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 32
    const-string v2, "com_weibo_sdk_android"

    const v3, 0x8000

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 33
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 34
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    return-void
.end method

.method public static hasLogin(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/zhangdan/preferential/utils/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/weibo/sdk/android/Oauth2AccessToken;->isSessionValid()Z

    move-result v0

    return v0
.end method

.method public static keepAccessToken(Landroid/content/Context;Lcom/weibo/sdk/android/Oauth2AccessToken;)V
    .locals 5
    .parameter "context"
    .parameter "token"

    .prologue
    .line 21
    const-string v2, "com_weibo_sdk_android"

    const v3, 0x8000

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 22
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 23
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "token"

    invoke-virtual {p1}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    const-string v2, "expiresTime"

    invoke-virtual {p1}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getExpiresTime()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    return-void
.end method

.method public static readAccessToken(Landroid/content/Context;)Lcom/weibo/sdk/android/Oauth2AccessToken;
    .locals 5
    .parameter "context"

    .prologue
    .line 44
    new-instance v1, Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-direct {v1}, Lcom/weibo/sdk/android/Oauth2AccessToken;-><init>()V

    .line 45
    .local v1, token:Lcom/weibo/sdk/android/Oauth2AccessToken;
    const-string v2, "com_weibo_sdk_android"

    const v3, 0x8000

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "token"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/weibo/sdk/android/Oauth2AccessToken;->setToken(Ljava/lang/String;)V

    .line 47
    const-string v2, "expiresTime"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/weibo/sdk/android/Oauth2AccessToken;->setExpiresTime(J)V

    .line 48
    return-object v1
.end method
