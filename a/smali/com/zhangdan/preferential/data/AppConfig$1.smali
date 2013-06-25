.class final Lcom/zhangdan/preferential/data/AppConfig$1;
.super Ljava/lang/Object;
.source "AppConfig.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/preferential/data/AppConfig;->checkNetwork(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$manager:Lcom/zhangdan/preferential/utils/SettingManager;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/utils/SettingManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/zhangdan/preferential/data/AppConfig$1;->val$manager:Lcom/zhangdan/preferential/utils/SettingManager;

    iput-object p2, p0, Lcom/zhangdan/preferential/data/AppConfig$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/zhangdan/preferential/data/AppConfig$1;->val$manager:Lcom/zhangdan/preferential/utils/SettingManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/utils/SettingManager;->writeHideImage(Z)V

    .line 63
    iget-object v0, p0, Lcom/zhangdan/preferential/data/AppConfig$1;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zhangdan.preferential.UPDATE_IMAGE_HIDE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 64
    return-void
.end method
