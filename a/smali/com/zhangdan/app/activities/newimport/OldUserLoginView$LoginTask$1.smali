.class Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask$1;
.super Ljava/lang/Object;
.source "OldUserLoginView.java"

# interfaces
.implements Lcom/weibo/sdk/android/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;->follow51Zhangdan(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask$1;->this$1:Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 253
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++++++++++++++++++++response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "++++++++++++++++++++"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboException;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 261
    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboException;->printStackTrace()V

    .line 262
    return-void
.end method

.method public onIOException(Ljava/io/IOException;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 257
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 258
    return-void
.end method
