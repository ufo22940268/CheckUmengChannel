.class public Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "SubmitMailLoginTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask$OnMailSubmitProcessListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/loader/util/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/zhangdan/app/data/model/http/MailLoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnMailSubmitProcessListener:Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask$OnMailSubmitProcessListener;

.field private mToken:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private doSubmitMailAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/MailLoginResult;
    .locals 9
    .parameter "token"
    .parameter "userId"
    .parameter "mailName"
    .parameter "mailPwd"
    .parameter "specialPwd"
    .parameter "verifyCode"
    .parameter "phoneCode"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zhangdan/app/util/CommonMethod;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v7}, Lcom/zhangdan/app/api/MailImportApi;->doMailLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/MailLoginResult;

    move-result-object v8

    .line 80
    .local v8, result:Lcom/zhangdan/app/data/model/http/MailLoginResult;
    return-object v8
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/MailLoginResult;
    .locals 9
    .parameter "params"

    .prologue
    .line 44
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;->mToken:Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;->mUserId:Ljava/lang/String;

    .line 46
    const/4 v0, 0x2

    aget-object v3, p1, v0

    .line 47
    .local v3, mailName:Ljava/lang/String;
    const/4 v0, 0x3

    aget-object v4, p1, v0

    .line 48
    .local v4, mailPwd:Ljava/lang/String;
    const/4 v0, 0x4

    aget-object v5, p1, v0

    .line 49
    .local v5, specialPwd:Ljava/lang/String;
    const/4 v0, 0x5

    aget-object v6, p1, v0

    .line 50
    .local v6, verifyCode:Ljava/lang/String;
    const/4 v0, 0x6

    aget-object v7, p1, v0

    .line 51
    .local v7, phoneCode:Ljava/lang/String;
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;->mToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;->mUserId:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;->doSubmitMailAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/MailLoginResult;

    move-result-object v8

    .line 52
    .local v8, result:Lcom/zhangdan/app/data/model/http/MailLoginResult;
    return-object v8
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;->doInBackground([Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/MailLoginResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/zhangdan/app/data/model/http/MailLoginResult;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;->mOnMailSubmitProcessListener:Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask$OnMailSubmitProcessListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;->mOnMailSubmitProcessListener:Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask$OnMailSubmitProcessListener;

    invoke-interface {v0, p1}, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask$OnMailSubmitProcessListener;->onPostExecute(Lcom/zhangdan/app/data/model/http/MailLoginResult;)V

    .line 61
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, Lcom/zhangdan/app/data/model/http/MailLoginResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;->onPostExecute(Lcom/zhangdan/app/data/model/http/MailLoginResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPreExecute()V

    .line 38
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;->mOnMailSubmitProcessListener:Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask$OnMailSubmitProcessListener;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;->mOnMailSubmitProcessListener:Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask$OnMailSubmitProcessListener;

    invoke-interface {v0}, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask$OnMailSubmitProcessListener;->onPreExecute()V

    .line 40
    :cond_0
    return-void
.end method

.method public setOnMailSubmitProcessListener(Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask$OnMailSubmitProcessListener;)V
    .locals 0
    .parameter "onMailSubmitProcessListener"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask;->mOnMailSubmitProcessListener:Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask$OnMailSubmitProcessListener;

    .line 65
    return-void
.end method
