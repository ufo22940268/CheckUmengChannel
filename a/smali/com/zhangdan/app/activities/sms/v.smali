.class final Lcom/zhangdan/app/activities/sms/v;
.super Lcom/a/a/a/e/a/a;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/v;->a:Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;

    invoke-direct {p0}, Lcom/a/a/a/e/a/a;-><init>()V

    return-void
.end method

.method private varargs a([Lcom/zhangdan/app/sms/a;)Ljava/lang/Void;
    .locals 13

    const/4 v12, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/v;->a:Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->a(Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;)Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/v;->a:Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->a(Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;)Lcom/zhangdan/app/data/model/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/v;->a:Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;

    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->b(Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/zhangdan/app/sms/a;->h()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/zhangdan/app/sms/a;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/zhangdan/app/sms/a;->q()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/zhangdan/app/h/g;->a(J)[I

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    aget v8, v6, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v6, v6, v8

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/zhangdan/app/activities/sms/v;->a:Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;

    invoke-static {v7}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->c(Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/zhangdan/app/activities/sms/v;->a:Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;

    invoke-static {v8}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->d(Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "token"

    invoke-direct {v10, v11, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "user_id"

    invoke-direct {v0, v10, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "sms_type"

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "sms_content"

    invoke-direct {v0, v1, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "city"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "sms_time"

    invoke-direct {v0, v1, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "client_version"

    invoke-direct {v0, v1, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "remark"

    invoke-direct {v0, v1, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "http://www.51zhangdan.com/service/sms/sms_add.ashx?"

    invoke-static {v0, v9}, Lcom/zhangdan/app/d/b;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/h;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/zhangdan/app/sms/a;->b(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/v;->a:Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3}, Lcom/zhangdan/app/sms/a;->g()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "is_remeber"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v4, Lcom/zhangdan/app/sms/f;->a:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v12

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final bridge varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/zhangdan/app/sms/a;

    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/sms/v;->a([Lcom/zhangdan/app/sms/a;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
