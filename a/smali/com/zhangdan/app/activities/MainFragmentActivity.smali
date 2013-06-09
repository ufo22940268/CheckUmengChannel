.class public Lcom/zhangdan/app/activities/MainFragmentActivity;
.super Lcom/zhangdan/app/activities/BaseSlidingActivity;

# interfaces
.implements Lcom/slidingmenu/lib/m;
.implements Lcom/slidingmenu/lib/o;
.implements Lcom/umeng/b/d;


# static fields
.field public static c:I


# instance fields
.field private d:Lcom/zhangdan/app/activities/main/a;

.field private e:Lcom/zhangdan/app/activities/main/p;

.field private f:Lcom/zhangdan/app/activities/a;

.field private g:Lcom/zhangdan/app/activities/a;

.field private h:I

.field private i:Lcom/zhangdan/preferential/a/i;

.field private j:Lcom/baidu/mapapi/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/zhangdan/app/activities/MainFragmentActivity;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->h:I

    new-instance v0, Lcom/zhangdan/app/activities/e;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/e;-><init>(Lcom/zhangdan/app/activities/MainFragmentActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->j:Lcom/baidu/mapapi/LocationListener;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/MainFragmentActivity;)Lcom/zhangdan/preferential/a/i;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->i:Lcom/zhangdan/preferential/a/i;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 10

    const-string v0, "launch_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_2

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sourceId"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tradeNo"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "billId"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "09999999"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "alipay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-virtual {v4, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->b()Lcom/zhangdan/app/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/app/c/a;->c()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    const-string v2, "key_user_bank"

    invoke-virtual {v0, v2, v1}, Lcom/zhangdan/app/ZhangdanApplication;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/MainFragmentActivity;->startActivity(Landroid/content/Intent;)V

    sget v0, Lcom/zhangdan/app/service/DownloadDataService;->a:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->d:Lcom/zhangdan/app/activities/main/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->d:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/a;->e()V

    :cond_2
    return-void

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->d()J

    move-result-wide v6

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    goto :goto_0
.end method

