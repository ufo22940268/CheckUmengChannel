.class public Lcom/igexin/sdk/GexinSdkWebExtension;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/app/Activity;

.field private c:Lsdk/b/a/a/b/o;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lsdk/b/a/a/b/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->c:Lsdk/b/a/a/b/o;

    return-void
.end method


# virtual methods
.method public appdownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6

    const-string v0, "GexinSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click appdownload..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lsdk/b/a/a/b/a;

    invoke-direct {v1}, Lsdk/b/a/a/b/a;-><init>()V

    invoke-virtual {v1, p3}, Lsdk/b/a/a/b/a;->b(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lsdk/b/a/a/b/a;->c(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lsdk/b/a/a/b/a;->d(Ljava/lang/String;)V

    const-string v0, "10050"

    invoke-virtual {v1, v0}, Lsdk/b/a/a/b/a;->i(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Lsdk/b/a/a/b/a;->e(Ljava/lang/String;)V

    const-string v0, "100"

    invoke-virtual {v1, v0}, Lsdk/b/a/a/b/a;->k(Ljava/lang/String;)V

    if-eqz p5, :cond_3

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Lsdk/b/a/a/b/a;->f(Ljava/lang/String;)V

    if-eqz p6, :cond_4

    const-string v0, "true"

    :goto_1
    invoke-virtual {v1, v0}, Lsdk/b/a/a/b/a;->l(Ljava/lang/String;)V

    const-string v0, "true"

    invoke-virtual {v1, v0}, Lsdk/b/a/a/b/a;->m(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Lsdk/b/a/a/b/a;->a(Ljava/lang/String;)V

    const-string v0, "appdownload"

    invoke-virtual {v1, v0}, Lsdk/b/a/a/b/a;->j(Ljava/lang/String;)V

    invoke-virtual {v1}, Lsdk/b/a/a/b/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsdk/b/a/a/b/a;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lsdk/b/a/a/b/a;->g(Ljava/lang/String;)V

    new-instance v0, Lsdk/b/a/a/b/b;

    invoke-direct {v0, v1}, Lsdk/b/a/a/b/b;-><init>(Lsdk/b/a/a/b/a;)V

    iget-object v1, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->c:Lsdk/b/a/a/b/o;

    invoke-virtual {v0, v1}, Lsdk/b/a/a/b/b;->a(Lsdk/b/a/a/b/o;)V

    if-eqz p2, :cond_0

    const-string v1, "http"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GexinSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDownloadImgCache GexinSdkWebExtension logo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->t()Lcom/igexin/sdk/SdkMainService;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/igexin/sdk/SdkMainService;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lsdk/b/a/a/e/b/c/b;

    const-string v2, "10050"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xx:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p2, v2, v3}, Lsdk/b/a/a/e/b/c/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lsdk/b/a/a/e/b/d;

    invoke-direct {v2, v1}, Lsdk/b/a/a/e/b/d;-><init>(Lsdk/b/a/a/e/b/c;)V

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lsdk/c/a/b/d;->a(Lsdk/c/a/e/d;ZZ)Z

    :cond_0
    invoke-virtual {v0}, Lsdk/b/a/a/b/b;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sdk.download."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsdk/download/k;->a(Ljava/lang/String;)V

    invoke-static {v2}, Lsdk/download/DownloadProvider;->setUriMatcher(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".downloads.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/download/DownloadProvider;->setDbName(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->t()Lcom/igexin/sdk/SdkMainService;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->c:Lsdk/b/a/a/b/o;

    const-string v3, "10050"

    invoke-virtual {v1, v2, v3}, Lcom/igexin/sdk/SdkMainService;->a(Lsdk/b/a/a/b/o;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->a:Landroid/content/Context;

    invoke-static {v1}, Lsdk/download/o;->a(Landroid/content/Context;)Lsdk/download/o;

    move-result-object v1

    invoke-virtual {v0}, Lsdk/b/a/a/b/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsdk/b/a/a/b/b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lsdk/b/a/a/b/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lsdk/b/a/a/b/b;->i()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lsdk/download/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Lcom/igexin/sdk/SdkMainService;->z:Lsdk/download/b;

    if-nez v3, :cond_1

    new-instance v3, Lsdk/download/b;

    iget-object v4, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->a:Landroid/content/Context;

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->t()Lcom/igexin/sdk/SdkMainService;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lsdk/download/b;-><init>(Landroid/content/Context;Lcom/igexin/sdk/SdkMainService;)V

    sput-object v3, Lcom/igexin/sdk/SdkMainService;->z:Lsdk/download/b;

    sget-object v3, Lcom/igexin/sdk/SdkMainService;->z:Lsdk/download/b;

    invoke-virtual {v1, v3}, Lsdk/download/o;->a(Lsdk/download/n;)V

    :cond_1
    sget-object v1, Lcom/igexin/sdk/SdkMainService;->z:Lsdk/download/b;

    invoke-virtual {v1, v2, v0}, Lsdk/download/b;->a(ILsdk/b/a/a/b/b;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "false"

    goto/16 :goto_0

    :cond_4
    const-string v0, "false"

    goto/16 :goto_1
.end method

.method public close()V
    .locals 2

    const-string v0, "GexinSdk"

    const-string v1, "click finish...."

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public dial(Ljava/lang/String;)V
    .locals 4

    const-string v0, "GexinSdk"

    const-string v1, "click dial...."

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->t()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->c:Lsdk/b/a/a/b/o;

    const-string v2, "10140"

    invoke-virtual {v0, v1, v2}, Lcom/igexin/sdk/SdkMainService;->a(Lsdk/b/a/a/b/o;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public startapp(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/high16 v6, 0x800

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "GexinSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "click startapp...."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lsdk/b/a/a/c/d;->m:Ljava/lang/String;

    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    const-string v1, "GexinSdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send broadcast to myself:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->t()Lcom/igexin/sdk/SdkMainService;

    move-result-object v1

    iget-object v4, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->d:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v0, p4}, Lcom/igexin/sdk/SdkMainService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-ne p2, v2, :cond_0

    const-string v0, "GexinSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " starting..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->t()Lcom/igexin/sdk/SdkMainService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/igexin/sdk/SdkMainService;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->t()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->c:Lsdk/b/a/a/b/o;

    const-string v2, "10030"

    invoke-virtual {v0, v1, v2}, Lcom/igexin/sdk/SdkMainService;->a(Lsdk/b/a/a/b/o;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lsdk/b/a/a/c/h;->C:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    move-object v0, p1

    move v1, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    const-string v0, "GexinSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send broadcast to thirdpart:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->t()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, p1, p4}, Lcom/igexin/sdk/SdkMainService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-ne p2, v2, :cond_0

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->t()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/igexin/sdk/SdkMainService;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "GexinSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " starting..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->t()Lcom/igexin/sdk/SdkMainService;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/igexin/sdk/SdkMainService;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_5
    const-string v0, "GexinSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " no installed,please install first"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    move-object v0, p1

    move v1, v3

    goto/16 :goto_0
.end method

.method public startweb(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "GexinSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click startweb...."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lsdk/b/a/a/c/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->t()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/sdk/GexinSdkWebExtension;->c:Lsdk/b/a/a/b/o;

    const-string v2, "10040"

    invoke-virtual {v0, v1, v2}, Lcom/igexin/sdk/SdkMainService;->a(Lsdk/b/a/a/b/o;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lsdk/b/a/a/c/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
