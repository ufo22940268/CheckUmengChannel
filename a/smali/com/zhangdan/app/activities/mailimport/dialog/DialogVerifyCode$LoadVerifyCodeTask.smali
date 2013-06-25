.class Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "DialogVerifyCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadVerifyCodeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/loader/util/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "url"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;->this$0:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;

    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    .line 119
    iput-object p2, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;->url:Ljava/lang/String;

    .line 120
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "params"

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, bmp:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Lcom/zhangdan/app/img/FileCache;

    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;->this$0:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "VerifyCode"

    invoke-direct {v2, v3, v4}, Lcom/zhangdan/app/img/FileCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    .local v2, fileCache:Lcom/zhangdan/app/img/FileCache;
    invoke-virtual {v2}, Lcom/zhangdan/app/img/FileCache;->clear()V

    .line 128
    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/zhangdan/app/img/ImageUtil;->getBitmapByUrl(Lcom/zhangdan/app/img/FileCache;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 132
    .end local v2           #fileCache:Lcom/zhangdan/app/img/FileCache;
    :goto_0
    return-object v0

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;->this$0:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;

    #setter for: Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mBmpVerifyCode:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->access$002(Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 139
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;->this$0:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;

    #getter for: Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mImgRefresh:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->access$100(Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 140
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;->this$0:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;

    #getter for: Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mImgVerifyCode:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->access$200(Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;->this$0:Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;

    #getter for: Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->mBmpVerifyCode:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;->access$000(Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 141
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/mailimport/dialog/DialogVerifyCode$LoadVerifyCodeTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
