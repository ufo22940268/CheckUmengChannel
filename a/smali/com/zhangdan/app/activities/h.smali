.class final Lcom/zhangdan/app/activities/h;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/SplashActivity;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/SplashActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/h;->a:Lcom/zhangdan/app/activities/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/zhangdan/app/activities/h;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/zhangdan/app/activities/h;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/h;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/h;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/zhangdan/app/activities/h;->c:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "big_app_id"

    const-string v5, "1"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "plat"

    const-string v5, "2"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "user_id"

    invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "udid"

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "channel"

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "version"

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "http://www.51zhangdan.com/service/sys/statistics_channel.ashx?"

    invoke-static {v0, v2}, Lcom/zhangdan/app/d/b;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    :cond_0
    return-void
.end method
