.class public Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;
.super Ljava/lang/Object;
.source "SharedPreferMgr.java"


# static fields
.field public static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field public static final KEY_CURR_CITY:Ljava/lang/String; = "curr_city"

.field public static final KEY_CURR_NEW_VERSION:Ljava/lang/String; = "new_version"

.field public static final KEY_FIRST_USE:Ljava/lang/String; = "first_use"

.field public static final KEY_GET_WEATHER_TIME:Ljava/lang/String; = "weather_time"

.field public static final KEY_GEXIN_PUSH:Ljava/lang/String; = "gexin"

.field public static final KEY_LIST_MODE:Ljava/lang/String; = "list_mode"

.field public static final KEY_LOCAL_PWD:Ljava/lang/String; = "local_pwd"

.field public static final KEY_MAIN_BG_PATH:Ljava/lang/String; = "main_bg_path"

.field public static final KEY_MAIN_BG_RES:Ljava/lang/String; = "main_bg_res"

.field public static final KEY_MAIN_BG_TYPE:Ljava/lang/String; = "main_bg_type"

.field public static final KEY_PUSH_DATA:Ljava/lang/String; = "push_data"

.field public static final KEY_RECOMMEND_YOUHUI:Ljava/lang/String; = "youhui"

.field public static final KEY_SHOW_ALIPAY_DESC:Ljava/lang/String; = "show_alipay_desc"

.field public static final KEY_UPDATE_INFO:Ljava/lang/String; = "update_info"

.field public static final KYE_AVATAR_URI:Ljava/lang/String; = "avatar_uri"

.field public static final PREFERENCES_CARD:Ljava/lang/String; = "card"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsKey(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "key"

    .prologue
    .line 74
    const-string v0, "card"

    invoke-static {p0, v0, p1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->containsKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getAccountType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 166
    const-string v0, "card"

    const-string v1, "account_type"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAvatarUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 70
    const-string v0, "card"

    const-string v1, "avatar_uri"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrApkUpdateInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 198
    const-string v0, "card"

    const-string v1, "update_info"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrCity(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 150
    const-string v0, "card"

    const-string v1, "curr_city"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrNewVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 190
    const-string v0, "card"

    const-string v1, "new_version"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstUseFlag(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 158
    const-string v0, "card"

    const-string v1, "first_use"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getGexinPushValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 86
    const-string v0, "card"

    const-string v1, "gexin"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getListMode(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 78
    const-string v0, "card"

    const-string v1, "list_mode"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLocalPwd(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 138
    const-string v0, "card"

    const-string v1, "local_pwd"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMainBgPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 134
    const-string v0, "card"

    const-string v1, "main_bg_path"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMainBgRes(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 126
    const-string v0, "card"

    const-string v1, "main_bg_res"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMainBgType(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 118
    const-string v0, "card"

    const-string v1, "main_bg_type"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPushData(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 206
    const-string v0, "card"

    const-string v1, "push_data"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQueryWeatherTime(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 170
    const-string v1, "card"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 171
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "weather_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "key"

    .prologue
    .line 215
    const-string v0, "card"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isShowAlipayDesc(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 100
    const-string v0, "card"

    const-string v1, "show_alipay_desc"

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static savePushData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "pushData"

    .prologue
    .line 203
    const-string v0, "card"

    const-string v1, "push_data"

    invoke-static {p0, v0, v1, p1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public static setAccountType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "accType"

    .prologue
    .line 162
    const-string v0, "card"

    const-string v1, "account_type"

    invoke-static {p0, v0, v1, p1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public static setAvatarUri(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 66
    const-string v0, "card"

    const-string v1, "avatar_uri"

    invoke-static {p0, v0, v1, p1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static setCurrApkUpdateInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "updateInfo"

    .prologue
    .line 194
    const-string v0, "card"

    const-string v1, "update_info"

    invoke-static {p0, v0, v1, p1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public static setCurrCity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "city"

    .prologue
    .line 146
    const-string v0, "card"

    const-string v1, "curr_city"

    invoke-static {p0, v0, v1, p1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static setCurrNewVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "version"

    .prologue
    .line 186
    const-string v0, "card"

    const-string v1, "new_version"

    invoke-static {p0, v0, v1, p1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public static setFirstUseFlag(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "flag"

    .prologue
    .line 154
    const-string v0, "card"

    const-string v1, "first_use"

    invoke-static {p0, v0, v1, p1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->putInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    return-void
.end method

.method public static setGexinPushValue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 90
    const-string v0, "card"

    const-string v1, "gexin"

    invoke-static {p0, v0, v1, p1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static setListMode(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "listMode"

    .prologue
    .line 82
    const-string v0, "card"

    const-string v1, "list_mode"

    invoke-static {p0, v0, v1, p1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->putInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    return-void
.end method

.method public static setLocalPwd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "pwd"

    .prologue
    .line 142
    const-string v0, "card"

    const-string v1, "local_pwd"

    invoke-static {p0, v0, v1, p1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public static setMainBgPath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "path"

    .prologue
    .line 130
    const-string v0, "card"

    const-string v1, "main_bg_path"

    invoke-static {p0, v0, v1, p1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public static setMainBgRes(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 122
    const-string v0, "card"

    const-string v1, "main_bg_res"

    invoke-static {p0, v0, v1, p1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->putInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    return-void
.end method

.method public static setMainBgType(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "type"

    .prologue
    .line 114
    const-string v0, "card"

    const-string v1, "main_bg_type"

    invoke-static {p0, v0, v1, p1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->putInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    return-void
.end method

.method public static setQueryWeatherTime(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "time"

    .prologue
    .line 175
    const-string v1, "card"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 176
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "weather_time"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 177
    return-void
.end method

.method public static setShowAlipayDesc(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "flag"

    .prologue
    .line 104
    const-string v0, "card"

    const-string v1, "show_alipay_desc"

    invoke-static {p0, v0, v1, p1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    return-void
.end method

.method public static setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 211
    const-string v0, "card"

    invoke-static {p0, v0, p1, p2}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method
