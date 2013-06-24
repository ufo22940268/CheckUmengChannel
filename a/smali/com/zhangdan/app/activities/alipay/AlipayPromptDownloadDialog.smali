.class public Lcom/zhangdan/app/activities/alipay/AlipayPromptDownloadDialog;
.super Landroid/app/Dialog;
.source "AlipayPromptDownloadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    const v0, 0x7f08005a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 24
    iput-object p1, p0, Lcom/zhangdan/app/activities/alipay/AlipayPromptDownloadDialog;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f09008c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayPromptDownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const v0, 0x7f09017a

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayPromptDownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f09008c

    if-ne v3, v4, :cond_1

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/alipay/AlipayPromptDownloadDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f09017a

    if-ne v3, v4, :cond_0

    .line 48
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "market://details?id=com.eg.android.AlipayGphone"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 50
    iget-object v3, p0, Lcom/zhangdan/app/activities/alipay/AlipayPromptDownloadDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 51
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 52
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zhangdan/app/util/CommonMethod;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, channel:Ljava/lang/String;
    invoke-static {v0}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v3, "\u4e09\u661f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 56
    iget-object v3, p0, Lcom/zhangdan/app/activities/alipay/AlipayPromptDownloadDialog;->mContext:Landroid/content/Context;

    const-string v4, "http://samsungapps.sina.cn/topApps/topAppsDetail.as?productId=000000462080"

    invoke-static {v3, v4}, Lcom/zhangdan/app/util/CommonMethod;->launchBrowser(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_2
    iget-object v3, p0, Lcom/zhangdan/app/activities/alipay/AlipayPromptDownloadDialog;->mContext:Landroid/content/Context;

    const-string v4, "http://download.alipay.com/mgw/ANDROID/5200307/Alipay.apk"

    invoke-static {v3, v4}, Lcom/zhangdan/app/util/CommonMethod;->launchBrowser(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    .end local v0           #channel:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f03006c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayPromptDownloadDialog;->setContentView(I)V

    .line 31
    invoke-direct {p0}, Lcom/zhangdan/app/activities/alipay/AlipayPromptDownloadDialog;->initViews()V

    .line 32
    return-void
.end method
