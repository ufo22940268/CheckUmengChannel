.class public Lcom/zhangdan/preferential/data/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.java"


# static fields
.field public static final NET_CELL:I = 0x1

.field public static final NET_WIFI:I

.field public static channelName:Ljava/lang/String;

.field public static isConnectionFast:Z

.field public static networkType:I

.field public static versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNetwork(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 43
    new-instance v0, Lcom/zhangdan/preferential/utils/SettingManager;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/utils/SettingManager;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, manager:Lcom/zhangdan/preferential/utils/SettingManager;
    sget v1, Lcom/zhangdan/preferential/data/AppConfig;->networkType:I

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/zhangdan/preferential/data/AppConfig;->isConnectionFast:Z

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/utils/SettingManager;->readHideImage()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0701a6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0701a7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/zhangdan/preferential/data/AppConfig$2;

    invoke-direct {v3, v0, p0}, Lcom/zhangdan/preferential/data/AppConfig$2;-><init>(Lcom/zhangdan/preferential/utils/SettingManager;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/zhangdan/preferential/data/AppConfig$1;

    invoke-direct {v3, v0, p0}, Lcom/zhangdan/preferential/data/AppConfig$1;-><init>(Lcom/zhangdan/preferential/utils/SettingManager;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public static isHideImage(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 36
    new-instance v1, Lcom/zhangdan/preferential/utils/SettingManager;

    invoke-direct {v1, p0}, Lcom/zhangdan/preferential/utils/SettingManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/zhangdan/preferential/utils/SettingManager;->readHideImage()Z

    move-result v0

    .line 37
    .local v0, hideImage:Z
    sget v1, Lcom/zhangdan/preferential/data/AppConfig;->networkType:I

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
