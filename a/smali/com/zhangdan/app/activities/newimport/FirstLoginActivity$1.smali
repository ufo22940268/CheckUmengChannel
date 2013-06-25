.class Lcom/zhangdan/app/activities/newimport/FirstLoginActivity$1;
.super Ljava/lang/Object;
.source "FirstLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity$1;->this$0:Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity$1;->this$0:Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;

    #calls: Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->hideOldUserLoginContent()V
    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->access$000(Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;)V

    .line 60
    return-void
.end method
