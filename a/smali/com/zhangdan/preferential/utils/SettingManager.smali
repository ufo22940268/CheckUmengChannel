.class public Lcom/zhangdan/preferential/utils/SettingManager;
.super Ljava/lang/Object;
.source "SettingManager.java"


# static fields
.field private static final KEY_HAS_SET_TODAY_HINT:Ljava/lang/String; = "today_hint"

.field private static final KEY_HIDE_IMAGE:Ljava/lang/String; = "hide_image"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "settings"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/SettingManager;->mContext:Landroid/content/Context;

    .line 33
    const-string v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/utils/SettingManager;->mPref:Landroid/content/SharedPreferences;

    .line 34
    return-void
.end method

.method private get(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/SettingManager;->mPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private put(Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "b"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/SettingManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    return-void
.end method


# virtual methods
.method public hasSetHideImage()Z
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/SettingManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "hide_image"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasSetTodayHint()Z
    .locals 1

    .prologue
    .line 57
    const-string v0, "today_hint"

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/utils/SettingManager;->get(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public markHasSetTodayHint()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "today_hint"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/preferential/utils/SettingManager;->put(Ljava/lang/String;Z)V

    .line 62
    return-void
.end method

.method public readHideImage()Z
    .locals 1

    .prologue
    .line 49
    const-string v0, "hide_image"

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/utils/SettingManager;->get(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public writeHideImage(Z)V
    .locals 1
    .parameter "hideImage"

    .prologue
    .line 45
    const-string v0, "hide_image"

    invoke-direct {p0, v0, p1}, Lcom/zhangdan/preferential/utils/SettingManager;->put(Ljava/lang/String;Z)V

    .line 46
    return-void
.end method
