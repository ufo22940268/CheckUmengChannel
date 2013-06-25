.class Lcom/zhangdan/app/activities/setting/SettingActivity$6;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/setting/SettingActivity;->showAvatarDiaog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/setting/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/zhangdan/app/activities/setting/SettingActivity$6;->this$0:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity$6;->this$0:Lcom/zhangdan/app/activities/setting/SettingActivity;

    #getter for: Lcom/zhangdan/app/activities/setting/SettingActivity;->mAvatarHandler:Lcom/zhangdan/app/img/AvatarHandler;
    invoke-static {v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->access$000(Lcom/zhangdan/app/activities/setting/SettingActivity;)Lcom/zhangdan/app/img/AvatarHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity$6;->this$0:Lcom/zhangdan/app/activities/setting/SettingActivity;

    new-instance v1, Lcom/zhangdan/app/img/AvatarHandler;

    iget-object v2, p0, Lcom/zhangdan/app/activities/setting/SettingActivity$6;->this$0:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-direct {v1, v2}, Lcom/zhangdan/app/img/AvatarHandler;-><init>(Landroid/app/Activity;)V

    #setter for: Lcom/zhangdan/app/activities/setting/SettingActivity;->mAvatarHandler:Lcom/zhangdan/app/img/AvatarHandler;
    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/setting/SettingActivity;->access$002(Lcom/zhangdan/app/activities/setting/SettingActivity;Lcom/zhangdan/app/img/AvatarHandler;)Lcom/zhangdan/app/img/AvatarHandler;

    .line 261
    :cond_0
    if-nez p2, :cond_2

    .line 262
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity$6;->this$0:Lcom/zhangdan/app/activities/setting/SettingActivity;

    #getter for: Lcom/zhangdan/app/activities/setting/SettingActivity;->mAvatarHandler:Lcom/zhangdan/app/img/AvatarHandler;
    invoke-static {v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->access$000(Lcom/zhangdan/app/activities/setting/SettingActivity;)Lcom/zhangdan/app/img/AvatarHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/img/AvatarHandler;->takePhoto()V

    .line 266
    :cond_1
    :goto_0
    return-void

    .line 263
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity$6;->this$0:Lcom/zhangdan/app/activities/setting/SettingActivity;

    #getter for: Lcom/zhangdan/app/activities/setting/SettingActivity;->mAvatarHandler:Lcom/zhangdan/app/img/AvatarHandler;
    invoke-static {v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->access$000(Lcom/zhangdan/app/activities/setting/SettingActivity;)Lcom/zhangdan/app/img/AvatarHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/img/AvatarHandler;->pickPhotoFromGallery()V

    goto :goto_0
.end method
