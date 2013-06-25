.class Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity$UploadSms;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "SmsFeedBackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UploadSms"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/loader/util/AsyncTask",
        "<",
        "Lcom/zhangdan/app/sms/BillData;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity$UploadSms;->this$0:Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;

    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 302
    check-cast p1, [Lcom/zhangdan/app/sms/BillData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity$UploadSms;->doInBackground([Lcom/zhangdan/app/sms/BillData;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/zhangdan/app/sms/BillData;)Ljava/lang/Void;
    .locals 15
    .parameter "params"

    .prologue
    .line 307
    :try_start_0
    iget-object v6, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity$UploadSms;->this$0:Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mUserInfo:Lcom/zhangdan/app/data/model/UserInfo;
    invoke-static {v6}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->access$000(Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;)Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, token:Ljava/lang/String;
    iget-object v6, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity$UploadSms;->this$0:Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mUserInfo:Lcom/zhangdan/app/data/model/UserInfo;
    invoke-static {v6}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->access$000(Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;)Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, userid:Ljava/lang/String;
    iget-object v6, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity$UploadSms;->this$0:Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mCity:Ljava/lang/String;
    invoke-static {v6}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->access$100(Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;)Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, city:Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v9, p1, v6

    .line 311
    .local v9, data:Lcom/zhangdan/app/sms/BillData;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/zhangdan/app/sms/BillData;->getBillType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, sms_type:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/zhangdan/app/sms/BillData;->getSms()Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, sms_content:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/zhangdan/app/sms/BillData;->getDate()J

    move-result-wide v10

    .line 314
    .local v10, date:J
    invoke-static {v10, v11}, Lcom/zhangdan/app/util/DateUtils;->getYearMonthDay(J)[I

    move-result-object v8

    .line 315
    .local v8, array:[I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget v7, v8, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget v7, v8, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    aget v7, v8, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 316
    .local v5, time:Ljava/lang/String;
    iget-object v6, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity$UploadSms;->this$0:Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->version:Ljava/lang/String;
    invoke-static {v6}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->access$200(Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity$UploadSms;->this$0:Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;

    #getter for: Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->mContent:Ljava/lang/String;
    invoke-static {v7}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->access$300(Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/zhangdan/app/api/SmsFeedBackApi;->feedBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const/4 v6, 0x1

    invoke-virtual {v9, v6}, Lcom/zhangdan/app/sms/BillData;->setIs_rember(I)V

    .line 318
    iget-object v6, p0, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity$UploadSms;->this$0:Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;

    invoke-virtual {v6}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v9}, Lcom/zhangdan/app/sms/BillData;->getId()J

    move-result-wide v13

    invoke-static {v6, v13, v14}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->updateFeed(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v0           #token:Ljava/lang/String;
    .end local v1           #userid:Ljava/lang/String;
    .end local v2           #sms_type:Ljava/lang/String;
    .end local v3           #sms_content:Ljava/lang/String;
    .end local v4           #city:Ljava/lang/String;
    .end local v5           #time:Ljava/lang/String;
    .end local v8           #array:[I
    .end local v9           #data:Lcom/zhangdan/app/sms/BillData;
    .end local v10           #date:J
    :goto_0
    const/4 v6, 0x0

    return-object v6

    .line 319
    :catch_0
    move-exception v12

    .line 320
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
