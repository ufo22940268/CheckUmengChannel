.class public final Lcom/weibo/sdk/android/h;
.super Landroid/app/Dialog;


# static fields
.field static a:Landroid/widget/FrameLayout$LayoutParams;

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:I


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/weibo/sdk/android/g;

.field private d:Landroid/app/ProgressDialog;

.field private e:Landroid/webkit/WebView;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/weibo/sdk/android/h;->a:Landroid/widget/FrameLayout$LayoutParams;

    const v0, 0x1030010

    sput v0, Lcom/weibo/sdk/android/h;->h:I

    sput v1, Lcom/weibo/sdk/android/h;->i:I

    sput v1, Lcom/weibo/sdk/android/h;->j:I

    sput v1, Lcom/weibo/sdk/android/h;->k:I

    sput v1, Lcom/weibo/sdk/android/h;->l:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/weibo/sdk/android/g;)V
    .locals 1

    sget v0, Lcom/weibo/sdk/android/h;->h:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/weibo/sdk/android/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/weibo/sdk/android/h;->c:Lcom/weibo/sdk/android/g;

    return-void
.end method

.method static synthetic a(Lcom/weibo/sdk/android/h;)Lcom/weibo/sdk/android/g;
    .locals 1

    iget-object v0, p0, Lcom/weibo/sdk/android/h;->c:Lcom/weibo/sdk/android/g;

    return-object v0
.end method

.method static synthetic a(Lcom/weibo/sdk/android/h;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/weibo/sdk/android/c/b;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error_code"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/weibo/sdk/android/h;->c:Lcom/weibo/sdk/android/g;

    invoke-interface {v1, v0}, Lcom/weibo/sdk/android/g;->a(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "access_denied"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/weibo/sdk/android/h;->c:Lcom/weibo/sdk/android/g;

    invoke-interface {v0}, Lcom/weibo/sdk/android/g;->a()V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/weibo/sdk/android/h;->c:Lcom/weibo/sdk/android/g;

    new-instance v2, Lcom/weibo/sdk/android/l;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/weibo/sdk/android/l;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Lcom/weibo/sdk/android/g;->a(Lcom/weibo/sdk/android/l;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/weibo/sdk/android/h;->c:Lcom/weibo/sdk/android/g;

    new-instance v3, Lcom/weibo/sdk/android/l;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v3, v1, v2}, Lcom/weibo/sdk/android/l;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Lcom/weibo/sdk/android/g;->a(Lcom/weibo/sdk/android/l;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/weibo/sdk/android/h;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/weibo/sdk/android/h;->d:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private b()Z
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/weibo/sdk/android/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/weibo/sdk/android/h;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    :try_start_0
    const-string v5, "values/dimens.xml"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v3

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v5

    :try_start_2
    const-string v0, "utf-8"

    invoke-interface {v5, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_0
    :goto_2
    return v0

    :cond_1
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_3
    :try_start_4
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "dimen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const-string v2, "name"

    invoke-interface {v5, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "weibosdk_dialog_left_margin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    sput v0, Lcom/weibo/sdk/android/h;->i:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_4
    :try_start_5
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move v0, v1

    goto :goto_1

    :cond_3
    :try_start_6
    const-string v2, "weibosdk_dialog_top_margin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    sput v0, Lcom/weibo/sdk/android/h;->j:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v3

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    :goto_5
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_0

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_4
    :try_start_9
    const-string v2, "weibosdk_dialog_right_margin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    sput v0, Lcom/weibo/sdk/android/h;->k:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v3, :cond_5

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :cond_5
    :goto_7
    throw v0

    :cond_6
    :try_start_b
    const-string v2, "weibosdk_dialog_bottom_margin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    sput v0, Lcom/weibo/sdk/android/h;->l:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_3

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v1, v0

    move v0, v2

    move-object v2, v3

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v1, v0

    move v0, v2

    move-object v2, v3

    goto :goto_5

    :catch_7
    move-exception v0

    move v1, v2

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/weibo/sdk/android/h;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/weibo/sdk/android/h;->e:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/weibo/sdk/android/h;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/weibo/sdk/android/h;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weibo/sdk/android/h;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/weibo/sdk/android/h;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/weibo/sdk/android/h;->dismiss()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/high16 v5, 0x4120

    const/4 v11, -0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/weibo/sdk/android/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/weibo/sdk/android/h;->d:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/weibo/sdk/android/h;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/weibo/sdk/android/h;->d:Landroid/app/ProgressDialog;

    const-string v2, "Loading..."

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/weibo/sdk/android/h;->d:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/weibo/sdk/android/i;

    invoke-direct {v2, p0}, Lcom/weibo/sdk/android/i;-><init>(Lcom/weibo/sdk/android/h;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {p0, v3}, Lcom/weibo/sdk/android/h;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/weibo/sdk/android/h;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/weibo/sdk/android/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/weibo/sdk/android/h;->g:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/weibo/sdk/android/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/weibo/sdk/android/h;->f:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/weibo/sdk/android/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/weibo/sdk/android/h;->e:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/weibo/sdk/android/h;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/weibo/sdk/android/h;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/weibo/sdk/android/h;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/weibo/sdk/android/h;->e:Landroid/webkit/WebView;

    new-instance v2, Lcom/weibo/sdk/android/j;

    invoke-direct {v2, p0, v4}, Lcom/weibo/sdk/android/j;-><init>(Lcom/weibo/sdk/android/h;B)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/weibo/sdk/android/h;->e:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/weibo/sdk/android/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/weibo/sdk/android/h;->e:Landroid/webkit/WebView;

    sget-object v2, Lcom/weibo/sdk/android/h;->a:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/weibo/sdk/android/h;->e:Landroid/webkit/WebView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/weibo/sdk/android/h;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/weibo/sdk/android/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_0
    const-string v4, "weibosdk_dialog_bg.9.png"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lcom/weibo/sdk/android/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v4, v5, v0

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    mul-float v4, v5, v0

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    mul-float v4, v5, v0

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/weibo/sdk/android/h;->f:Landroid/widget/RelativeLayout;

    sget v4, Lcom/weibo/sdk/android/d;->a:I

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/weibo/sdk/android/h;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/weibo/sdk/android/h;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/weibo/sdk/android/h;->f:Landroid/widget/RelativeLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    invoke-direct {p0}, Lcom/weibo/sdk/android/h;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/weibo/sdk/android/h;->i:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sget v0, Lcom/weibo/sdk/android/h;->j:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sget v0, Lcom/weibo/sdk/android/h;->k:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sget v0, Lcom/weibo/sdk/android/h;->l:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :goto_3
    iget-object v0, p0, Lcom/weibo/sdk/android/h;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/weibo/sdk/android/h;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/weibo/sdk/android/h;->g:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/weibo/sdk/android/h;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_1
    :try_start_6
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v5

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    invoke-direct {v4, v0, v5, v6, v7}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/weibo/sdk/android/h;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_2
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/weibo/sdk/android/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/weibo/sdk/android/c;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sget v1, Lcom/weibo/sdk/android/c;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sget v1, Lcom/weibo/sdk/android/c;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sget v1, Lcom/weibo/sdk/android/c;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_3
.end method
