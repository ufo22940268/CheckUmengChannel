.class public Lcom/zhangdan/banka/view/CustomWebView;
.super Landroid/webkit/WebView;
.source "CustomWebView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CustomWebView"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p1, p0, Lcom/zhangdan/banka/view/CustomWebView;->context:Landroid/content/Context;

    .line 17
    invoke-virtual {p0}, Lcom/zhangdan/banka/view/CustomWebView;->setup()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object p1, p0, Lcom/zhangdan/banka/view/CustomWebView;->context:Landroid/content/Context;

    .line 29
    invoke-virtual {p0}, Lcom/zhangdan/banka/view/CustomWebView;->setup()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput-object p1, p0, Lcom/zhangdan/banka/view/CustomWebView;->context:Landroid/content/Context;

    .line 23
    invoke-virtual {p0}, Lcom/zhangdan/banka/view/CustomWebView;->setup()V

    .line 24
    return-void
.end method


# virtual methods
.method public setup()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 33
    invoke-virtual {p0, v5}, Lcom/zhangdan/banka/view/CustomWebView;->setInitialScale(I)V

    .line 34
    invoke-virtual {p0, v5}, Lcom/zhangdan/banka/view/CustomWebView;->setVerticalScrollBarEnabled(Z)V

    .line 35
    invoke-virtual {p0}, Lcom/zhangdan/banka/view/CustomWebView;->requestFocusFromTouch()Z

    .line 38
    invoke-virtual {p0}, Lcom/zhangdan/banka/view/CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 39
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 40
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 41
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 44
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 45
    iget-object v2, p0, Lcom/zhangdan/banka/view/CustomWebView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "database"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, databasePath:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 51
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 52
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 54
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 56
    invoke-virtual {p0, v5}, Lcom/zhangdan/banka/view/CustomWebView;->setScrollBarStyle(I)V

    .line 57
    return-void
.end method
