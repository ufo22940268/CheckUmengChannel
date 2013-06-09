.class public final Lcom/zhangdan/app/activities/newimport/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/tencent/tauth/c;

.field private b:Lcom/weibo/sdk/android/b/a;

.field private c:Lcom/tencent/weibo/d/a;

.field private d:Landroid/app/Activity;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    iput-object p2, p0, Lcom/zhangdan/app/activities/newimport/f;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->e:Landroid/view/View;

    const v1, 0x7f0601fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->e:Landroid/view/View;

    const v1, 0x7f0601ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->e:Landroid/view/View;

    const v1, 0x7f060200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->e:Landroid/view/View;

    const v1, 0x7f060201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/newimport/f;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/newimport/f;Lcom/zhangdan/app/data/model/http/aq;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    const v2, 0x7f080022

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/aq;->a()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/aq;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/b/a;->a(Ljava/lang/String;)Lcom/zhangdan/app/data/model/l;

    move-result-object v1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/ZhangdanApplication;->a(Lcom/zhangdan/app/data/model/l;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->toString()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_avatar"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zhangdan/app/data/a/b;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/zhangdan/app/data/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    const-class v2, Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/zhangdan/app/data/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/aq;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    :goto_2
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    const v1, 0x7f0800ae

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/newimport/f;)Lcom/tencent/tauth/c;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->a:Lcom/tencent/tauth/c;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->e:Landroid/view/View;

    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x2

    const v0, 0x7f0b0002

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0b0003

    if-ne p1, v0, :cond_2

    if-ne p2, v6, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "oauth"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tencent/weibo/d/a;

    invoke-virtual {v0}, Lcom/tencent/weibo/d/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/weibo/d/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/weibo/d/a;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/zhangdan/app/activities/newimport/i;

    invoke-direct {v3, p0, v6}, Lcom/zhangdan/app/activities/newimport/i;-><init>(Lcom/zhangdan/app/activities/newimport/f;I)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    aput-object v0, v4, v6

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/newimport/i;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->b:Lcom/weibo/sdk/android/b/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->b:Lcom/weibo/sdk/android/b/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/weibo/sdk/android/b/a;->a(IILandroid/content/Intent;)V

    :cond_3
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->a:Lcom/tencent/tauth/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->a:Lcom/tencent/tauth/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tauth/c;->a(IILandroid/content/Intent;)Z

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0601fe

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    const-string v1, "yuan_weibo_login"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "4101037885"

    const-string v1, "http://www.51zhangdan.com/service/user/sinalogin.ashx"

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/f;->b:Lcom/weibo/sdk/android/b/a;

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Lcom/weibo/sdk/android/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/weibo/sdk/android/e;

    move-result-object v0

    new-instance v1, Lcom/weibo/sdk/android/b/a;

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/weibo/sdk/android/b/a;-><init>(Landroid/app/Activity;Lcom/weibo/sdk/android/e;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/newimport/f;->b:Lcom/weibo/sdk/android/b/a;

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->b:Lcom/weibo/sdk/android/b/a;

    new-instance v1, Lcom/zhangdan/app/activities/newimport/g;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/newimport/g;-><init>(Lcom/zhangdan/app/activities/newimport/f;)V

    invoke-virtual {v0, v1}, Lcom/weibo/sdk/android/b/a;->a(Lcom/weibo/sdk/android/g;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0601ff

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    const-string v1, "yuan_qq_login"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->a:Lcom/tencent/tauth/c;

    if-nez v0, :cond_3

    const-string v0, "100266738"

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tauth/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/c;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->a:Lcom/tencent/tauth/c;

    :cond_3
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->a:Lcom/tencent/tauth/c;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    const-string v2, "get_user_info,get_simple_userinfo,get_user_profile"

    new-instance v3, Lcom/zhangdan/app/activities/newimport/h;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/zhangdan/app/activities/newimport/h;-><init>(Lcom/zhangdan/app/activities/newimport/f;B)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tauth/c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/b;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060200

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    const-string v1, "yuan_51_login"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    const-class v2, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    const v2, 0x7f0b0002

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060201

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->c:Lcom/tencent/weibo/d/a;

    if-nez v0, :cond_6

    new-instance v0, Lcom/tencent/weibo/d/a;

    const-string v1, "http://www.51zhangdan.com"

    invoke-direct {v0, v1}, Lcom/tencent/weibo/d/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->c:Lcom/tencent/weibo/d/a;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->c:Lcom/tencent/weibo/d/a;

    const-string v1, "801197405"

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/d/a;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/f;->c:Lcom/tencent/weibo/d/a;

    const-string v1, "aa33793ffe907d200c7bc7958efd3177"

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/d/a;->e(Ljava/lang/String;)V

    :cond_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    const-class v2, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "oauth"

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/f;->c:Lcom/tencent/weibo/d/a;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/f;->d:Landroid/app/Activity;

    const v2, 0x7f0b0003

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method
