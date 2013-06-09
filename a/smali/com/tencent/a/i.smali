.class public final Lcom/tencent/a/i;
.super Landroid/app/Dialog;


# static fields
.field static final a:Landroid/widget/FrameLayout$LayoutParams;

.field static b:Landroid/widget/Toast;

.field private static c:Ljava/lang/ref/WeakReference;

.field private static d:Ljava/lang/ref/WeakReference;

.field private static e:Ljava/lang/ref/WeakReference;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Lcom/tencent/a/l;

.field private h:Lcom/tencent/tauth/b;

.field private i:Landroid/widget/FrameLayout;

.field private j:Landroid/webkit/WebView;

.field private k:Landroid/widget/FrameLayout;

.field private l:Landroid/widget/ProgressBar;

.field private m:Landroid/os/Handler;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/tencent/a/i;->a:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/a/i;->b:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/tauth/b;)V
    .locals 3

    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/a/i;->n:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tencent/a/i;->c:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/tencent/a/i;->f:Ljava/lang/String;

    new-instance v0, Lcom/tencent/a/l;

    invoke-direct {v0, p3}, Lcom/tencent/a/l;-><init>(Lcom/tencent/tauth/b;)V

    iput-object v0, p0, Lcom/tencent/a/i;->g:Lcom/tencent/a/l;

    new-instance v0, Lcom/tencent/a/m;

    iget-object v1, p0, Lcom/tencent/a/i;->g:Lcom/tencent/a/l;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/a/m;-><init>(Lcom/tencent/a/l;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/a/i;->m:Landroid/os/Handler;

    iput-object p3, p0, Lcom/tencent/a/i;->h:Lcom/tencent/tauth/b;

    return-void
.end method

.method static synthetic a(Lcom/tencent/a/i;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/a/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/a/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Lcom/tencent/a/i;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    invoke-static {p1}, Lcom/tencent/a/n;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_2

    sget-object v1, Lcom/tencent/a/i;->b:Landroid/widget/Toast;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/tencent/a/i;->b:Landroid/widget/Toast;

    :goto_0
    sget-object v0, Lcom/tencent/a/i;->b:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v1, Lcom/tencent/a/i;->b:Landroid/widget/Toast;

    sget-object v2, Lcom/tencent/a/i;->b:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    sget-object v1, Lcom/tencent/a/i;->b:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/tencent/a/i;->b:Landroid/widget/Toast;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_2
    if-ne v1, v3, :cond_0

    :try_start_1
    sget-object v1, Lcom/tencent/a/i;->b:Landroid/widget/Toast;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/tencent/a/i;->b:Landroid/widget/Toast;

    :goto_2
    sget-object v0, Lcom/tencent/a/i;->b:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/tencent/a/i;->b:Landroid/widget/Toast;

    sget-object v2, Lcom/tencent/a/i;->b:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    sget-object v1, Lcom/tencent/a/i;->b:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/tencent/a/i;->b:Landroid/widget/Toast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x4000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget-object v0, Lcom/tencent/a/i;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/a/i;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/a/i;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/a/i;)Z
    .locals 1

    invoke-direct {p0}, Lcom/tencent/a/i;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tencent/a/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/a/i;->n:Z

    return p1
.end method

.method static synthetic b()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Lcom/tencent/a/i;->d:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/tencent/a/n;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    sget-object v0, Lcom/tencent/a/i;->e:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/tencent/a/i;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/tencent/a/i;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/tencent/a/i;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/a/i;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    :cond_3
    if-nez v1, :cond_0

    sget-object v0, Lcom/tencent/a/i;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/a/i;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/a/i;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/a/i;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/a/i;->e:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/a/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/a/i;->n:Z

    return v0
.end method

.method static synthetic c(Lcom/tencent/a/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method private c()Z
    .locals 5

    invoke-static {}, Lcom/tencent/a/a;->a()Lcom/tencent/a/a;

    move-result-object v0

    invoke-static {}, Lcom/tencent/a/a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/a/b;

    invoke-direct {v2}, Lcom/tencent/a/b;-><init>()V

    iget-object v3, p0, Lcom/tencent/a/i;->h:Lcom/tencent/tauth/b;

    iput-object v3, v2, Lcom/tencent/a/b;->a:Lcom/tencent/tauth/b;

    iput-object p0, v2, Lcom/tencent/a/b;->b:Lcom/tencent/a/i;

    iput-object v1, v2, Lcom/tencent/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/a/a;->a(Lcom/tencent/a/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/a/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/a/i;->f:Ljava/lang/String;

    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const-string v0, "&"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/a/i;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/a/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "serial="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&token_key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&browser=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/a/i;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/a/i;->f:Ljava/lang/String;

    :try_start_0
    const-string v0, "com.android.browser"

    const-string v1, "com.android.browser.BrowserActivity"

    iget-object v2, p0, Lcom/tencent/a/i;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/a/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    const-string v0, "?"

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "com.google.android.browser"

    const-string v1, "com.android.browser.BrowserActivity"

    iget-object v2, p0, Lcom/tencent/a/i;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/a/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    const-string v0, "com.android.chrome"

    const-string v1, "com.google.android.apps.chrome.Main"

    iget-object v2, p0, Lcom/tencent/a/i;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/a/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic d(Lcom/tencent/a/i;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/i;->j:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/a/i;)Lcom/tencent/a/l;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/i;->g:Lcom/tencent/a/l;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/a/i;->j:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/16 v6, 0x11

    const/4 v5, -0x1

    const/4 v2, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/tencent/a/i;->requestWindowFeature(I)Z

    new-instance v1, Landroid/widget/ProgressBar;

    sget-object v0, Lcom/tencent/a/i;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/a/i;->l:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/tencent/a/i;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    sget-object v0, Lcom/tencent/a/i;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "test"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/FrameLayout;

    sget-object v0, Lcom/tencent/a/i;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/a/i;->k:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x28

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v1, 0x28

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/tencent/a/i;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/a/i;->k:Landroid/widget/FrameLayout;

    const/high16 v1, 0x108

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/a/i;->k:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/a/i;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/webkit/WebView;

    sget-object v0, Lcom/tencent/a/i;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/a/i;->j:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/tencent/a/i;->j:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout;

    sget-object v0, Lcom/tencent/a/i;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/a/i;->i:Landroid/widget/FrameLayout;

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/tencent/a/i;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/a/i;->i:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/a/i;->j:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/a/i;->i:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/a/i;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/tencent/a/i;->k:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tencent/a/i;->d:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/tencent/a/i;->i:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/a/i;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/a/i;->j:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/a/i;->j:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/a/i;->j:Landroid/webkit/WebView;

    new-instance v1, Lcom/tencent/a/j;

    invoke-direct {v1, p0, v3}, Lcom/tencent/a/j;-><init>(Lcom/tencent/a/i;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/tencent/a/i;->j:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/tencent/a/i;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    iget-object v0, p0, Lcom/tencent/a/i;->j:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/tencent/a/i;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget-object v0, Lcom/tencent/a/i;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/a/i;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    sget-object v0, Lcom/tencent/a/i;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "databases"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/a/i;->j:Landroid/webkit/WebView;

    new-instance v1, Lcom/tencent/a/k;

    invoke-direct {v1, p0, v3}, Lcom/tencent/a/k;-><init>(Lcom/tencent/a/i;B)V

    const-string v2, "sdk_js_if"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/a/i;->j:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tencent/a/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/a/i;->j:Landroid/webkit/WebView;

    sget-object v1, Lcom/tencent/a/i;->a:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/a/i;->j:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/a/i;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    return-void
.end method

.method protected final onStop()V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/a/i;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/i;->g:Lcom/tencent/a/l;

    invoke-virtual {v0}, Lcom/tencent/a/l;->a()V

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method
