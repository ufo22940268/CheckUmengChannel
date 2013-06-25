.class Lcom/zhangdan/app/activities/setting/SettingActivity$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/setting/SettingActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
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
    .line 190
    iput-object p1, p0, Lcom/zhangdan/app/activities/setting/SettingActivity$1;->this$0:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 193
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity$1;->this$0:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/setting/SettingActivity;->dismissDialog(I)V

    .line 194
    new-instance v1, Lcom/zhangdan/app/activities/setting/LogoutTask;

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity$1;->this$0:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-direct {v1, v0}, Lcom/zhangdan/app/activities/setting/LogoutTask;-><init>(Landroid/app/Activity;)V

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/setting/LogoutTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 195
    return-void
.end method