.method private a(Lcom/zhangdan/app/activities/a;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->f:Lcom/zhangdan/app/activities/a;

    iget-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->d:Lcom/zhangdan/app/activities/main/a;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->d:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :goto_0
    iput-object p1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->f:Lcom/zhangdan/app/activities/a;

    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->d:Lcom/zhangdan/app/activities/main/a;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->d:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :goto_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->f:Lcom/zhangdan/app/activities/a;

    iput-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->g:Lcom/zhangdan/app/activities/a;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->f:Lcom/zhangdan/app/activities/a;

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->b(Lcom/zhangdan/app/activities/a;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->e:Lcom/zhangdan/app/activities/main/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->e:Lcom/zhangdan/app/activities/main/p;

    invoke-virtual {v0, p2}, Lcom/zhangdan/app/activities/main/p;->a(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->f:Lcom/zhangdan/app/activities/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    :cond_2
    const v1, 0x7f060197

    iget-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->f:Lcom/zhangdan/app/activities/a;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ne v1, v4, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-ne v1, v3, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->startActivity(Landroid/content/Intent;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "open url..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v1, v4, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.zhangdan.preferential.MIX_VIEW_RECOMMEND_DETAIL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "prom_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->startActivity(Landroid/content/Intent;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "open bank activity..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Lcom/zhangdan/app/activities/a;)V
    .locals 3

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, p0}, Lcom/zhangdan/app/activities/a;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    if-ne v2, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Lcom/zhangdan/app/activities/a;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->f:Lcom/zhangdan/app/activities/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->g:Lcom/zhangdan/app/activities/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->f:Lcom/zhangdan/app/activities/a;

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->b(Lcom/zhangdan/app/activities/a;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->f:Lcom/zhangdan/app/activities/a;

    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->g:Lcom/zhangdan/app/activities/a;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->f:Lcom/zhangdan/app/activities/a;

    iget-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->d:Lcom/zhangdan/app/activities/main/a;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->d:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->g:Lcom/zhangdan/app/activities/a;

    iget-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->d:Lcom/zhangdan/app/activities/main/a;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->g:Lcom/zhangdan/app/activities/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_2
    const v1, 0x7f060197

    iget-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->f:Lcom/zhangdan/app/activities/a;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :goto_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->f:Lcom/zhangdan/app/activities/a;

    iput-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->g:Lcom/zhangdan/app/activities/a;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->g:Lcom/zhangdan/app/activities/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->d:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1
.end method

.method public final a(ILcom/umeng/b/e;)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "version"

    iget-object v2, p2, Lcom/umeng/b/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "path"

    iget-object v2, p2, Lcom/umeng/b/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "hasUpdate"

    iget-boolean v2, p2, Lcom/umeng/b/e;->a:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "updateLog"

    iget-object v2, p2, Lcom/umeng/b/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "delta"

    iget-boolean v2, p2, Lcom/umeng/b/e;->i:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "new_md5"

    iget-object v2, p2, Lcom/umeng/b/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "patch_md5"

    iget-object v2, p2, Lcom/umeng/b/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "proto_ver"

    iget-object v2, p2, Lcom/umeng/b/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "size"

    iget-object v2, p2, Lcom/umeng/b/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "target_size"

    iget-object v2, p2, Lcom/umeng/b/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "card"

    const-string v3, "update_info"

    invoke-static {v1, v2, v3, v0}, Lcom/zhangdan/app/data/a/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p2, Lcom/umeng/b/e;->c:Ljava/lang/String;

    const-string v2, "card"

    const-string v3, "new_version"

    invoke-static {v0, v2, v3, v1}, Lcom/zhangdan/app/data/a/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {p0, p2}, Lcom/umeng/b/b;->a(Landroid/content/Context;Lcom/umeng/b/e;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->e:Lcom/zhangdan/app/activities/main/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->e:Lcom/zhangdan/app/activities/main/p;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/p;->e()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/zhangdan/app/activities/a;)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->f:Lcom/zhangdan/app/activities/a;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->c()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->f()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->e:Lcom/zhangdan/app/activities/main/p;

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->b(Lcom/zhangdan/app/activities/a;)V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->d:Lcom/zhangdan/app/activities/main/a;

    iput-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->f:Lcom/zhangdan/app/activities/a;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->c()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->f()V

    return-void
.end method

.method public final h()V
    .locals 2

    new-instance v0, Lcom/zhangdan/app/activities/shopping/h;

    invoke-direct {v0}, Lcom/zhangdan/app/activities/shopping/h;-><init>()V

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->a(Lcom/zhangdan/app/activities/a;I)V

    return-void
.end method

.method public final i()V
    .locals 2

    new-instance v0, Lcom/zhangdan/app/activities/chart/b;

    invoke-direct {v0}, Lcom/zhangdan/app/activities/chart/b;-><init>()V

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->a(Lcom/zhangdan/app/activities/a;I)V

    return-void
.end method

.method public final j()V
    .locals 2

    new-instance v0, Lcom/zhangdan/app/activities/bankservice/a;

    invoke-direct {v0}, Lcom/zhangdan/app/activities/bankservice/a;-><init>()V

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->a(Lcom/zhangdan/app/activities/a;I)V

    return-void
.end method

.method public final k()V
    .locals 2

    new-instance v0, Lcom/zhangdan/preferential/as;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/as;-><init>(I)V

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->a(Lcom/zhangdan/app/activities/a;I)V

    return-void
.end method

.method public final l()V
    .locals 2

    new-instance v0, Lcom/zhangdan/preferential/ab;

    invoke-direct {v0}, Lcom/zhangdan/preferential/ab;-><init>()V

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->a(Lcom/zhangdan/app/activities/a;I)V

    return-void
.end method

.method public final m()V
    .locals 2

    new-instance v0, Lcom/zhangdan/preferential/an;

    invoke-direct {v0}, Lcom/zhangdan/preferential/an;-><init>()V

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->a(Lcom/zhangdan/app/activities/a;I)V

    return-void
.end method

.method public final n()V
    .locals 2

    new-instance v0, Lcom/zhangdan/preferential/h;

    invoke-direct {v0}, Lcom/zhangdan/preferential/h;-><init>()V

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->a(Lcom/zhangdan/app/activities/a;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->f:Lcom/zhangdan/app/activities/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->f:Lcom/zhangdan/app/activities/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zhangdan/app/activities/a;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->f:Lcom/zhangdan/app/activities/a;

    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->d:Lcom/zhangdan/app/activities/main/a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->d:Lcom/zhangdan/app/activities/main/a;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->a(Lcom/zhangdan/app/activities/a;I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->h:I

    if-nez v0, :cond_1

    const v0, 0x7f08012f

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->h:I

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->onCreate(Landroid/os/Bundle;)V

    sput v4, Lcom/zhangdan/app/activities/MainFragmentActivity;->c:I

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    new-instance v1, Lcom/baidu/mapapi/BMapManager;

    invoke-direct {v1, v0}, Lcom/baidu/mapapi/BMapManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    const-string v2, "118A822A3605D14F287715C841F9490DB6CB2379"

    new-instance v3, Lcom/zhangdan/app/a;

    invoke-direct {v3}, Lcom/zhangdan/app/a;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/baidu/mapapi/BMapManager;->init(Ljava/lang/String;Lcom/baidu/mapapi/MKGeneralListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v1}, Lcom/baidu/mapapi/BMapManager;->start()Z

    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v1}, Lcom/baidu/mapapi/BMapManager;->getLocationManager()Lcom/baidu/mapapi/MKLocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->j:Lcom/baidu/mapapi/LocationListener;

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/MKLocationManager;->requestLocationUpdates(Lcom/baidu/mapapi/LocationListener;)V

    iget-object v0, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->getLocationManager()Lcom/baidu/mapapi/MKLocationManager;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/MKLocationManager;->setNotifyInternal(II)Z

    :cond_0
    new-instance v0, Lcom/zhangdan/preferential/a/i;

    invoke-direct {v0}, Lcom/zhangdan/preferential/a/i;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->i:Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/umeng/b/b;->a()V

    invoke-static {p0}, Lcom/umeng/b/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/umeng/b/b;->b()V

    invoke-static {p0}, Lcom/umeng/b/b;->a(Lcom/umeng/b/d;)V

    invoke-static {}, Lcom/igexin/c/a;->a()Lcom/igexin/c/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/c/a;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->c()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/slidingmenu/lib/SlidingMenu;->a(Lcom/slidingmenu/lib/m;)V

    invoke-virtual {v0, p0}, Lcom/slidingmenu/lib/SlidingMenu;->a(Lcom/slidingmenu/lib/o;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f030074

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->setContentView(I)V

    new-instance v1, Lcom/zhangdan/app/activities/main/a;

    invoke-direct {v1}, Lcom/zhangdan/app/activities/main/a;-><init>()V

    iput-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->d:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f060197

    iget-object v3, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->d:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    new-instance v1, Lcom/zhangdan/app/activities/main/p;

    invoke-direct {v1}, Lcom/zhangdan/app/activities/main/p;-><init>()V

    iput-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->e:Lcom/zhangdan/app/activities/main/p;

    const v1, 0x7f030075

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->a(I)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f060198

    iget-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->e:Lcom/zhangdan/app/activities/main/p;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->d:Lcom/zhangdan/app/activities/main/a;

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->b(Lcom/zhangdan/app/activities/a;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->d:Lcom/zhangdan/app/activities/main/a;

    iput-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->f:Lcom/zhangdan/app/activities/a;

    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->d:Lcom/zhangdan/app/activities/main/a;

    iput-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->g:Lcom/zhangdan/app/activities/a;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->a(Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/zhangdan/app/data/a/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    invoke-static {p0, v1}, Lcom/zhangdan/app/data/a/b;->e(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {p0}, Lcom/zhangdan/app/data/a/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "set_pwd"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->startActivity(Landroid/content/Intent;)V

    const v0, 0x7f040003

    const v1, 0x7f040005

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->overridePendingTransition(II)V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->onDestroy()V

    const/4 v0, 0x0

    sput v0, Lcom/zhangdan/app/activities/MainFragmentActivity;->c:I

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->a(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->d()V

    invoke-static {p0}, Lcom/zhangdan/app/data/a/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-static {p0, v1}, Lcom/zhangdan/app/data/a/b;->e(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v1}, Lcom/baidu/mapapi/BMapManager;->getLocationManager()Lcom/baidu/mapapi/MKLocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->j:Lcom/baidu/mapapi/LocationListener;

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/MKLocationManager;->removeUpdates(Lcom/baidu/mapapi/LocationListener;)V

    iget-object v0, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->stop()Z

    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->onPause()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->h:I

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v1}, Lcom/baidu/mapapi/BMapManager;->getLocationManager()Lcom/baidu/mapapi/MKLocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->j:Lcom/baidu/mapapi/LocationListener;

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/MKLocationManager;->requestLocationUpdates(Lcom/baidu/mapapi/LocationListener;)V

    iget-object v0, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->start()Z

    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->onResume()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zhangdan.preferential.UPDATE_WEIBO_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
